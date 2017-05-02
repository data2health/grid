<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="grid" uri="http://slis.uiowa.edu/GRIDRDF"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Education - http://www.grid.ac/ontology/Education</title>
<style type="text/css" media="all">    @import "<util:applicationRoot/>/resources/style.css";</style></head>
<body>
<div id="content"><jsp:include page="/header.jsp" flush="true" /> <jsp:include page="/menu.jsp" flush="true"><jsp:param name="caller" value="research" /></jsp:include><div id="centerCol">
   <p><a href="altEducation.jsp?uri=${param.uri}">alternate view</a></p>
   <p><a href="../utility/sparqlDump.jsp?type=Education&uri=${param.uri}">RDF dump</a></p>
   <grid:Education subjectURI="${param.uri}">

   <h3>Default Properties</h3>
   <table>
      <tr><td>URI</td><td><a href="<grid:EducationSubjectURI/>"><grid:EducationSubjectURI /></a></td></tr>
      <tr><td>Label</td><td><grid:EducationLabel /></td></tr>
   </table>

   <h3>Functional Datatype Properties</h3>
   <table>
   </table>

   <h3>Non-Functional Datatype Properties</h3>
   <table>
      <grid:foreachEducationWikipediaPageIterator>
         <tr><td>wikipediaPage</td><td><grid:EducationWikipediaPage /></td></tr>
      </grid:foreachEducationWikipediaPageIterator>
      <grid:foreachEducationEstablishedYearIterator>
         <tr><td>establishedYear</td><td><grid:EducationEstablishedYear /></td></tr>
      </grid:foreachEducationEstablishedYearIterator>
      <grid:foreachEducationIdIterator>
         <tr><td>id</td><td><grid:EducationId /></td></tr>
      </grid:foreachEducationIdIterator>
   </table>

   <h3>Object Properties</h3>
   <table>
      <grid:foreachEducationHasRelatedIterator>
         <tr><td>hasRelated</td><td>
            <c:set var="localType"><grid:EducationHasRelatedType/></c:set>
            <c:choose>
            <c:when test="${ localType eq 'null'}">
                  <a href="<grid:EducationHasRelated/>"><grid:EducationHasRelated/></a>
            </c:when>
            <c:otherwise>
                  <a href="../<grid:EducationHasRelatedType/>/<grid:EducationHasRelatedType/>.jsp?uri=<grid:EducationHasRelated/>"><grid:EducationHasRelated /></a>
            </c:otherwise>
            </c:choose>
         </td></tr>
      </grid:foreachEducationHasRelatedIterator>
      <grid:foreachEducationHasAddressIterator>
         <tr><td>hasAddress</td><td>
            <c:set var="localType"><grid:EducationHasAddressType/></c:set>
            <c:choose>
            <c:when test="${ localType eq 'null'}">
                  <a href="<grid:EducationHasAddress/>"><grid:EducationHasAddress/></a>
            </c:when>
            <c:otherwise>
                  <a href="../<grid:EducationHasAddressType/>/<grid:EducationHasAddressType/>.jsp?uri=<grid:EducationHasAddress/>"><grid:EducationHasAddress /></a>
            </c:otherwise>
            </c:choose>
         </td></tr>
      </grid:foreachEducationHasAddressIterator>
      <grid:foreachEducationHasChildIterator>
         <tr><td>hasChild</td><td>
            <c:set var="localType"><grid:EducationHasChildType/></c:set>
            <c:choose>
            <c:when test="${ localType eq 'null'}">
                  <a href="<grid:EducationHasChild/>"><grid:EducationHasChild/></a>
            </c:when>
            <c:otherwise>
                  <a href="../<grid:EducationHasChildType/>/<grid:EducationHasChildType/>.jsp?uri=<grid:EducationHasChild/>"><grid:EducationHasChild /></a>
            </c:otherwise>
            </c:choose>
         </td></tr>
      </grid:foreachEducationHasChildIterator>
      <grid:foreachEducationHasParentIterator>
         <tr><td>hasParent</td><td>
            <c:set var="localType"><grid:EducationHasParentType/></c:set>
            <c:choose>
            <c:when test="${ localType eq 'null'}">
                  <a href="<grid:EducationHasParent/>"><grid:EducationHasParent/></a>
            </c:when>
            <c:otherwise>
                  <a href="../<grid:EducationHasParentType/>/<grid:EducationHasParentType/>.jsp?uri=<grid:EducationHasParent/>"><grid:EducationHasParent /></a>
            </c:otherwise>
            </c:choose>
         </td></tr>
      </grid:foreachEducationHasParentIterator>
   </table>

   <h3>Inverse Object Properties (these do not have declared inverses)</h3>
   <table>
   </table>
   </grid:Education>

<jsp:include page="/footer.jsp" flush="true" /></div></div></body>
</html>

