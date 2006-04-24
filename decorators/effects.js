// Provide hover and click effect to entire table rows.
// Usage:
// <table class="grid">
//   <tr href="somelink.jsp" onmouseover="rowHover(this)">
//   ...
function rowHover(row) {
	if (!row.href && row.getAttribute) row.href = row.getAttribute("href");
	if (!row.href) return;
	row.oldClassName = row.className;
	row.className = 'gridHover';
	row.onmouseout = function() {
		this.className = this.oldClassName;
	}
	row.onclick = function() {
		document.location.href = this.href;
	}
}
