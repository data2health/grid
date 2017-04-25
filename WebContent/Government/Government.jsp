<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="grid" uri="http://slis.uiowa.edu/GRIDRDF"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Government - http://www.grid.ac/ontology/Government</title>
<style type="text/css" media="all">    @import "<util:applicationRoot/>/resources/style.css";</style></head>
<body>
<div id="content"><jsp:include page="/header.jsp" flush="true" /> <jsp:include page="/menu.jsp" flush="true"><jsp:param name="caller" value="research" /></jsp:include><div id="centerCol">
   <p><a href="altGovernment.jsp?uri=${param.uri}">alternate view</a></p>
   <p><a href="../utility/sparqlDump.jsp?type=Government&uri=${param.uri}">RDF dump</a></p>
   <grid:Government subjectURI="${param.uri}">

   <h3>Default Properties</h3>
   <table>
      <tr><td>URI</td><td><a href="<grid:GovernmentSubjectURI/>"><grid:GovernmentSubjectURI /></a></td></tr>
      <tr><td>Label</td><td><grid:GovernmentLabel /></td></tr>
   </table>

   <h3>Functional Datatype Properties</h3>
   <table>
   </table>

   <h3>Non-Functional Datatype Properties</h3>
   <table>
      <grid:foreachGovernmentWikipediaPageIterator>
         <tr><td>wikipediaPage</td><td><grid:GovernmentWikipediaPage /></td></tr>
      </grid:foreachGovernmentWikipediaPageIterator>
      <grid:foreachGovernmentEstablishedYearIterator>
         <tr><td>establishedYear</td><td><grid:GovernmentEstablishedYear /></td></tr>
      </grid:foreachGovernmentEstablishedYearIterator>
      <grid:foreachGovernmentIdIterator>
         <tr><td>id</td><td><grid:GovernmentId /></td></tr>
      </grid:foreachGovernmentIdIterator>
   </table>

   <h3>Object Properties</h3>
   <table>
      <grid:foreachGovernmentHasRelatedIterator>
         <tr><td>hasRelated</td><td><a href="../<grid:GovernmentHasRelatedType/>/<grid:GovernmentHasRelatedType/>.jsp?uri=<grid:GovernmentHasRelated/>"><grid:GovernmentHasRelated /></a></td></tr>
      </grid:foreachGovernmentHasRelatedIterator>
      <grid:foreachGovernmentHasAddressIterator>
         <tr><td>hasAddress</td><td><a href="../<grid:GovernmentHasAddressType/>/<grid:GovernmentHasAddressType/>.jsp?uri=<grid:GovernmentHasAddress/>"><grid:GovernmentHasAddress /></a></td></tr>
      </grid:foreachGovernmentHasAddressIterator>
      <grid:foreachGovernmentHasChildIterator>
         <tr><td>hasChild</td><td><a href="../<grid:GovernmentHasChildType/>/<grid:GovernmentHasChildType/>.jsp?uri=<grid:GovernmentHasChild/>"><grid:GovernmentHasChild /></a></td></tr>
      </grid:foreachGovernmentHasChildIterator>
      <grid:foreachGovernmentHasParentIterator>
         <tr><td>hasParent</td><td><a href="../<grid:GovernmentHasParentType/>/<grid:GovernmentHasParentType/>.jsp?uri=<grid:GovernmentHasParent/>"><grid:GovernmentHasParent /></a></td></tr>
      </grid:foreachGovernmentHasParentIterator>
   </table>

   <h3>Inverse Object Properties (these do not have declared inverses)</h3>
   <table>
   </table>
   </grid:Government>

<jsp:include page="/footer.jsp" flush="true" /></div></div></body>
</html>

