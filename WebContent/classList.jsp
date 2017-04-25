<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="grid" uri="http://slis.uiowa.edu/GRIDRDF"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Class List</title>
<style type="text/css" media="all">    @import "<util:applicationRoot/>/resources/style.css";</style></head>
<body>
<div id="content"><jsp:include page="/header.jsp" flush="true" /> <jsp:include page="/menu.jsp" flush="true"><jsp:param name="caller" value="research" /></jsp:include><div id="centerCol">
<ol class="bulletedList">
<li><a href="<util:applicationRoot/>/Address/AddressList.jsp">Address</a>
<li><a href="<util:applicationRoot/>/Archive/ArchiveList.jsp">Archive</a>
<li><a href="<util:applicationRoot/>/Company/CompanyList.jsp">Company</a>
<li><a href="<util:applicationRoot/>/Education/EducationList.jsp">Education</a>
<li><a href="<util:applicationRoot/>/Facility/FacilityList.jsp">Facility</a>
<li><a href="<util:applicationRoot/>/Government/GovernmentList.jsp">Government</a>
<li><a href="<util:applicationRoot/>/Healthcare/HealthcareList.jsp">Healthcare</a>
<li><a href="<util:applicationRoot/>/Nonprofit/NonprofitList.jsp">Nonprofit</a>
<li><a href="<util:applicationRoot/>/Other/OtherList.jsp">Other</a>
</ol>

<jsp:include page="/footer.jsp" flush="true" /></div></div></body>
</html>

