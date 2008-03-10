<% 
// Search with LIMIT features

int iMaxResult, iStart, iTotalResult,iCount;

// MaxResult Default = 25
iMaxResult = 25;
// Start Pointer  = 0
iStart = 0;
iTotalResult = 0;
iCount = 0;

String sLimit=" LIMIT ";

// sLimit is the SQL's LIMIT
// Limit start, maxresult

// check if the start point is found
if (request.getParameter("start")!=null) {
	
	iStart = Integer.parseInt(""+request.getParameter("start"));
	if (iStart<0) iStart=0;
} 

// check if the Count parameter is found
if (request.getParameter("count")!=null) {
	
	iCount = Integer.parseInt(""+request.getParameter("count"));
	
}

// check if the maxresult parameter is found
if (request.getParameter("maxresult")!=null) {
	
	iMaxResult = Integer.parseInt(""+request.getParameter("maxresult"));
	
} 
// add limit's value to sLimit
sLimit = " LIMIT "+iStart+","+iMaxResult;
%>