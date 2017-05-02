<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="grid" uri="http://slis.uiowa.edu/GRIDRDF"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Other - http://www.grid.ac/ontology/Other</title>
<style type="text/css" media="all">    @import "<util:applicationRoot/>/resources/style.css";</style></head>
<body>
<div id="content"><jsp:include page="/header.jsp" flush="true" /> <jsp:include page="/menu.jsp" flush="true"><jsp:param name="caller" value="research" /></jsp:include><div id="centerCol">
   <p><a href="altOther.jsp?uri=${param.uri}">alternate view</a></p>
   <p><a href="../utility/sparqlDump.jsp?type=Other&uri=${param.uri}">RDF dump</a></p>
   <grid:Other subjectURI="${param.uri}">

   <h3>Default Properties</h3>
   <table>
      <tr><td>URI</td><td><a href="<grid:OtherSubjectURI/>"><grid:OtherSubjectURI /></a></td></tr>
      <tr><td>Label</td><td><grid:OtherLabel /></td></tr>
   </table>

   <h3>Functional Datatype Properties</h3>
   <table>
   </table>

   <h3>Non-Functional Datatype Properties</h3>
   <table>
      <grid:foreachOtherWikipediaPageIterator>
         <tr><td>wikipediaPage</td><td><grid:OtherWikipediaPage /></td></tr>
      </grid:foreachOtherWikipediaPageIterator>
      <grid:foreachOtherEstablishedYearIterator>
         <tr><td>establishedYear</td><td><grid:OtherEstablishedYear /></td></tr>
      </grid:foreachOtherEstablishedYearIterator>
      <grid:foreachOtherIdIterator>
         <tr><td>id</td><td><grid:OtherId /></td></tr>
      </grid:foreachOtherIdIterator>
   </table>

   <h3>Object Properties</h3>
   <table>
      <grid:foreachOtherHasRelatedIterator>
         <tr><td>hasRelated</td><td>
            <c:set var="localType"><grid:OtherHasRelatedType/></c:set>
            <c:choose>
            <c:when test="${ localType eq 'null'}">
                  <a href="<grid:OtherHasRelated/>"><grid:OtherHasRelated/></a>
            </c:when>
            <c:otherwise>
                  <a href="../<grid:OtherHasRelatedType/>/<grid:OtherHasRelatedType/>.jsp?uri=<grid:OtherHasRelated/>"><grid:OtherHasRelated /></a>
            </c:otherwise>
            </c:choose>
         </td></tr>
      </grid:foreachOtherHasRelatedIterator>
      <grid:foreachOtherHasAddressIterator>
         <tr><td>hasAddress</td><td>
            <c:set var="localType"><grid:OtherHasAddressType/></c:set>
            <c:choose>
            <c:when test="${ localType eq 'null'}">
                  <a href="<grid:OtherHasAddress/>"><grid:OtherHasAddress/></a>
            </c:when>
            <c:otherwise>
                  <a href="../<grid:OtherHasAddressType/>/<grid:OtherHasAddressType/>.jsp?uri=<grid:OtherHasAddress/>"><grid:OtherHasAddress /></a>
            </c:otherwise>
            </c:choose>
         </td></tr>
      </grid:foreachOtherHasAddressIterator>
      <grid:foreachOtherHasChildIterator>
         <tr><td>hasChild</td><td>
            <c:set var="localType"><grid:OtherHasChildType/></c:set>
            <c:choose>
            <c:when test="${ localType eq 'null'}">
                  <a href="<grid:OtherHasChild/>"><grid:OtherHasChild/></a>
            </c:when>
            <c:otherwise>
                  <a href="../<grid:OtherHasChildType/>/<grid:OtherHasChildType/>.jsp?uri=<grid:OtherHasChild/>"><grid:OtherHasChild /></a>
            </c:otherwise>
            </c:choose>
         </td></tr>
      </grid:foreachOtherHasChildIterator>
      <grid:foreachOtherHasParentIterator>
         <tr><td>hasParent</td><td>
            <c:set var="localType"><grid:OtherHasParentType/></c:set>
            <c:choose>
            <c:when test="${ localType eq 'null'}">
                  <a href="<grid:OtherHasParent/>"><grid:OtherHasParent/></a>
            </c:when>
            <c:otherwise>
                  <a href="../<grid:OtherHasParentType/>/<grid:OtherHasParentType/>.jsp?uri=<grid:OtherHasParent/>"><grid:OtherHasParent /></a>
            </c:otherwise>
            </c:choose>
         </td></tr>
      </grid:foreachOtherHasParentIterator>
   </table>

   <h3>Inverse Object Properties (these do not have declared inverses)</h3>
   <table>
   </table>
   </grid:Other>

<jsp:include page="/footer.jsp" flush="true" /></div></div></body>
</html>

