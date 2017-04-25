<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>
<div id=leftCol>
<br>
<h3><a href="<util:applicationRoot/>/index.jsp">Home</a></h3>
<c:catch var="exception">
    <jsp:include page="local_menu_home.jsp"/>
</c:catch>
<h3>Classes</h3>
<ul>
<li><a href="<util:applicationRoot/>/classHierarchy.jsp">Class Hierarchy</a>
<li><a href="<util:applicationRoot/>/classList.jsp">Class List</a>
</ul>
<c:catch var="exception">
    <jsp:include page="local_menu_end.jsp"/>
</c:catch>
</div>
