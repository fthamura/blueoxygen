<%@ page import = "com.intercitra.security.User" %>
<%@ taglib uri="sitemesh-decorator" prefix="decorator" %>
<%@ taglib uri="webwork" prefix="webwork" %>
<%
    String root = request.getContextPath();
    response.setHeader("Cache-Control", "none");
%>


<html>
<head>
    <title>Decorators - Main <decorator:title default="Naga Sakti" /></title>
    <link rel="stylesheet" type="text/css" href="<%=root%>/decorators/001.css">
    <script src="<%=root%>/decorators/effects.js"></script>
    <decorator:head />
</head>

<body id="css-zen-garden">

<div id="container">
	<div id="intro">
		<!--
		<div id="pageHeader">
			<h1><span>Perkumpulan Nagasakti</span></h1>

		</div>

		<div id="quickSummary">
			<p class="p1"><span>A demonstration of what can be accomplished visually through <acronym title="Cascading Style Sheets">CSS</acronym>-based design. Select any style sheet from the list to load it into this page.</span></p>
			<p class="p2"><span>Download the sample <a href="zengarden-sample.html" title="This page's source HTML code, not to be modified.">html file</a> and <a href="zengarden-sample.css" title="This page's sample CSS, the file you may modify.">css file</a></span></p>
		</div>

		<div id="preamble">
			<h3><span>The Road to Enlightenment</span></h3>
			<p class="p1"><span>Littering a dark and dreary road lay the past relics of browser-specific tags, incompatible <acronym title="Document Object Model">DOM</acronym>s, and broken <acronym title="Cascading Style Sheets">CSS</acronym> support.</span></p>
			<p class="p2"><span>Today, we must clear the mind of past practices. Web enlightenment has been achieved thanks to the tireless efforts of folk like the <acronym title="World Wide Web Consortium">W3C</acronym>, <acronym title="Web Standards Project">WaSP</acronym> and the major browser creators.</span></p>
			<p class="p3"><span>The css Zen Garden invites you to relax and meditate on the important lessons of the masters. Begin to see with clarity. Learn to use the (yet to be) time-honored techniques in new and invigorating fashion. Become one with the web.</span></p>
		</div>
-->
	</div>

	<div id="supportingText">
		<div id="explanation">
			<br>
			<h3><span><decorator:title default="NagaSakti" /></span></h3>
			
			<decorator:body />

			<!--
			<p class="p1"><span>There is clearly a need for <acronym title="Cascading Style Sheets">CSS</acronym> to be taken seriously by graphic artists. The Zen Garden aims to excite, inspire, and encourage participation. To begin, view some of the existing designs in the list. Clicking on any one will load the style sheet into this very page. The code remains the same, the only thing that has changed is the external .css file. Yes, really.</span></p>
			<p class="p2"><span><acronym title="Cascading Style Sheets">CSS</acronym> allows complete and total control over the style of a hypertext document. The only way this can be illustrated in a way that gets people excited is by demonstrating what it can truly be, once the reins are placed in the hands of those able to create beauty from structure. To date, most examples of neat tricks and hacks have been demonstrated by structurists and coders. Designers have yet to make their mark. This needs to change.</span></p>
			-->
		</div>

	</div>

<% if (request.getRemoteUser() != null) { %>
	<div id="linkList">
		<div id="linkList2">

			<div id="lselect">
				<h3 class="select">User<span>Select a Design:</span></h3>
				<ul>
					<li><strong>Welcome:</strong> <%= request.getRemoteUser() == null ? "Guest" : request.getRemoteUser() %></li>
					<li><% if (request.getRemoteUser() != null) { %><a href="<%=root%>/logout.action">Logout</a>
            				    <% } else { %><a href="<%=root%>/login.jsp">Login</a>
				            <% } %></li>
				</ul>
				
				<h3 class="select">Beneficiary<span>Select a Design:</span></h3>
				<ul>
					<li><a href="<%=root%>/insurance/listBeneficiary.action">View All</a><br>View all beneficiaries</li>
					<li><a href="<%=root%>/insurance/createBeneficiary.action">New</a><br>Create beneficiary</li>
					<li><a href="<%=root%>/insurance/filterBeneficiary.action">Search</a><br>Search beneficiaries</li>
<!--
					<li><a href="<%=root%>/insurance/viewBeneficiaryTree.action">Beneficiary Tree</a><br>View beneficiaries arranged in tree</li>
-->
				</ul>
				<h3 class="select">Agent<span>Select a Design:</span></h3>
				<ul>
					<li><a href="<%=root%>/insurance/listAgent.action">View All</a><br>View all agents</li>
					<li><a href="<%=root%>/insurance/createAgent.action">New</a><br>Create agent</li>
					<li><a href="<%=root%>/insurance/searchAgent.action">Search</a><br>Search agent</li>
				</ul>
				<h3 class="select">Payment<span>Select a Design:</span></h3>
				<ul>
					<li><a href="<%=root%>/insurance/listPayment.action">View All</a><br>View all payments</li>
					<li><a href="<%=root%>/insurance/createPayment.vm">New</a><br>Create payment</li>
				</ul>
			</div>

			<div id="larchives">
			<!--
				<h3 class="archives"><span>Archives:</span></h3>
				<ul>
					<li><a href="?cssfile=/001/001.css&amp;page=1" title="View next set of designs. AccessKey: n" accesskey="n"><span class="accesskey">n</span>ext designs &raquo;</a></li>
					<li><a href="http://www.mezzoblue.com/zengarden/alldesigns/" title="View every submission to the Zen Garden. AccessKey: w" accesskey="w">Vie<span class="accesskey">w</span> All Designs</a></li>
				</ul>
                        -->
			</div>

			<div id="lresources">
			<!--
				<h3 class="resources"><span>Resources:</span></h3>
				<ul>
					<li><a href="/001/001.css" title="View the source CSS file for the currently-viewed design, AccessKey: v" accesskey="v"><span class="accesskey">V</span>iew This Design&#8217;s <acronym title="Cascading Style Sheets">CSS</acronym></a></li>					<li><a href="http://www.mezzoblue.com/zengarden/resources/" title="Links to great sites with information on using CSS. AccessKey: r" accesskey="r"><acronym title="Cascading Style Sheets">CSS</acronym> <span class="accesskey">R</span>esources</a></li>
					<li><a href="http://www.mezzoblue.com/zengarden/faq/" title="A list of Frequently Asked Questions about the Zen Garden. AccessKey: q" accesskey="q"><acronym title="Frequently Asked Questions">FA<span class="accesskey">Q</span></acronym></a></li>
					<li><a href="http://www.mezzoblue.com/zengarden/submit/" title="Send in your own CSS file. AccessKey: s" accesskey="s"><span class="accesskey">S</span>ubmit a Design</a></li>
					<li><a href="http://www.mezzoblue.com/zengarden/translations/" title="View translated versions of this page. AccessKey: t" accesskey="t"><span class="accesskey">T</span>ranslations</a></li>
				</ul>
			-->
			</div>

		</div>
	</div>
<% } %>

</div>

<!-- These extra divs/spans may be used as catch-alls to add extra imagery. -->
<div id="extraDiv1"><span></span></div><div id="extraDiv2"><span></span></div><div id="extraDiv3"><span></span></div>
<div id="extraDiv4"><span></span></div><div id="extraDiv5"><span></span></div><div id="extraDiv6"><span></span></div>

</body>
</html>
