<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!-- author by Frans Thamura "frans@blueoxygen.org" -->
<!-- 
	This script will transform all the descriptor tag elements become HTML form (end of the descriptor generator).
	Don't include the references tag elements, this script is not transform that tag become menu/list.
	
	How its work;
	- Check the action, is it new/edit or search.
	- If search go to mode="search", else goto mode="new"
	- Transform the <descriptor...></descriptor> become <input type="..."....../> or <textarea ...> </textarea>
	
	
	This XSL is pure 100% XSL, no XSP syntax.
	
	
	How to used this:
	- descriptor.xml?action=new/search/edit&id=1
	
	new = new form
	search = search form
	edit = edit content (need id)
	id = primary key of the table .. will be used by SQL statement to query
	
-->

	<!-- search, new, edit??? -->
	<xsl:param name="action"/>
	<xsl:param name="id"/>
	<xsl:variable name="action_form">
		<xsl:choose>
			<xsl:when test="$action='search'">
				<xsl:value-of select="contentmanager/@action"/>
				<xsl:value-of select="'?action=result'"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="contentmanager/@action"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:variable>
	<xsl:variable name="enctype_form">
		<xsl:choose>
			<xsl:when test="$action!='search'">
				<xsl:value-of select="'multipart/form-data'"/>
			</xsl:when>
		</xsl:choose>
	</xsl:variable>
	
	<!-- .......... R O O T .............. -->
	<xsl:template match="contentmanager">
	
		<html>
			<head>
				<title>
					<xsl:value-of select="@name"/>
				</title>
			</head>
			
<script language="JavaScript" version="1.2">

<![CDATA[
function MM_openBrWindow(theURL,winName,features) { 
  window.open(theURL,winName,features);
}

function toggle(myObj){
  if (myObj.style.display == "") {
    myObj.style.display = "none";

  }
  else {
    myObj.style.display = "";

  }
}

function linkstyle(myObj){
  myObj.style.cursor="hand";
  myObj.style.textDecorationUnderline=true;
  myObj.style.color='red';
  myObj.style.hover='red';
}

function normalstyle(myObj){
  myObj.style.cursor="";
  myObj.style.textDecorationUnderline=false;
  myObj.style.color='black';
}


// This next little bit of code tests whether the user accepts cookies.
var WM_acceptsCookies = false;
if(document.cookie == '') {
    document.cookie = 'WM_acceptsCookies=yes'; // Try to set a cookie.
    if(document.cookie.indexOf('WM_acceptsCookies=yes') != -1) {
	WM_acceptsCookies = true; 
    }// If it succeeds, set variable
} else { // there was already a cookie
  WM_acceptsCookies = true;
}

function WM_setCookie (name, value, hours, path, domain, secure) {
    if (WM_acceptsCookies) { // Don't waste your time if the browser doesn't accept cookies.
	var not_NN2 = (navigator && navigator.appName 
		       && (navigator.appName == 'Netscape') 
		       && navigator.appVersion 
		       && (parseInt(navigator.appVersion) == 2))?false:true;

	if(hours && not_NN2) { // NN2 cannot handle Dates, so skip this part
	    if ( (typeof(hours) == 'string') && Date.parse(hours) ) { // already a Date string
		var numHours = hours;
	    } else if (typeof(hours) == 'number') { // calculate Date from number of hours
		var numHours = (new Date((new Date()).getTime() + hours*3600000)).toGMTString();
	    }
	}
	document.cookie = name + '=' + escape(value) + ((numHours)?(';expires=' + numHours):'') + ((path)?';path=' + path:'') + ((domain)?';domain=' + domain:'') + ((secure && (secure == true))?'; secure':''); // Set the cookie, adding any parameters that were specified.
    }
} // WM_setCookie

function WM_readCookie(name) {
    if(document.cookie == '') { // there's no cookie, so go no further
	return false; 
    } else { // there is a cookie
	var firstChar, lastChar;
	var theBigCookie = document.cookie;
	firstChar = theBigCookie.indexOf(name);	// find the start of 'name'
	var NN2Hack = firstChar + name.length;
	if((firstChar != -1) && (theBigCookie.charAt(NN2Hack) == '=')) { // if you found the cookie
	    firstChar += name.length + 1; // skip 'name' and '='
	    lastChar = theBigCookie.indexOf(';', firstChar); // Find the end of the value string (i.e. the next ';').
	    if(lastChar == -1) lastChar = theBigCookie.length;
	    return unescape(theBigCookie.substring(firstChar, lastChar));
	} else { // If there was no cookie of that name, return false.
	    return "";
	}
	
    }	
} // WM_readCookie

function WM_killCookie(name, path, domain) {
  var theValue = WM_readCookie(name); // We need the value to kill the cookie
  if(theValue) {
      document.cookie = name + '=' + theValue + '; expires=Fri, 13-Apr-1970 00:00:00 GMT' + ((path)?';path=' + path:'') + ((domain)?';domain=' + domain:''); // set an already-expired cookie
  }
} // WM_killCookie

function warningMessage() {
var x=false;
if (confirm("Are you sure you? This cannot be undone!")) {
 return true;
} else {
 return false;
}
}

]]>
			
function checkfields(obj)
		{    
			<xsl:for-each select="descriptor">
			<xsl:if test="@required='yes' and test!=(@type='radio')">
			    if (obj.form.elements['<xsl:value-of select="@name"/>'].value==null) {
       				alert("<xsl:value-of select="@title"/> cannot be blank!!");
       				return false;
    			} 
    		</xsl:if>
		 
            <xsl:if test="@required='yes' and test=(@type='radio')">
    			if (obj.form.elements['<xsl:value-of select="@name"/>'].value=="") {
       				alert("<xsl:value-of select="@title"/> cannot be blank!!");
       				return false;
    			} 
       	
					</xsl:if>
				</xsl:for-each>
				    // obj.form.submit();
			    	return true;
			}
				</script>

			
			<LINK href="../style.css" type="text/css" rel="stylesheet"/>
			<body bgcolor="lightyellow" width="98%">
				<!--
				Remove this procudure, if site and workflow features is implemented.
				This procedure will create a table for Status information, Workflow Step, or Site Name
				<xsl:if test="$action!='search'">
				-->
				
					<table cellSpacing="1" cellPadding="3" width="98%" bgColor="black" border="0">
						<tr bgcolor="#CCFFCC">
							<td colspan="2"><b>STATUS:</b></td>
						</tr>
						
						<xsl:for-each select="information/statusset">
						<tr bgColor="#ffffff" valign="top">
							<td bgColor="#ffffff" width="150" >
								<b><xsl:value-of select="@title"/>: </b>
							</td>
							<td bgColor="#ffffff">
								<xsl:value-of select="@param"/>
							</td>
						</tr>
						</xsl:for-each>
					
					</table>
				<!--
				</xsl:if>
				-->
				<xsl:if test="@session='login'"><br/>
					<xsl:if test="$action='edit'">
					<table cellSpacing="1" cellPadding="3" width="98%" bgColor="black" border="0">
				
					<tr bgcolor="#CCFFCC"><td>				
							<a onclick="return warningMessage();" href="../utility/crvd-engine.jsp?table={//@name}&amp;id={$id}&amp;action=delete">
								<img src="../images/delete.gif" cursor="hand" border="0" alt="Delete this record!"/>
							</a>&#160;<a onClick="WM_setCookie('DescriptorID', '{$id}');return false;" href="../utility/crvd-engine.jsp?table={//@name}&amp;id={$id}&amp;action=delete">
								<img src="../images/copy.gif" cursor="hand" border="0" alt="Copy Data ID to Memory!" />
							</a></td></tr></table></xsl:if>
				<form method="{@method}" action="{$action_form}" name="{@name}" ENCTYPE="{$enctype_form}">
					<table cellSpacing="1" cellPadding="3" width="98%" bgColor="black" border="0">
						<tr bgColor="#ffffff" valign="top">
							<td colSpan="3" bgColor="#D0DCFF">
								<b>
									<xsl:value-of select="$action"/> - <xsl:value-of select="@name"/>
									<input type="hidden" name="table" value="{@name}"/>
									<input type="hidden" name="action" value="{$action}"/>
								</b>
							</td>
						</tr>
						<xsl:choose>
							<xsl:when test="$action='new'">
								<!-- N E W -->
								<xsl:apply-templates mode="new"/>
								<!-- this is button -->
								<tr bgColor="#ffffff" valign="top">
									<td width="25%" align="right">
										&#160;
									</td>
									<td colspan="2">
										<input type="submit" name="submit" value="Save All" onClick="return checkfields(this);"/>
									</td>
								</tr>
							</xsl:when>
							<xsl:when test="$action='edit'">
								<!-- E D I T -->
								<xsl:apply-templates mode="edit"/>
								<!-- this is button -->
								<tr bgColor="#ffffff" valign="top">
									<td width="25%">
										&#160;
										<input type="hidden" name="id" value="{$id}"/>
									</td>
									<td colspan="2">
										<input type="submit" name="submit" value="Update All" onClick="return checkfields(this);"/>
										&#160;
										<input type="submit" name="submit" value="Delete" onClick="return warningMessage();"/>
										&#160;
										<xsl:choose>
										<xsl:when test="@name='descriptor'">
											- <input type="submit" name="submit" value="Create Table"/>
											- <input type="submit" name="submit" value="Drop Table" onClick="return warningMessage();"/>
										</xsl:when>
										<xsl:otherwise>
											<!-- 
											This hyperlink will go to the workflow tracking status. User will know the status of his document
											-->
											<a href="" onClick="MM_openBrWindow('../backend/workflow/view_approval_history.jsp?table={@name}&amp;id={$id}','send','width=700,height=450')">View Workflow Status</a>
										</xsl:otherwise>
										</xsl:choose>
									</td>
								</tr>
							</xsl:when>
							<xsl:when test="$action='search'">
								<tr bgColor="#ffffff" valign="top">
									<td width="25%">
									<div align="right"><b>ID</b> <font color="red"> contains: </font></div> 
									</td>
									<td colspan="2">
										<input type="text" name="id" size="28" maxlength="28" />
									</td>
								</tr>
														
								<xsl:apply-templates mode="search"/>
								<!-- S E A R C H-->
								<tr bgColor="#ffffff" valign="top">
									<td width="25%">
										&#160;
									</td>
									<td colspan="2"><input type="submit" name="submit" value="Search"/></td>
								</tr>
							</xsl:when>
							<xsl:when test="$action='result'">
								<xsl:apply-templates mode="search"/>
								<tr bgColor="#ffffff" valign="top">
									<td width="25%">
										<input type="submit" name="submit" value="Search"/>
									</td>
									<td colspan="2">&#160;</td>
								</tr>
							</xsl:when>
							<xsl:when test="$action='generate'">
								<tr bgColor="#ffffff" valign="top">
									<td width="25%"/>
									<td colspan="2">
										<b>CREATE TABLE <font color="red"><xsl:value-of select="@name"/></font> completed.</b>
									</td>
								</tr>
							</xsl:when>
							<xsl:when test="$action='drop'">
								<tr bgColor="#ffffff" valign="top">
									<td width="25%"/>
									<td colspan="2">
										<b>DROP TABLE <font color="red"><xsl:value-of select="@name"/></font> completed.</b>
									</td>
									
								</tr>
							</xsl:when>
							<xsl:otherwise>
								<tr bgColor="#ffffff" valign="top">
									<td width="25%"/>
									<td colspan="2">
										ACTION ERROR...
									</td>
								</tr>
							</xsl:otherwise>
						</xsl:choose>
					</table>
				</form>
				</xsl:if>
			</body>
		</html>
	</xsl:template>
	<!-- .......... S E A R C H .............. -->
	<xsl:template match="descriptor" mode="search">
		<xsl:if test="@search='yes'">
			<!-- input form, only text, no password-->
			<xsl:if test="(@type='text') or (@type='file')">
				<tr bgColor="#ffffff">
					<td width="25%">
						<div align="right">
							<xsl:value-of select="@title"/> <font color="red"> contains: </font>
						</div>
					</td>
					<td>
					<xsl:if test="(@type='text') and (@getid='yes')">
						<input type="button" VALUE="Get ID" STYLE="font: 8pt Arial, Helvetica" onClick="document.{//@name}.{@name}.value=WM_readCookie('DescriptorID');return false;"/>
						&#160;
					</xsl:if>
					
						<!-- all text type -->
						<input type="text" name="{@name}" size="{@size}" maxlength="{@maxlength}" value="{@value}"/>
					</td>
					<td>
											<xsl:choose>
					<xsl:when test="@help&gt;''">
						<img src="../images/help.gif" alt="{@help}" border="0"/>
					</xsl:when>
					<xsl:otherwise>&#160;</xsl:otherwise>
					</xsl:choose>

					</td>
				</tr>
			</xsl:if>
			<!-- end of text -->
			<!-- text area -->
			<xsl:if test="(@type='textarea')">
				<tr bgColor="#ffffff" valign="top">
					<td width="25%">
						<div align="right">
							<font color="red">
								<xsl:if test="@required='yes'">* </xsl:if>
							</font>
							<xsl:value-of select="@title"/> <font color="red"> contains: </font>
						</div>
					</td>
					<td>
						<!-- all text type -->
						<textarea name="{@name}" cols="{@cols}" rows="{@rows}">
							<xsl:value-of select="@value"/>
						</textarea>
						
					</td>
					<td>
					<xsl:choose>
					<xsl:when test="@help&gt;''">
						<img src="../images/help.gif" alt="{@help}" border="0"/>
					</xsl:when>
					<xsl:otherwise>&#160;</xsl:otherwise>
					</xsl:choose>
					</td>
				</tr>
			</xsl:if>
			<!-- end of text -->
			<!-- radio button -->
			<xsl:if test="(@type='radio')  or (@type='checkbox')">
				<tr bgColor="#ffffff" valign="top">
					<td width="25%">
						<div align="right">
							<font color="red">
								<xsl:if test="@required='yes'">* </xsl:if>
							</font>
							<xsl:value-of select="@title"/> <font color="red"> contains: </font>
						</div>
					</td>
					<td>
						<xsl:apply-templates/>
					</td>
					<td>
					<xsl:choose>
					<xsl:when test="@help&gt;''">
						<img src="../images/help.gif" alt="{@help}" border="0"/>
					</xsl:when>
					<xsl:otherwise>&#160;</xsl:otherwise>
					</xsl:choose>

					</td>
				</tr>
			</xsl:if>
			<!-- end of radio button -->
			<!-- menu/list -->
			<xsl:if test="(@type='menu') or (@type='list')">
				<tr bgColor="#ffffff" valign="top">
					<td width="25%">
						<div align="right">
							<font color="red">
								<xsl:if test="@required='yes'">* </xsl:if>
							</font>
							<xsl:value-of select="@title"/> <font color="red"> contains: </font>
						</div>
					</td>
					<td>
						<select name="{@name}" size="{@size}">
							<option value="%">
							       All <xsl:value-of select="@title"/>
							</option>
							<option value="%">
							       ------------------
							</option>
							<xsl:apply-templates/>
						</select>
					</td>
					<td>
					<xsl:choose>
					<xsl:when test="@help&gt;''">
						<img src="../images/help.gif" alt="{@help}" border="0"/>
					</xsl:when>
					<xsl:otherwise>&#160;</xsl:otherwise>
					</xsl:choose>
					</td>
				</tr>
			</xsl:if>
			<!-- end of menu/list -->
		</xsl:if>
		<!-- button no need search, will show all-->
		<xsl:if test="(@type='submit') or (@type='reset') or (@type='button')">
			<!-- end of button -->
		</xsl:if>
	</xsl:template>
	<!-- end of search -->
	<!-- .......... N E W .............. -->
	<xsl:template match="descriptor" mode="new">
		<!-- text input-->
		<xsl:if test="(@type='text') or (@type='file') or (@type='password')">
			<tr bgColor="#ffffff" valign="top">
				<td width="25%">
					<div align="right">
						<font color="red">
							<xsl:if test="@required='yes'">* </xsl:if>
						</font>
						<xsl:value-of select="@title"/>: 
					</div>
				</td>
				<td>
					<xsl:if test="(@comment!='')">
						<font color="red" size="-2"> <xsl:value-of select="@comment"/></font> <br/>
					</xsl:if>
					<xsl:if test="(@type='text') and (@getid='yes')">
						<input type="button" VALUE="Get ID" STYLE="font: 8pt Arial, Helvetica" onClick="document.{//@name}.{@name}.value=WM_readCookie('DescriptorID');return false;"/>
						&#160;
					</xsl:if>
					
					<input type="{@type}" name="{@name}" size="{@size}" maxlength="{@maxlength}" value="{@value}"/>


				</td>
				<td>
					<xsl:choose>
					<xsl:when test="@help&gt;''">
						<img src="../images/help.gif" alt="{@help}" border="0"/>
					</xsl:when>
					<xsl:otherwise>&#160;</xsl:otherwise>
					</xsl:choose>
				</td>
			</tr>
		</xsl:if>
		<!-- hidden input -->
		<xsl:if test="@type='hidden'">
			<input type="{@type}" name="{@name}" value="{@value}"/>
		</xsl:if>
		<!-- this is textarea -->
		<xsl:if test="@type='textarea'">
			<tr bgColor="#ffffff" valign="top">
				<td width="25%">
					<div align="right">
						<font color="red">
							<xsl:if test="@required='yes'">* </xsl:if>
						</font>
						<xsl:value-of select="@title"/>:
						</div>
				</td>
				<td valign="top">
					<xsl:if test="(@comment!='')">
						<font color="blue" size="-2"> <i> <xsl:value-of select="@comment"/></i> </font> <br/>
					</xsl:if>

					<textarea name="{@name}" cols="{@cols}" rows="{@rows}">
						<xsl:value-of select="@value"/>
					</textarea>
					
				</td>
				<td>
					<xsl:choose>
					<xsl:when test="@help&gt;''">
						<img src="../images/help.gif" alt="{@help}" border="0"/>
					</xsl:when>
					<xsl:otherwise>&#160;</xsl:otherwise>
					</xsl:choose>

				</td>
			</tr>
		</xsl:if>
		<!-- this is check box and radio -->
		<xsl:if test="@type='checkbox' or @type='radio'">
			<tr bgColor="#ffffff" valign="top">
				<td width="25%">
					<div align="right">
						<font color="red">
							<xsl:if test="@required='yes'">* </xsl:if>
						</font>
						<xsl:value-of select="@title"/>:
						</div>
				</td>
				<td>
					<xsl:if test="(@comment!='')">
						<font color="blue" size="-2"> <i> <xsl:value-of select="@comment"/></i> </font> <br/>
					</xsl:if>
					<xsl:apply-templates/>
				</td>
				<td>
					<xsl:choose>
					<xsl:when test="@help&gt;''">
						<img src="../images/help.gif" alt="{@help}" border="0"/>
					</xsl:when>
					<xsl:otherwise>&#160;</xsl:otherwise>
					</xsl:choose>

				</td>
			</tr>
		</xsl:if>
		<!-- men/list menu - where is the selected ???? -->
		<xsl:if test="@type='menu' or @type='list' ">
			<tr bgColor="#ffffff" valign="top">
				<td width="25%">
					<div align="right">
						<font color="red">
							<xsl:if test="@required='yes'">* </xsl:if>
						</font>
						<xsl:value-of select="@title"/>:
						</div>
				</td>
				<td valign="top">
					<xsl:if test="(@comment!='')">
						<font color="blue" size="-2"> <i> <xsl:value-of select="@comment"/></i> </font> <br/>
					</xsl:if>
					
					<select name="{@name}" size="{@size}" >
						<xsl:if test="@type='menu'">
						<option value="0">
							       None
						</option>
						<option value="0">
							       ------------------
						</option>
						</xsl:if>
						<xsl:apply-templates/>
					</select>
				</td>
				<td>
					<xsl:choose>
					<xsl:when test="@help&gt;''">
						<img src="../images/help.gif" alt="{@help}" border="0"/>
					</xsl:when>
					<xsl:otherwise>&#160;</xsl:otherwise>
					</xsl:choose>
				</td>
			</tr>
		</xsl:if>
		<!-- this is image... ;) -->
		<xsl:if test="@type='image'">
			<tr bgColor="#ffffff" valign="top">
				<td width="25%">
					<div align="right">
						<font color="red">
							<xsl:if test="@required='yes'">* </xsl:if>
						</font>
						<xsl:value-of select="@title"/>:
						</div>
				</td>
				<td valign="top">
					<xsl:if test="(@comment!='')">
						<font color="blue" size="-2"> <i> <xsl:value-of select="@comment"/></i> </font> <br/>
					</xsl:if>
					<input type="image" border="0" name="imageField" src="../examples/tomcat.gif" width="130" height="92" alt="alt..." align="middle"/>
				</td>
				<td/>
			</tr>
		</xsl:if>
		<!-- this is just information -->
		<xsl:if test="@type='info'">
			<tr bgColor="#ffffff" valign="top">
				<td width="25%">
					<div align="right">
						<font color="red">
							<xsl:if test="@required='yes'">* </xsl:if>
						</font>
						<xsl:value-of select="@title"/>: 
					</div>
				</td>
				<td>
					<xsl:if test="(@comment!='')">
						<font color="blue" size="-2"> <i> <xsl:value-of select="@comment"/></i> </font> <br/>
					</xsl:if>
						<!-- ID -->
						<font color="blue">
							<b><xsl:value-of select="@value"/></b>
						</font>
						<xsl:if test="@hiddenform='yes'">
							<input type="hidden" name="{@name}" value="{@value}"/>
						</xsl:if>
				</td>
				<td>
					<xsl:choose>
					<xsl:when test="@help&gt;''">
						<img src="../images/help.gif" alt="{@help}" border="0"/>
					</xsl:when>
					<xsl:otherwise>&#160;</xsl:otherwise>
					</xsl:choose>
				</td>
			</tr>
			
		</xsl:if>
	</xsl:template>
	<!-- .......... E D I T  .............. -->
	<xsl:template match="descriptor" mode="edit">
		
		<xsl:if test="@edit='yes'">
			<!-- text input-->
			<xsl:if test="(@type='text') or (@type='file') or (@type='password')">
				<tr bgColor="#ffffff" valign="top">
					<td width="25%">
						<div align="right">
							<font color="red">
								<xsl:if test="@required='yes'">* </xsl:if>
							</font>
							<xsl:value-of select="@title"/>:
						</div>
					</td>
					<td>
					<xsl:if test="(@comment!='')">
						<font color="blue" size="-2"> <i> <xsl:value-of select="@comment"/></i> </font> <br/>
					</xsl:if>
						<xsl:if test="@type='file' and @value!=''">
						
							<xsl:choose>
							<xsl:when test="//@name='descriptor'" >
							<a href="/descriptor/view-source.xml?filename=/{@value}">
								<xsl:value-of select="@value"/>
							</a>
							</xsl:when>
							<xsl:otherwise>
							<a href="../descriptor/upload/{//@name}/{@value}">
								<xsl:value-of select="@value"/>
							</a>
							</xsl:otherwise>
							</xsl:choose>
							
							<input type="hidden" name="lst_{@name}" value="{@value}"/>
							<input onClick="return warningMessage();" type="checkbox" name="chk_{@name}" value="1"/>Delete
					<br/>
						</xsl:if>
						<xsl:if test="(@type='text') and (@getid='yes')">
							<input type="button" VALUE="Get ID" STYLE="font: 8pt Arial, Helvetica" onClick="document.{//@name}.{@name}.value=WM_readCookie('DescriptorID');return false;"/>
							&#160;
						</xsl:if>
						<input type="{@type}" name="{@name}" size="{@size}" maxlength="{@maxlength}" value="{@value}"/>
					
						
					</td>
					<td>
						<xsl:choose>
							<xsl:when test="@help&gt;''">
								<img src="../images/help.gif" alt="{@help}" border="0"/>
							</xsl:when>
							<xsl:otherwise>&#160;</xsl:otherwise>
						</xsl:choose>
					</td>
				</tr>
			</xsl:if>
			<!-- hidden input -->
			<xsl:if test="@type='hidden'">
				<input type="{@type}" name="{@name}" value="{@value}"/>
			</xsl:if>
			<!-- this is textarea -->
			<xsl:if test="@type='textarea'">
				<tr bgColor="#ffffff" valign="top">
					<td width="25%">
						<div align="right">
							<font color="red">
								<xsl:if test="@required='yes'">* </xsl:if>
							</font>
							<xsl:value-of select="@title"/>:  
						</div>
					</td>
					<td valign="top">
						<textarea name="{@name}" cols="{@cols}" rows="{@rows}">
							<xsl:value-of select="@value"/>
						</textarea>
					</td>
					<td>
						<xsl:choose>
							<xsl:when test="@help&gt;''">
								<img src="../images/help.gif" alt="{@help}" border="0"/>
							</xsl:when>
							<xsl:otherwise>&#160;</xsl:otherwise>
						</xsl:choose>
					</td>
				</tr>
			</xsl:if>
			<!-- this is check box and radio -->
			<xsl:if test="@type='checkbox' or @type='radio'">
				<tr bgColor="#ffffff" valign="top">
					<td width="25%">
						<div align="right">
							<font color="red">
								<xsl:if test="@required='yes'">* </xsl:if>
							</font>
							<xsl:value-of select="@title"/>:
						</div>
					</td>
					<td>	
					<xsl:if test="(@comment!='')">
						<font color="blue" size="-2"> <i> <xsl:value-of select="@comment"/></i> </font> <br/>
					</xsl:if>
						<xsl:apply-templates/>
					</td>
					<td>
						<xsl:choose>
							<xsl:when test="@help&gt;''">
								<img src="../images/help.gif" alt="{@help}" border="0"/>
							</xsl:when>
							<xsl:otherwise>&#160;</xsl:otherwise>
						</xsl:choose>
					</td>
				</tr>
			</xsl:if>
			<!-- men/list menu - where is the selected ???? -->
			<xsl:if test="@type='menu' or @type='list' ">
				<tr bgColor="#ffffff" valign="top">
					<td width="25%">
						<div align="right">
							<font color="red">
								<xsl:if test="@required='yes'">* </xsl:if>
							</font>
							<xsl:value-of select="@title"/>:
						</div>
					</td>
					<td valign="top">
					<xsl:if test="(@comment!='')">
						<font color="blue" size="-2"> <i> <xsl:value-of select="@comment"/></i> </font> <br/>
					</xsl:if>
						<select name="{@name}" size="{@size}" >
							<xsl:if test="@type='menu'">
							<option value="0">
							       None
							</option>
							<option value="0">
							       ------------------
							</option>
							</xsl:if>
							<xsl:apply-templates/>
						</select>
					</td>
					<td>
						<xsl:choose>
							<xsl:when test="@help&gt;''">
								<img src="../images/help.gif" alt="{@help}" border="0"/>
							</xsl:when>
							<xsl:otherwise>&#160;</xsl:otherwise>
						</xsl:choose>
					</td>
				</tr>
			</xsl:if>
			<!-- this is image... ;) -->
			<xsl:if test="@type='image'">
				<tr bgColor="#ffffff" valign="top">
					<td width="25%">
						<div align="right">
							<font color="red">
								<xsl:if test="@required='yes'">* </xsl:if>
							</font>
							<xsl:value-of select="@title"/>:
						</div>
					</td>
					<td valign="top">
					<xsl:if test="(@comment!='')">
						<font color="blue" size="-2"> <i> <xsl:value-of select="@comment"/></i> </font> <br/>
					</xsl:if>
						<input type="image" border="0" name="imageField" src="../examples/tomcat.gif" width="130" height="92" alt="alt..." align="middle"/>
					</td>
					<td>
						<xsl:choose>
							<xsl:when test="@help&gt;''">
								<img src="../images/help.gif" alt="{@help}" border="0"/>
							</xsl:when>
							<xsl:otherwise>&#160;</xsl:otherwise>
						</xsl:choose>
					</td>
				</tr>
			</xsl:if>
			<!-- this is just information -->
			<xsl:if test="@type='info'">
			<tr bgcolor="white" valign="top">
				<td width="25%">
					<div align="right" bgcolor="white">
						<font color="black">
							<xsl:value-of select="@title"/>:
						</font>
					</div>
				</td>
				<td>
					<xsl:if test="(@comment!='')">
						<font color="blue" size="-2"> <i> <xsl:value-of select="@comment"/></i> </font> <br/>
					</xsl:if>
						<font color="blue">
							<b><xsl:value-of select="@value"/></b>
						</font>
						<xsl:if test="@hiddenform='yes'">
							<input type="hidden" name="{@name}" value="{@value}"/>
						</xsl:if>
				</td>
				<td>
						<xsl:choose>
							<xsl:when test="@help&gt;''">
								<img src="../images/help.gif" alt="{@help}" border="0"/>
							</xsl:when>
							<xsl:otherwise>&#160;</xsl:otherwise>
						</xsl:choose>
				</td>
			</tr>
			</xsl:if>
		</xsl:if>
	</xsl:template>
	<xsl:template match="choice">
		<xsl:if test="@checked='checked'">
			<!-- Type radio or checkbox-->
			<input type="{../@type}" name="{@name}" value="{@value}" checked="checked"/>
		</xsl:if>
		<xsl:if test="not(@checked='checked')">
			<input type="{../@type}" name="{@name}" value="{@value}"/>
		</xsl:if>
		<xsl:value-of select="@title"/>
		<xsl:if test="../@position='multiline'">
			<br/>
		</xsl:if>
	</xsl:template>
	<!-- template option for menu and list -->
	<xsl:template match="option">
		<!-- put selected here,, but how??? -->
		<xsl:if test="@selected='selected' and not($action='search')">
			<option value="{@value}" selected="selected">
				<xsl:value-of select="@title"/>
			</option>
		</xsl:if>
		<xsl:if test="not(@selected='selected')">
			<option value="{@value}">
				<xsl:value-of select="@title"/>
			</option>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
