<?xml version="1.0"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  
>
  <xsl:template match="page">
<html><head><title>category</title></head>
<link href="/cimande/style.css" rel="stylesheet" type="text/css"/><body bgcolor="lightyellow">
<h2>Workflow Status and Approval History</h2>
<table bgcolor="#dcdcdc" border="1" cellpadding="3" cellspacing="1" width="100%">
  <tr bgcolor="D0DCE0" valign="top"> 
    <td> 
      <div align="right"><b>No.</b></div>
    </td>
    <td> 
      <b><font color="black">Date: </font></b>
    </td>
    <td><b>User</b></td>
    <td><b>Status</b></td>
    <td><b>Notes</b></td>
  </tr>
  <tr bgcolor="#ffffff" valign="top"> 
    <td> 
      <div align="right">1.</div>
    </td>
    <td> 
      10 Feb 2001
    </td>
    <td valign="top"><b>Frans Thamura</b></td>
    <td>Approve</td>
    <td>Good Article</td>
  </tr>
  <tr bgcolor="yellow" valign="top"> 
    <td> 
      <div align="right">2.</div>
    </td>
    <td> 
      10 Feb 2001
    </td>
    <td><b>Dony</b></td>
    <td>Wait for Approval</td>
    <td>&#160;</td>
  </tr>
</table>
<br/>
This will read approval_history, structure hierarchy table, and will see the status of descriptor's content. 
<br/>

<br/>
<div align="right"><a href="/cimande/detail.html" target="_blank">Preview</a>&#160;&#160;&#160;<input type="submit" name="close" value="Close" />&#160;&#160;&#160;&#160;</div>
</body></html>

  </xsl:template>
  
 
</xsl:stylesheet>
