<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="grid" uri="http://slis.uiowa.edu/GRIDRDF"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Healthcare - http://www.grid.ac/ontology/Healthcare</title>
<style type="text/css" media="all">    @import "<util:applicationRoot/>/resources/style.css";</style></head>
<body>
<div id="content"><jsp:include page="/header.jsp" flush="true" /> <jsp:include page="/menu.jsp" flush="true"><jsp:param name="caller" value="research" /></jsp:include><div id="centerCol">
   <p><a href="altHealthcare.jsp?uri=${param.uri}">alternate view</a></p>
   <p><a href="../utility/sparqlDump.jsp?type=Healthcare&uri=${param.uri}">RDF dump</a></p>
   <grid:Healthcare subjectURI="${param.uri}">

   <h3>Default Properties</h3>
   <table>
      <tr><td>URI</td><td><a href="<grid:HealthcareSubjectURI/>"><grid:HealthcareSubjectURI /></a></td></tr>
      <tr><td>Label</td><td><grid:HealthcareLabel /></td></tr>
   </table>

   <h3>Functional Datatype Properties</h3>
   <table>
   </table>

   <h3>Non-Functional Datatype Properties</h3>
   <table>
      <grid:foreachHealthcareWikipediaPageIterator>
         <tr><td>wikipediaPage</td><td><grid:HealthcareWikipediaPage /></td></tr>
      </grid:foreachHealthcareWikipediaPageIterator>
      <grid:foreachHealthcareEstablishedYearIterator>
         <tr><td>establishedYear</td><td><grid:HealthcareEstablishedYear /></td></tr>
      </grid:foreachHealthcareEstablishedYearIterator>
      <grid:foreachHealthcareIdIterator>
         <tr><td>id</td><td><grid:HealthcareId /></td></tr>
      </grid:foreachHealthcareIdIterator>
   </table>

   <h3>Object Properties</h3>
   <table>
      <grid:foreachHealthcareHasRelatedIterator>
         <tr><td>hasRelated</td><td>
            <c:set var="localType"><grid:HealthcareHasRelatedType/></c:set>
            <c:choose>
            <c:when test="${ localType eq 'null'}">
                  <a href="<grid:HealthcareHasRelated/>"><grid:HealthcareHasRelated/></a>
            </c:when>
            <c:otherwise>
                  <a href="../<grid:HealthcareHasRelatedType/>/<grid:HealthcareHasRelatedType/>.jsp?uri=<grid:HealthcareHasRelated/>"><grid:HealthcareHasRelated /></a>
            </c:otherwise>
            </c:choose>
         </td></tr>
      </grid:foreachHealthcareHasRelatedIterator>
      <grid:foreachHealthcareHasAddressIterator>
         <tr><td>hasAddress</td><td>
            <c:set var="localType"><grid:HealthcareHasAddressType/></c:set>
            <c:choose>
            <c:when test="${ localType eq 'null'}">
                  <a href="<grid:HealthcareHasAddress/>"><grid:HealthcareHasAddress/></a>
            </c:when>
            <c:otherwise>
                  <a href="../<grid:HealthcareHasAddressType/>/<grid:HealthcareHasAddressType/>.jsp?uri=<grid:HealthcareHasAddress/>"><grid:HealthcareHasAddress /></a>
            </c:otherwise>
            </c:choose>
         </td></tr>
      </grid:foreachHealthcareHasAddressIterator>
      <grid:foreachHealthcareHasChildIterator>
         <tr><td>hasChild</td><td>
            <c:set var="localType"><grid:HealthcareHasChildType/></c:set>
            <c:choose>
            <c:when test="${ localType eq 'null'}">
                  <a href="<grid:HealthcareHasChild/>"><grid:HealthcareHasChild/></a>
            </c:when>
            <c:otherwise>
                  <a href="../<grid:HealthcareHasChildType/>/<grid:HealthcareHasChildType/>.jsp?uri=<grid:HealthcareHasChild/>"><grid:HealthcareHasChild /></a>
            </c:otherwise>
            </c:choose>
         </td></tr>
      </grid:foreachHealthcareHasChildIterator>
      <grid:foreachHealthcareHasParentIterator>
         <tr><td>hasParent</td><td>
            <c:set var="localType"><grid:HealthcareHasParentType/></c:set>
            <c:choose>
            <c:when test="${ localType eq 'null'}">
                  <a href="<grid:HealthcareHasParent/>"><grid:HealthcareHasParent/></a>
            </c:when>
            <c:otherwise>
                  <a href="../<grid:HealthcareHasParentType/>/<grid:HealthcareHasParentType/>.jsp?uri=<grid:HealthcareHasParent/>"><grid:HealthcareHasParent /></a>
            </c:otherwise>
            </c:choose>
         </td></tr>
      </grid:foreachHealthcareHasParentIterator>
   </table>

   <h3>Inverse Object Properties (these do not have declared inverses)</h3>
   <table>
   </table>
   </grid:Healthcare>

<jsp:include page="/footer.jsp" flush="true" /></div></div></body>
</html>

