<table width="100%">
	<tr bgcolor="#FFFFFF">
		<td valign="top" width="10%">
		<h3 class="select">User</h3>
			<ul>
				<li><a href="<%=root%>/gula/viewUser.action">view</a></li>
			</ul>
		<h3 class="select">Role</h3>
			<ul>
				<li><a href="<%=root%>/frontpage/role/create.action">New</a></li>
				<li><a href="<%=root%>/frontpage/role/filter.action">Search</a></li>
			</ul>
		<h3 class="select">Role privilage</h3>
			<ul>
				<li><a href="<%=root%>/frontpage/role/filter_privilage.action">search</a></li>
			</ul>
		<h3 class="select">Descriptor</h3>
			<ul>
				<li><a href="<%=root%>/frontpage/descriptor/create.action">New</a></li>
				<li><a href="<%=root%>/frontpage/descriptor/filter.action">Search</a></li>
			</ul>
		<h3 class="select">Module</h3>
			<ul>
				<li><a href="<%=root%>/frontpage/module/createModuleFunction.action">New</a></li>
				<li><a href="<%=root%>/frontpage/module/filterModuleFunction.action">Search</a></li>
			</ul>
		<h3 class="select">Beneficiary</h3>
			<ul>
				<li><a href="<%=root%>/insurance/createBeneficiary.action">New</a></li>
				<li><a href="<%=root%>/insurance/filterBeneficiary.action">Search</a></li>
			</ul>
			<h3 class="select">Agent</h3>
			<ul>
				<li><a href="<%=root%>/insurance/createAgent.action">New</a></li>
				<li><a href="<%=root%>/insurance/searchAgent.action">Search</a></li>
			</ul>
			<h3 class="select">Payment</h3>
			<ul>
				<li><a href="<%=root%>/insurance/createPayment.vm">New</a></li>
			</ul>
			<h3 class="select">Business Partner</h3>
			<ul>
				<li><a href="<%=root%>/gula/createBusinessPartner.action">New</a></li>
				<li><a href="<%=root%>/gula/filterBusinessPartner.action">Search</a></li>
			</ul>
			<h3 class="select">Contact</h3>
			<ul>
				<li><a href="<%=root%>/gula/createContact.action">New</a></li>
				<li><a href="<%=root%>/gula/filterContact.action">Search</a></li>
			</ul>
			<h3 class="select">Product</h3>
			<ul>
				<li><a href="<%=root%>/gula/create.action">New</a></li>
				<li><a href="<%=root%>/gula/searchForm.action">Search</a></li>
			</ul>
			<h3 class="select">Opportunity</h3>
			<ul>
				<li><a href="<%=root%>/gula/createOpportunity.action">New</a></li>
				<li><a href="<%=root%>/gula/filterOpportunity.action">Search</a></li>
			</ul>
		</td>
		<td width="5%">&nbsp;</td>
		<td width="85%" valign="top"><decorator:body /></td>
	</tr>
</table>