<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!-- 
XSL Template to generate result of Search

written by Frans Thamura "greylite@linuxindonesia.com" 
-->
	<!-- .......... R O O T .............. -->
	<xsl:template match="contentmanager">
		<html>
			<head>
				<title>
					Result of &quot;<xsl:value-of select="@table"/>&quot;
				</title>
				
				<script language="JavaScript">
				<![CDATA[
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
				
				
				/*
				WM_setCookie(), WM_readCookie(), WM_killCookie()
				A set of functions that eases the pain of using cookies.
				
				Source: Webmonkey Code Library
				(http://www.hotwired.com/webmonkey/javascript/code_library/)
				
				Author: Nadav Savio
				Author Email: nadav@wired.com
				*/
				
				
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
					    return false;
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
			</script>
			</head>
			<LINK href="../style.css" type="text/css" rel="stylesheet"/>

			<body bgcolor="lightyellow">
			
				<table cellSpacing="1" cellPadding="3" width="98%" bgColor="black" border="0">
						<tr bgcolor="#F0DCF0" width="200">
							<td colspan="3"><b>STATUS:</b></td>
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
				<br/>
				<table cellSpacing="1" cellPadding="3" width="98%" bgColor="black" border="0">
					<tr bgColor="#ffffff" valign="top">
						<td colSpan="25" bgColor="D0DCFF">
							<b>Result of 
								</b>'<xsl:value-of select="@table"/>'<br/> 
								<b>Found: </b><xsl:value-of select="count(//descriptor)"/> item(s)
						</td>
					</tr>
				</table>&#160;
				<table cellSpacing="1" cellPadding="3" width="98%" bgColor="black" border="0">
					<xsl:apply-templates/>
				</table>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="descriptor">
		<xsl:if test="@show_header='yes'">
			<tr bgColor="#dcdcdc" valign="top">
				<xsl:for-each select="*">
					<td>
						<b>
						<xsl:value-of select="@name"/>
						</b>
					</td>
					
				</xsl:for-each>
				<td width="60px">
				<div align="right">
				<b>Action</b>
				</div>
				</td>
			</tr>
		</xsl:if>
		<tr bgColor="#ffffff" valign="top">
			<xsl:apply-templates mode="result"/>
			<td width="65px"><div align="right" >
					<a href="{//@name}?action=edit&amp;id={@id}">
								<img src="../images/edit.gif" cursor="hand" border="0" alt="edit this record!"/>
					</a>
					<a onclick="WM_setCookie('DescriptorID', '{@id}')" href="#">
						<img src="../images/right-arrow.gif" cursor="hand" border="0" alt="Click to put in to Memory!"/>
					</a>
					</div>
			</td>
		</tr>
	</xsl:template>
	<xsl:template match="*" mode="result">
		<td>&#160;
			<a href="{//@name}?action=edit&amp;id={../@id}">
				<xsl:value-of select="@value"/>
			</a>
		</td>
		
	</xsl:template>
</xsl:stylesheet>
