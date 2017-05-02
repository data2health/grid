<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="grid" uri="http://slis.uiowa.edu/GRIDRDF"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Facility - http://www.grid.ac/ontology/Facility</title>
<style type="text/css" media="all">    @import "<util:applicationRoot/>/resources/style.css";</style></head>
<body>
<div id="content"><jsp:include page="/header.jsp" flush="true" /> <jsp:include page="/menu.jsp" flush="true"><jsp:param name="caller" value="research" /></jsp:include><div id="centerCol">
   <p><a href="altFacility.jsp?uri=${param.uri}">alternate view</a></p>
   <p><a href="../utility/sparqlDump.jsp?type=Facility&uri=${param.uri}">RDF dump</a></p>
   <grid:Facility subjectURI="${param.uri}">

   <h3>Default Properties</h3>
   <table>
      <tr><td>URI</td><td><a href="<grid:FacilitySubjectURI/>"><grid:FacilitySubjectURI /></a></td></tr>
      <tr><td>Label</td><td><grid:FacilityLabel /></td></tr>
   </table>

   <h3>Functional Datatype Properties</h3>
   <table>
   </table>

   <h3>Non-Functional Datatype Properties</h3>
   <table>
      <grid:foreachFacilityWikipediaPageIterator>
         <tr><td>wikipediaPage</td><td><grid:FacilityWikipediaPage /></td></tr>
      </grid:foreachFacilityWikipediaPageIterator>
      <grid:foreachFacilityEstablishedYearIterator>
         <tr><td>establishedYear</td><td><grid:FacilityEstablishedYear /></td></tr>
      </grid:foreachFacilityEstablishedYearIterator>
      <grid:foreachFacilityIdIterator>
         <tr><td>id</td><td><grid:FacilityId /></td></tr>
      </grid:foreachFacilityIdIterator>
   </table>

   <h3>Object Properties</h3>
   <table>
      <grid:foreachFacilityHasRelatedIterator>
         <tr><td>hasRelated</td><td>
            <c:set var="localType"><grid:FacilityHasRelatedType/></c:set>
            <c:choose>
            <c:when test="${ localType eq 'null'}">
                  <a href="<grid:FacilityHasRelated/>"><grid:FacilityHasRelated/></a>
            </c:when>
            <c:otherwise>
                  <a href="../<grid:FacilityHasRelatedType/>/<grid:FacilityHasRelatedType/>.jsp?uri=<grid:FacilityHasRelated/>"><grid:FacilityHasRelated /></a>
            </c:otherwise>
            </c:choose>
         </td></tr>
      </grid:foreachFacilityHasRelatedIterator>
      <grid:foreachFacilityHasAddressIterator>
         <tr><td>hasAddress</td><td>
            <c:set var="localType"><grid:FacilityHasAddressType/></c:set>
            <c:choose>
            <c:when test="${ localType eq 'null'}">
                  <a href="<grid:FacilityHasAddress/>"><grid:FacilityHasAddress/></a>
            </c:when>
            <c:otherwise>
                  <a href="../<grid:FacilityHasAddressType/>/<grid:FacilityHasAddressType/>.jsp?uri=<grid:FacilityHasAddress/>"><grid:FacilityHasAddress /></a>
            </c:otherwise>
            </c:choose>
         </td></tr>
      </grid:foreachFacilityHasAddressIterator>
      <grid:foreachFacilityHasChildIterator>
         <tr><td>hasChild</td><td>
            <c:set var="localType"><grid:FacilityHasChildType/></c:set>
            <c:choose>
            <c:when test="${ localType eq 'null'}">
                  <a href="<grid:FacilityHasChild/>"><grid:FacilityHasChild/></a>
            </c:when>
            <c:otherwise>
                  <a href="../<grid:FacilityHasChildType/>/<grid:FacilityHasChildType/>.jsp?uri=<grid:FacilityHasChild/>"><grid:FacilityHasChild /></a>
            </c:otherwise>
            </c:choose>
         </td></tr>
      </grid:foreachFacilityHasChildIterator>
      <grid:foreachFacilityHasParentIterator>
         <tr><td>hasParent</td><td>
            <c:set var="localType"><grid:FacilityHasParentType/></c:set>
            <c:choose>
            <c:when test="${ localType eq 'null'}">
                  <a href="<grid:FacilityHasParent/>"><grid:FacilityHasParent/></a>
            </c:when>
            <c:otherwise>
                  <a href="../<grid:FacilityHasParentType/>/<grid:FacilityHasParentType/>.jsp?uri=<grid:FacilityHasParent/>"><grid:FacilityHasParent /></a>
            </c:otherwise>
            </c:choose>
         </td></tr>
      </grid:foreachFacilityHasParentIterator>
   </table>

   <h3>Inverse Object Properties (these do not have declared inverses)</h3>
   <table>
   </table>
   </grid:Facility>

<jsp:include page="/footer.jsp" flush="true" /></div></div></body>
</html>

