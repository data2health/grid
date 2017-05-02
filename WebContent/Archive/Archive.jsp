<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="grid" uri="http://slis.uiowa.edu/GRIDRDF"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Archive - http://www.grid.ac/ontology/Archive</title>
<style type="text/css" media="all">    @import "<util:applicationRoot/>/resources/style.css";</style></head>
<body>
<div id="content"><jsp:include page="/header.jsp" flush="true" /> <jsp:include page="/menu.jsp" flush="true"><jsp:param name="caller" value="research" /></jsp:include><div id="centerCol">
   <p><a href="altArchive.jsp?uri=${param.uri}">alternate view</a></p>
   <p><a href="../utility/sparqlDump.jsp?type=Archive&uri=${param.uri}">RDF dump</a></p>
   <grid:Archive subjectURI="${param.uri}">

   <h3>Default Properties</h3>
   <table>
      <tr><td>URI</td><td><a href="<grid:ArchiveSubjectURI/>"><grid:ArchiveSubjectURI /></a></td></tr>
      <tr><td>Label</td><td><grid:ArchiveLabel /></td></tr>
   </table>

   <h3>Functional Datatype Properties</h3>
   <table>
   </table>

   <h3>Non-Functional Datatype Properties</h3>
   <table>
      <grid:foreachArchiveWikipediaPageIterator>
         <tr><td>wikipediaPage</td><td><grid:ArchiveWikipediaPage /></td></tr>
      </grid:foreachArchiveWikipediaPageIterator>
      <grid:foreachArchiveEstablishedYearIterator>
         <tr><td>establishedYear</td><td><grid:ArchiveEstablishedYear /></td></tr>
      </grid:foreachArchiveEstablishedYearIterator>
      <grid:foreachArchiveIdIterator>
         <tr><td>id</td><td><grid:ArchiveId /></td></tr>
      </grid:foreachArchiveIdIterator>
   </table>

   <h3>Object Properties</h3>
   <table>
      <grid:foreachArchiveHasRelatedIterator>
         <tr><td>hasRelated</td><td>
            <c:set var="localType"><grid:ArchiveHasRelatedType/></c:set>
            <c:choose>
            <c:when test="${ localType eq 'null'}">
                  <a href="<grid:ArchiveHasRelated/>"><grid:ArchiveHasRelated/></a>
            </c:when>
            <c:otherwise>
                  <a href="../<grid:ArchiveHasRelatedType/>/<grid:ArchiveHasRelatedType/>.jsp?uri=<grid:ArchiveHasRelated/>"><grid:ArchiveHasRelated /></a>
            </c:otherwise>
            </c:choose>
         </td></tr>
      </grid:foreachArchiveHasRelatedIterator>
      <grid:foreachArchiveHasAddressIterator>
         <tr><td>hasAddress</td><td>
            <c:set var="localType"><grid:ArchiveHasAddressType/></c:set>
            <c:choose>
            <c:when test="${ localType eq 'null'}">
                  <a href="<grid:ArchiveHasAddress/>"><grid:ArchiveHasAddress/></a>
            </c:when>
            <c:otherwise>
                  <a href="../<grid:ArchiveHasAddressType/>/<grid:ArchiveHasAddressType/>.jsp?uri=<grid:ArchiveHasAddress/>"><grid:ArchiveHasAddress /></a>
            </c:otherwise>
            </c:choose>
         </td></tr>
      </grid:foreachArchiveHasAddressIterator>
      <grid:foreachArchiveHasChildIterator>
         <tr><td>hasChild</td><td>
            <c:set var="localType"><grid:ArchiveHasChildType/></c:set>
            <c:choose>
            <c:when test="${ localType eq 'null'}">
                  <a href="<grid:ArchiveHasChild/>"><grid:ArchiveHasChild/></a>
            </c:when>
            <c:otherwise>
                  <a href="../<grid:ArchiveHasChildType/>/<grid:ArchiveHasChildType/>.jsp?uri=<grid:ArchiveHasChild/>"><grid:ArchiveHasChild /></a>
            </c:otherwise>
            </c:choose>
         </td></tr>
      </grid:foreachArchiveHasChildIterator>
      <grid:foreachArchiveHasParentIterator>
         <tr><td>hasParent</td><td>
            <c:set var="localType"><grid:ArchiveHasParentType/></c:set>
            <c:choose>
            <c:when test="${ localType eq 'null'}">
                  <a href="<grid:ArchiveHasParent/>"><grid:ArchiveHasParent/></a>
            </c:when>
            <c:otherwise>
                  <a href="../<grid:ArchiveHasParentType/>/<grid:ArchiveHasParentType/>.jsp?uri=<grid:ArchiveHasParent/>"><grid:ArchiveHasParent /></a>
            </c:otherwise>
            </c:choose>
         </td></tr>
      </grid:foreachArchiveHasParentIterator>
   </table>

   <h3>Inverse Object Properties (these do not have declared inverses)</h3>
   <table>
   </table>
   </grid:Archive>

<jsp:include page="/footer.jsp" flush="true" /></div></div></body>
</html>

