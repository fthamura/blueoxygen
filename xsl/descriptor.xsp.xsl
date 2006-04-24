<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsp="http://www.apache.org/1999/XSP/Core" version="1.0">
<!-- author by Frans Thamura "frans@blueoxygen.org" -->

	<?cocoon-process type="xslt"?>
	<!--
   	This script will  transform <references> tag become <option> tag.

   	How does it work?
   	- Read all descriptor, and find the references tag
   	- if found, then select the table name (@table)
   	- if there is defaultkey in the references tag, check the database, add "selected" attribute

	-->

	<!-- HTTP_POST_VAR
		action :
			new	= create new form input
			edit	= edit content (need id variable)
			search	= to create search form (based by search attribute at descriptor


		id:		= integer value based by primary key of the content in database

		start		= start from value used to generate result at search form
		stop		= stop value used to generate result at
	-->

	<xsl:template match="contentmanager">
	<xsl:processing-instruction name="cocoon-process">type="xsp"</xsl:processing-instruction>
	<xsl:processing-instruction name="cocoon-process">type="xslt"</xsl:processing-instruction>
		<xsp:page xmlns:session="http://www.blueoxygen.org/1999/XSP/Session" create-session="true">
    
		<xsp:structure>
				<xsp:include>org.blueoxygen.dal.DbBean</xsp:include>
				<xsp:include>org.blueoxygen.util.UUID</xsp:include>
				<xsp:include>org.blueoxygen.backoffice.Descriptor</xsp:include>
				<xsp:include>java.sql.*</xsp:include>
				<xsp:include>java.io.File</xsp:include>
		</xsp:structure>

		<xsp:logic>
				DbBean dbBean = new DbBean();

				// set the maximum limit of descriptor elements = 50
				Descriptor[] objDescriptor=new Descriptor[150];

				// variable counter used by objDescriptor
				int imyDescriptor;

				// Result Set
				ResultSet myRef, myDescriptor, mySearchResultSet, myResultSet;

                                		// element variables

				String swhere, sorderby, sviewall, sdefaultkey, skey,mySQL,sreferences, schoice, soption,sAction, ssubmit;
				int istart ,istop;
				String sstop, sstart;
				String sWhere, sname;
				
				// initializing variable
				String sTable="",sDummyTable="";
				String sField="",sDummyField="";
				String sDummyWhere="";
				
				String sReferencesValue;
				String sSearch;
				
				// string for descriptor/name -> used to check the existing of table
				// sDescriptorName = descriptor/@name
				// sDescriptorValue = descriptor/@value
				String sDescriptorName, sDescriptorNameValue;
				
				// status table (created or not found)
				
				boolean bTableStatus;

				boolean bDummy, bshow_header;
				
				String sWorkflowStatus="";

				// class XSLRef to call the XSL's URI
				// this will transform the result of this process, this process is depended to the XSL below
				private String getXSLRef(String action) {
					if (action.equals("view")) {
						return "href=\"/utility/form-xml.xsl\"";
					} else if (action.equals("result")) {
						return "href=\"/xsl/descriptor.result.html.xsl\"";
					} else {
						return "href=\"/xsl/descriptor.html.xsl\"";
						// return "href=\"/utility/form-xml.xsl\"";
					}

				}
		</xsp:logic>
		<!-- copy element -->
		<xsl:copy>
		<!-- copy all attribute to element -->
       		<xsl:copy-of select="@*"/>
		
		<xsp:logic>
			String sSiteId;
			sSiteId = (String)session.getAttribute("GS_USER");
			System.out.println(sSiteId);
			String sGA_USER;
    			sGA_USER=(String)session.getAttribute("GA_USER");
       		if (sGA_USER!=null) {
       			
       			//System.out.println("GA_USER activated");
       			
       			// Initializing

			// table from contentmanager/@name
			sTable="<xsl:value-of select="//@name"/>";
			
			imyDescriptor=0;

			sWhere="";
			mySQL="";
			bDummy=true;

			ssubmit=""+request.getParameter("submit");
			// sAction value will be generate, new, edit, search, drop
			sAction=""+request.getParameter("action");
			bshow_header=true;
       			
       		
       		<xsp:attribute name="contextPath">
       				<xsp:expr>request.getContextPath()</xsp:expr>
       	    </xsp:attribute>
       		
       			// add element session=login
       			<xsp:attribute name="session">login</xsp:attribute>
       			
       			// add element sessionid=backend_user.id
       			<xsp:attribute name="sessionid">
       				<xsp:expr>session.getAttribute("GA_USER")</xsp:expr>
       			</xsp:attribute>
				
			// print session status
			<information>
				<statusset title="Login Session" param="Activated." />
			</information>
			
			// ====================================================
			// check the action parameter 
			// this procedure will generate xsl-stylesheet pi
			if (sAction.equals("result")) {

			// R E S U L T -- call the XSL "result "
			// ------------------
				<xsp:content>
					<xsp:pi target="xml-stylesheet">
  						<xsp:expr>getXSLRef("result")</xsp:expr>
  						type="text/xsl"
					</xsp:pi>
				</xsp:content>
				
				// change the name become url_descriptor.
				mySQL = "SELECT url_descriptor from descriptor where name='<xsl:value-of select="@name"/>'";
				System.out.println("156:"+mySQL);
				dbBean.connect();
				myResultSet=dbBean.execSQL(mySQL);
				myResultSet.next();
				// problem..
				<xsp:attribute name="table">
       					<xsl:value-of select="//@name"/>
       				</xsp:attribute>
				
				<xsp:attribute name="name">
       					<xsp:expr>myResultSet.getString("url_descriptor")</xsp:expr>
       				</xsp:attribute>
				dbBean.close();
			} else if (sAction.equals("generate") || sAction.equals("drop")) {

			// GENERATE or DROP -- call the XSL "result "
			// ------------------
				<xsp:content>
					<xsp:pi target="xml-stylesheet">
  						<xsp:expr>getXSLRef("new")</xsp:expr>
  						type="text/xsl"
					</xsp:pi>
				</xsp:content>
			
			// else (if new, edit, or search) -- getXSLRef for "new" 
			// ---------
			} else {
				<xsp:content>
				<xsp:pi target="xml-stylesheet">
  					<xsp:expr>getXSLRef("new")</xsp:expr>
  					type="text/xsl"
				</xsp:pi>
				</xsp:content>
				<xsp:logic>
					UUID randomID = new UUID();
					// generate random ID. 
					// Generate descriptor tag name="id", value="randomID" and type="info"
					
					if (sAction.equals("new")) {
						<xsp:content>
							<descriptor title="ID" name="id" type="info" hiddenform="yes">
							<xsp:attribute name="value">
								<xsp:expr>randomID.generate()</xsp:expr>
							</xsp:attribute>
							</descriptor>
						</xsp:content>
					} else if (sAction.equals("edit")) {
						<xsp:content>
							<descriptor title="ID" name="id" type="info" edit="yes">
							<xsp:attribute name="value">
								<xsp:expr>request.getParameter("id")</xsp:expr>
							</xsp:attribute>
							</descriptor>
						</xsp:content>
					} else if (sAction.equals("search")) {
					
						// change the action="../utility/crvd-engine.jsp" become url_descriptor.
						mySQL = "SELECT url_descriptor from descriptor where name='<xsl:value-of select="@name"/>'";
						// System.out.println("214:"+mySQL);
						dbBean.connect();
						myResultSet=dbBean.execSQL(mySQL);
						myResultSet.next();
						<xsp:attribute name="action">
       							<xsp:expr>myResultSet.getString("url_descriptor")</xsp:expr>
       						</xsp:attribute>
						dbBean.close();
					} 
					
				</xsp:logic>
			}

			// ====================================================
			// this is main descriptor xsp main script.
			// after generate a pi. this section will generate a result, new, search, edit form or generate, drop table
			
			// ACTION = GENERATE 
			// CREATE TABLE procedure 
			// ----------------------
			String sDataField, sDataType, sDataSize, sDataDefault, sDataNotNull, sDataUnique;
			// action = generate
			if (sAction.equals("generate")) {
				//System.out.println("Generate Table");
				
				mySQL = "CREATE TABLE <xsl:value-of select="//@name"/> ( id VARCHAR(28) PRIMARY KEY, ";
				<xsl:for-each select="descriptor/builder">
					
					sDataField="<xsl:value-of select="../@name"/>";
					sDataType="<xsl:value-of select="@datatype"/>";
					sDataSize="";
					sDataDefault="";
					sDataNotNull="";
					sDataUnique="";
					
					<xsl:if test="@datasize!=''">
						sDataSize="(<xsl:value-of select="@datasize"/>)";
					</xsl:if>
					
					<xsl:if test="../@value!=''">
						sDataDefault="DEFAULT '<xsl:value-of select="../@value"/>'";
					</xsl:if>
					
					<xsl:if test="../@required='yes'">
						sDataNotNull="NOT NULL";
					</xsl:if>
					
					<xsl:if test="@unique='yes'">
						sDataUnique="UNIQUE";
					</xsl:if>
					mySQL = mySQL+sDataField+" "+sDataType+sDataSize+" "+sDataDefault+" "+sDataNotNull+" "+sDataUnique+",";
						
				</xsl:for-each>		
				mySQL = mySQL+" create_by VARCHAR(15), create_date TIMESTAMP, update_by VARCHAR(15),update_date TIMESTAMP, osml_id VARCHAR(28) DEFAULT  '0', status_id VARCHAR(28) DEFAULT 'ic', site_id VARCHAR(28) )"; // Status 'ic' means wf initiated/incomplete
				System.out.println("268:"+mySQL);
				dbBean.connect();
				dbBean.execSQL(mySQL);
				dbBean.close();
				
				// I still don't know how to use getServletContext()
				// FIle(getServletContext().getRealPath("/descriptor/upload"+sTable))

				// ResourceBundle must be initialized first
				//File fileHandling = new File(sTable);
				// if (fileHandling.mkdir()) {
					// System.out.println("Upload directory : " +sTable+" created");
				//}
				<descriptor title="CREATE TABLE" name="generate" type="info" value="Success" />	
				
			// DROP TABLE procedure
			// ------------------
			} else if (sAction.equals("drop")) {
				
				// drop table @name
				mySQL = "DROP TABLE <xsl:value-of select="@name"/>";
				dbBean.connect();
				// System.out.println(mySQL);
				try {
					dbBean.execSQL(mySQL);
					<descriptor title="DROP TABLE" name="drop" type="info" value="Success" />
				} catch (SQLException ex) {
	 				if ((ex.getErrorCode()==1051)) {
	 					System.out.println(ex.getErrorCode());
	 					<descriptor title="DROP TABLE" name="drop" type="info" value="Table cannot not be found" />
	 				}
	 			}
				dbBean.close();

			// R E S U L T script
			// ------------------
			} else if (sAction.equals("result")) {
				dbBean.connect();
				// capture all the HTTP_POST_VAR
				Enumeration parameterEnum=request.getParameterNames();
				// convert enum become SQL's SELECT statement
				if (bDummy) {
					sWhere = " WHERE <xsl:value-of select="@name"/>.site_id='" + sSiteId + "'";
					
				}
				while (parameterEnum.hasMoreElements()) {
					sname=(String)parameterEnum.nextElement();
					<![CDATA[
					if (!sname.equals("table")  && !sname.equals("submit") && !sname.equals("action") && !request.getParameter(sname).equals("") && !sname.equals("start") && !sname.equals("stop") ) {
				        ]]>
				        
						if (!bDummy) {
							mySQL  = mySQL + ","+sname;
							sWhere = sWhere + " AND <xsl:value-of select="@name"/>.site_id='" + session.getAttribute("GS_USER")+  "'AND <xsl:value-of select="@name"/>." + sname+" LIKE '"+request.getParameter(sname)+"' ";
						} else {
							mySQL  =  sname;
							String sDescriptor;
							sDescriptorName = "<xsl:value-of select="@name"/>";
							System.out.println(sDescriptorName);
							
							// put the list of exception of Descriptor Name that will be by passed in multi site environment
							//if ( sDescriptorName.equals("descriptor") || sDescriptorName.equals("module_function") ) {
								//System.out.println("descipt");
								//sWhere = " WHERE <xsl:value-of select="@name"/>.site_id='" + session.getAttribute("GS_USER")+  "'AND <xsl:value-of select="@name"/>."+ sname+" LIKE '"+request.getParameter(sname)+"' ";
							//} else {
								System.out.println("non-descipt");
								sWhere = sWhere + " AND <xsl:value-of select="@name"/>."+ sname+" LIKE '"+request.getParameter(sname)+"' ";
							//}
							bDummy=false;
						}
					}
				} // end of while enumeration
				bDummy=true;
				// tricky to manipulate table
				sTable="<xsl:value-of select="//@name"/>";
				
				<xsl:for-each select="descriptor">
			               
			               sSearch = "<xsl:value-of select="@search"/>";
			               
			               // sDummyTable = value of table attribute from descriptor/references element
			               sDummyTable="<xsl:value-of select="references/@table"/>";
			               sDummyField="<xsl:value-of select="references/@value"/>";
			         
			         // ============ search="yes" ===================
			         if (sSearch.equals("yes")) {

			         	if (!sDummyTable.equals("")) 
			         	{
							sTable=sTable+","+sDummyTable;
							sField=sField+","+sDummyTable+"."+sDummyField+" AS "+sDummyTable+sDummyField;
							sDummyWhere=sDummyWhere +" AND <xsl:value-of select="//@name"/>.<xsl:value-of select="@name"/>=<xsl:value-of select="references/@table"/>.<xsl:value-of select="references/@key"/>";
			
				        } else {
							sField=sField+",<xsl:value-of select="//@name"/>.<xsl:value-of select="@name"/> AS <xsl:value-of select="//@name"/><xsl:value-of select="@name"/>";
			
			                } 
			
				 }
			 	</xsl:for-each>
			
			
				mySQL = "SELECT <xsl:value-of select="//@name"/>.id"+sField+" FROM " +sTable + " "+sWhere + sDummyWhere;
			
		        	 System.out.println("--- Search Result==============---------------");
		        	 System.out.println("369:"+mySQL);

				// execute SQL
				mySearchResultSet = dbBean.execSQL(mySQL);
				sField="";
				sTable="";

				// ============ generate tag ===================
				// generate new descriptor XML. this is a result type xml descriptor
				while (mySearchResultSet.next())
	         			{
	         			

	         			<![CDATA[ 
	         			/* 
	         			---------------------------------------------------------------------------------------------------------------
	         			create Search Header just once
	         			show_header attribute will be generate once. 
	         			This just for manipulating search form only.
	         			
	         			The out will be like this
	         			<descriptor show_header="yes" id="getString(id)">
	         				<@name name="@title"/>
	         				<@name name="@title"/>
	         				...
	         			</descriptor>
	         			
						if descriptor contain references, 
							getString(references/@name) --> XPATH = descriptor/references/@value
							
							<xsp:expr>mySearchResultSet.getString("<xsl:value-of select="references/@value"/>")</xsp:expr>
							
						else 
							getString(@name) --> XPATH = descriptor/@value
							
							<xsp:expr>mySearchResultSet.getString("<xsl:value-of select="references/@value"/>")</xsp:expr>
					---------------------------------------------------------------------------------------------------------------
					*/				
					]]>									
			         	
	         			// ============ generate result's header ===================
	         			if (bshow_header) {
					bshow_header=false;
					<xsp:content>
						<descriptor>
							<xsp:attribute name="show_header">
								<xsp:text>yes</xsp:text>
							</xsp:attribute>

							<xsp:attribute name="id">
								<xsp:expr>mySearchResultSet.getString("id")</xsp:expr>
							</xsp:attribute>

							<xsl:for-each select="descriptor">
							<xsp:logic>
								sSearch = "<xsl:value-of select="@search"/>";
								if (sSearch.equals("yes")) {
								<xsl:element name="{@name}">
									<xsp:attribute name="name">
										<xsl:value-of select="@title"/>
									</xsp:attribute>
									<xsp:logic>
										sReferencesValue ="<xsl:value-of select="references/@table"/><xsl:value-of select="references/@value"/>";
										//if (mySearchResultSet.getString("<xsl:value-of select="//@name"/><xsl:value-of select="@name"/>")!=null) {
											if (sReferencesValue.equals("")) 
											{
												((Element) xspCurrentNode).setAttribute("value",String.valueOf(mySearchResultSet.getString("<xsl:value-of select="//@name"/><xsl:value-of select="@name"/>"))+"");
												//System.out.println(mySearchResultSet.getString("<xsl:value-of select="//@name"/><xsl:value-of select="@name"/>"));
											} else {
												((Element) xspCurrentNode).setAttribute("value",String.valueOf(mySearchResultSet.getString("<xsl:value-of select="references/@table"/><xsl:value-of select="references/@value"/>"))+"");
												//System.out.println(mySearchResultSet.getString("<xsl:value-of select="references/@table"/><xsl:value-of select="references/@value"/>"));
											}
										//}
									</xsp:logic>
									
								</xsl:element>
								}
							</xsp:logic>
							</xsl:for-each>
						</descriptor>
					</xsp:content>
					
					// ============ if header has been created ===================
					} else {
					// if show_header has been created execute this statement
					<xsp:content>
						<descriptor>
							<xsp:attribute name="id">
								<xsp:expr>mySearchResultSet.getString("id")</xsp:expr>
							</xsp:attribute>

							<xsl:for-each select="descriptor">
							<xsp:logic>
								sSearch = "<xsl:value-of select="@search"/>";
								if (sSearch.equals("yes")) {
								<xsl:element name="{@name}">
									<xsp:attribute name="name">
										<xsl:value-of select="@title"/>
									</xsp:attribute>

									<xsp:logic>
										sReferencesValue ="<xsl:value-of select="references/@table"/><xsl:value-of select="references/@value"/>";
										
										// NEED HELP HERE...Still confuse..why??
										// if (mySearchResultSet.getString("<xsl:value-of select="//@name"/><xsl:value-of select="@name"/>")!=null)) {
											if (sReferencesValue.equals("")) 
											{
												((Element) xspCurrentNode).setAttribute("value",String.valueOf(mySearchResultSet.getString("<xsl:value-of select="//@name"/><xsl:value-of select="@name"/>"))+"");
												//System.out.println(mySearchResultSet.getString("<xsl:value-of select="//@name"/><xsl:value-of select="@name"/>"));
											} else {
												((Element) xspCurrentNode).setAttribute("value",String.valueOf(mySearchResultSet.getString("<xsl:value-of select="references/@table"/><xsl:value-of select="references/@value"/>"))+"");
												//System.out.println(mySearchResultSet.getString("<xsl:value-of select="references/@table"/><xsl:value-of select="references/@value"/>"));
											}
										//}
										
									</xsp:logic>
									
								</xsl:element>
								}
							</xsp:logic>
							</xsl:for-each>
						</descriptor>
					</xsp:content>
					} // END creating result's header
				} // action for N E W .. S E A R C H .. E D I T .. RESULT .. GENERATE .. DROP
			} else {
			
			//
				<xsp:content>
					<xsl:apply-templates/>
					<xsp:logic>
						// check the assign_descriptor table, if you can find a field there, means the descriptor is assigned to a workflow
						dbBean.connect();
						mySQL="SELECT COUNT(assign_descriptor.id) AS total FROM assign_descriptor, descriptor WHERE descriptor.id=assign_descriptor.descriptor_id AND assign_descriptor.active_flag='1' AND descriptor.name='"+sTable+"'";
						myResultSet=dbBean.execSQL(mySQL);
						myResultSet.next();
						if (myResultSet.getInt("total")>=1) {
							<xsp:content>
							<descriptor title="Workflow Hierarchy" name="osml_id" type="list" search="yes" edit="yes" references="yes" >
								<xsp:logic>
									mySQL="SELECT DISTINCT osml.name, osml.id FROM osml,assign_descriptor,descriptor,"+sTable+" WHERE descriptor.id=assign_descriptor.descriptor_id AND osml.id=assign_descriptor.osml_id AND descriptor.name='"+sTable+"'";
									myResultSet=dbBean.execSQL(mySQL);
									while (myResultSet.next()) {
										<option title="x" value="y" > 
										<xsp:attribute name="title">
											<xsp:expr>myResultSet.getString("name")</xsp:expr>
										</xsp:attribute>
										<xsp:attribute name="value">
											<xsp:expr>myResultSet.getString("id")</xsp:expr>
										</xsp:attribute>
										</option>
									}
								</xsp:logic>
								
							</descriptor>
							<descriptor edit="yes" help="This document is workflow enabled. Choose this to initiate the workflow." name="status_id" search="yes" title="Status" type="list" value="1">
							<xsp:logic>
					        	
							if (sAction.equals("edit")) {
								
								// get status_id of descriptor from database, and check if the status_id is "ic" means incomplete
								mySQL="SELECT status_id from "+sTable+" WHERE id='"+request.getParameter("id")+"'";
								myResultSet=dbBean.execSQL(mySQL);
								myResultSet.next();
								sWorkflowStatus=myResultSet.getString("status_id"); // current status
								
								// if descriptor is workflow-enabled, generate
								
								if (sWorkflowStatus.equals("ic"))  {
  									<option title="Incomplete" value="ic" selected="selected"/> 
  									<option title="Ready" value="ip" /> 
  								} else { // other than ic, can be ip (inprogress), rj (rejected)
  									<option title="Incomplete" value="ic" /> 
  									<option title="Ready" value="ip" selected="selected"/> 
  								}
  								
  							} else {
								<option title="Incomplete" value="ic" /> 
  								<option title="Ready" value="ip"/> 
							}					
					        	
							</xsp:logic>
					        	
							</descriptor>							
							</xsp:content>
						}
  						dbBean.close();
					
  					</xsp:logic>

				</xsp:content>
				
			}
			
			
			// descriptor only area
			if (sTable.equals("descriptor")) {
			
				// bTableStatus=true/false --> true means database exist
				
				mySQL="SELECT id from "+sDescriptorNameValue;
				try {
	 				dbBean.connect();
	 				myResultSet=dbBean.execSQL(mySQL);
	 				dbBean.close();
	 				bTableStatus=true;
			 	} catch (SQLException ex) {
	 				if (ex.getErrorCode()==1146) {
	 					bTableStatus=false;
	 				}
	 			}
						
				// for sAction=edit only
				if (sAction.equals("edit")) {
					
					// print status of table
					if (bTableStatus) {
						<information>
							<statusset title="Database" param="Created." />
						</information>
					} else {
						<information>
							<statusset title="Database" param="not Found." />
						</information>
					}
				}
				
			}
		// END of session handling  GA_USER
		} else { // session time out... 
			<xsp:attribute name="session">logout</xsp:attribute>
			<xsp:content>
				
				<xsp:pi target="xml-stylesheet">
  					<xsp:expr>getXSLRef("new")</xsp:expr>
  					type="text/xsl"
				</xsp:pi>
				
				<information>
					<statusset title="Login Session" param="Time Out. Please, Login Again!!!" />
				</information>
			</xsp:content>
		} // END of session time out
		</xsp:logic>
			
		</xsl:copy>

		</xsp:page>

	</xsl:template>

	<xsl:template match="descriptor">
	<xsp:logic>
	  if (sAction.equals("new") || sAction.equals("search") || sAction.equals("edit")) {
			// create table procedure procedure 
				
		<xsl:copy>
			<xsl:copy-of select="@*"/>
			<xsp:logic>
				// System.out.println("Descriptor: <xsl:value-of select="@name"/>");

				// NEW and SEARCH
				// This procedure will create a blank form
				if (sAction.equals("new") || sAction.equals("search")) {
					sreferences="<xsl:value-of select="@references"/>";
					// System.out.println("searching.........");

				 	if ( sreferences.equals("yes")) {
				 	 <xsp:content>
							<xsl:copy-of select="@*"/>
						</xsp:content>
				 	} else {
				 	   <xsp:content>
							<xsl:copy-of select="@*"/>
						</xsp:content>
				 	}

				// if action=edit, we try to read the database to generate the result
				// ResultSet will be put in value of this XML
				} else if (sAction.equals("edit")) {

						//System.out.println("editing.........<xsl:value-of select="@name"/>");
							sDescriptorName="<xsl:value-of select="@name"/>";
			                             	mySQL = "SELECT <xsl:value-of select="@name"/> from <xsl:value-of select="../@name"/>  WHERE id='"+request.getParameter("id")+"'";
			                             	dbBean.connect();
			                    	        myDescriptor = dbBean.execSQL(mySQL);
			                    	       
			                    	        myDescriptor.next();
			                    	        
			                    	         // if value @name= name and table = descriptor
			                    	        if (sDescriptorName.equals("name")) {
			                    	        	sDescriptorNameValue=myDescriptor.getString(sDescriptorName);
			                    	        }
			                    	        
			                    	        objDescriptor[imyDescriptor] = new Descriptor("<xsl:value-of select="@name"/>",myDescriptor.getString("<xsl:value-of select="@name"/>")+"");
			                    	        imyDescriptor++;
			                    	        
			                    	        	if (myDescriptor.getString("<xsl:value-of select="@name"/>")!=null) {
				                    	          	<xsp:content>
									<xsp:attribute name="value">
										<xsp:expr>myDescriptor.getString("<xsl:value-of select="@name"/>")</xsp:expr>
									</xsp:attribute>
									</xsp:content>
			                    	       		}
			                    		dbBean.close();
			                    	//System.out.println("edit finish");
					}

			</xsp:logic>
			<xsl:apply-templates/>
			<xsp:logic>
	 			// reset the array
	 			imyDescriptor=0;
	 		</xsp:logic>
		</xsl:copy>
	   }
	</xsp:logic>
	</xsl:template>

	<xsl:template match="references">
	<xsp:logic>

	 	// This is SQL statement to read all the table based from reference/@table.

         	 mySQL = "SELECT reference.<xsl:value-of select="@key"/>,reference.<xsl:value-of select="@value"/> FROM <xsl:value-of select="@table"/> as reference";


         	 // descriptor/where attribute, don't forget to put AND if there viewall not ="yes"
         	 swhere="<xsl:value-of select="@where"/>";

         	 // if descriptor/viewall = yes. descriptor/where will be bypassed
         	 sviewall="<xsl:value-of select="@viewall"/>";

         	 // sort attribute ASC or DESC
         	 sorderby = "<xsl:value-of select="@orderby"/>";

         	 // if viewall attribute is set to "yes", mean show all records, all 'where' will be bypassed
         	 if (!sviewall.equals("yes")) {
         	 	mySQL = mySQL + " ,descriptor WHERE descriptor.name='<xsl:value-of select="//@name"/>' AND reference.descriptor_id=descriptor.id ";
         	 }

		// WHERE statement generator
         	 if (!swhere.equals("")) {
	         	if (sviewall.equals("yes")) {
         	 		mySQL = mySQL + " WHERE <xsl:value-of select="@where"/> ";
         	 	} else {
         	 		// put the descriptor/where value
         	 	mySQL = mySQL + " AND <xsl:value-of select="@where"/> ";
         	 	}
         	 }


		 // ORDERBY statement generator
		 if (sorderby.length()&gt;0) {
         	 	mySQL = mySQL + " ORDER BY reference.<xsl:value-of select="@orderby"/>";
         	 	}

         	// System.out.println(mySQL);
		// execute SQL statement for references

	                if (sAction.equals("edit")) {

	                  	// System.out.println("edit.........references.....");
	                  	<![CDATA[for (int i=0;i<imyDescriptor;i++) { ]]>
					if (objDescriptor[i].getId().equals("<xsl:value-of select="../@name"/>")) {
						sdefaultkey= objDescriptor[i].getValue();
						// System.out.println("defaultkey from objDescriptor........."+objDescriptor[i].getId());
					}

				}

				// System.out.println("obj finish");

	                  } else if (sAction.equals("new") || (sAction.equals("search"))) {
	                  	// System.out.println("new or search.........references.....");
	                  	sdefaultkey="<xsl:value-of select="@defaultkey"/>";
	                  	// System.out.println("defaultkey....<xsl:value-of select="@defaultkey"/>");
	                  }
	         //System.out.println(mySQL);

	         dbBean.connect();
	         myRef = dbBean.execSQL(mySQL);
	         // System.out.println("execSQL");

	         // create XML attribute from database
	         while (myRef.next())
	         {

	                  skey = myRef.getString("<xsl:value-of select="@key"/>");

	                  // if key attribute = defaultkey, put selected attribute in the element
	                  if ( sdefaultkey.equals(skey) <![CDATA[&& skey!="" && sdefaultkey!="" ]]>) {
	             		// System.out.println("selected option is number....defaultkey="+sdefaultkey);
	             		<xsp:content>
				<option>
					<xsp:attribute name="value">
						<xsp:expr>myRef.getString("<xsl:value-of select="@key"/>")</xsp:expr>
					</xsp:attribute>
					<xsp:attribute name="title">
						<xsp:expr>myRef.getString("<xsl:value-of select="@value"/>")</xsp:expr>
					</xsp:attribute>
					<xsp:attribute name="selected">selected</xsp:attribute>
				</option>
				</xsp:content>
	                  } else {
	                  	// System.out.println("key is <xsl:value-of select="@key"/> and defaultkey <xsl:value-of select="@defaultkey"/>");
	                   <xsp:content>
				<option>
					<xsp:attribute name="value">
						<xsp:expr>myRef.getString("<xsl:value-of select="@key"/>")</xsp:expr>
					</xsp:attribute>
					<xsp:attribute name="title">
						<xsp:expr>myRef.getString("<xsl:value-of select="@value"/>")</xsp:expr>
					</xsp:attribute>
				</option>
			</xsp:content>
	                  }


	         }
	         dbBean.close();
	         // System.out.println("finish");
	</xsp:logic>
	</xsl:template>

	<xsl:template match="option">
		<xsl:copy>
	        	<xsl:copy-of select="@*"/>
			<xsp:logic>
			sAction=""+request.getParameter("action");

			// checked attribute will be assigned if value of the result = 1
			if (sAction.equals("edit")) {

				mySQL = "SELECT <xsl:value-of select="@name"/> FROM <xsl:value-of select="//@name"/>  WHERE id='"+request.getParameter("id")+"'";
				System.out.println(mySQL);
				dbBean.connect();
				myDescriptor = dbBean.execSQL(mySQL);
				myDescriptor.next();
				schoice = myDescriptor.getString("<xsl:value-of select="@name"/>")+"";
				// System.out.println("schoice: " +  schoice + "<xsl:value-of select="@value"/>");

				if (schoice.equals("<xsl:value-of select="@value"/>")) {
				<xsp:content>
					<xsp:attribute name="selected">selected</xsp:attribute>
				</xsp:content>
				} else {
				<xsp:content>
					<xsp:attribute name="selected"></xsp:attribute>
				</xsp:content>
				}
				// System.out.println("option ...<xsl:value-of select="@title"/>..."+myDescriptor.getString("<xsl:value-of select="@name"/>"));
				dbBean.close();
			}

			</xsp:logic>
		</xsl:copy>
	</xsl:template>

	<xsl:template match="choice">
	        <xsl:copy>
	        <xsl:copy-of select="@*"/>
			<xsp:logic>
			sAction=""+request.getParameter("action");

			// checked attribute will be assigned if value of the result = 1
			if (sAction.equals("edit")) {

				mySQL = "SELECT <xsl:value-of select="@name"/> FROM <xsl:value-of select="//@name"/> WHERE id='"+request.getParameter("id")+"'";
				//System.out.println(mySQL);
				dbBean.connect();
				myDescriptor = dbBean.execSQL(mySQL);
				myDescriptor.next();
				schoice = myDescriptor.getString("<xsl:value-of select="@name"/>")+"";
				// System.out.println(schoice + "<xsl:value-of select="@value"/>");

				if (schoice.equals("<xsl:value-of select="@value"/>")) {
				<xsp:content>
					<xsp:attribute name="checked">checked</xsp:attribute>
				</xsp:content>
				} else {
				<xsp:content>
					<xsp:attribute name="checked"></xsp:attribute>
				</xsp:content>
				}
				// System.out.println("choice ...<xsl:value-of select="@name"/>..."+myDescriptor.getString("<xsl:value-of select="@name"/>"));
				dbBean.close();
			}


			</xsp:logic>
		</xsl:copy>
	</xsl:template>

	<xsl:template match="linkset">
		<xsl:copy>
	        	<xsl:copy-of select="@*"/>
		</xsl:copy>
	</xsl:template>

	<xsl:template match="*|@*|text()">
		<xsl:copy>
			<xsl:apply-templates select="*|@*|text()"/>
		</xsl:copy>
	</xsl:template>

</xsl:stylesheet>
