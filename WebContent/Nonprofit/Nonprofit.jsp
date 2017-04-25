<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="grid" uri="http://slis.uiowa.edu/GRIDRDF"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Nonprofit - http://www.grid.ac/ontology/Nonprofit</title>
<style type="text/css" media="all">    @import "<util:applicationRoot/>/resources/style.css";</style></head>
<body>
<div id="content"><jsp:include page="/header.jsp" flush="true" /> <jsp:include page="/menu.jsp" flush="true"><jsp:param name="caller" value="research" /></jsp:include><div id="centerCol">
   <p><a href="altNonprofit.jsp?uri=${param.uri}">alternate view</a></p>
   <p><a href="../utility/sparqlDump.jsp?type=Nonprofit&uri=${param.uri}">RDF dump</a></p>
   <grid:Nonprofit subjectURI="${param.uri}">

   <h3>Default Properties</h3>
   <table>
      <tr><td>URI</td><td><a href="<grid:NonprofitSubjectURI/>"><grid:NonprofitSubjectURI /></a></td></tr>
      <tr><td>Label</td><td><grid:NonprofitLabel /></td></tr>
   </table>

   <h3>Functional Datatype Properties</h3>
   <table>
   </table>

   <h3>Non-Functional Datatype Properties</h3>
   <table>
      <grid:foreachNonprofitWikipediaPageIterator>
         <tr><td>wikipediaPage</td><td><grid:NonprofitWikipediaPage /></td></tr>
      </grid:foreachNonprofitWikipediaPageIterator>
      <grid:foreachNonprofitEstablishedYearIterator>
         <tr><td>establishedYear</td><td><grid:NonprofitEstablishedYear /></td></tr>
      </grid:foreachNonprofitEstablishedYearIterator>
      <grid:foreachNonprofitIdIterator>
         <tr><td>id</td><td><grid:NonprofitId /></td></tr>
      </grid:foreachNonprofitIdIterator>
   </table>

   <h3>Object Properties</h3>
   <table>
      <grid:foreachNonprofitHasRelatedIterator>
         <tr><td>hasRelated</td><td><a href="../<grid:NonprofitHasRelatedType/>/<grid:NonprofitHasRelatedType/>.jsp?uri=<grid:NonprofitHasRelated/>"><grid:NonprofitHasRelated /></a></td></tr>
      </grid:foreachNonprofitHasRelatedIterator>
      <grid:foreachNonprofitHasAddressIterator>
         <tr><td>hasAddress</td><td><a href="../<grid:NonprofitHasAddressType/>/<grid:NonprofitHasAddressType/>.jsp?uri=<grid:NonprofitHasAddress/>"><grid:NonprofitHasAddress /></a></td></tr>
      </grid:foreachNonprofitHasAddressIterator>
      <grid:foreachNonprofitHasChildIterator>
         <tr><td>hasChild</td><td><a href="../<grid:NonprofitHasChildType/>/<grid:NonprofitHasChildType/>.jsp?uri=<grid:NonprofitHasChild/>"><grid:NonprofitHasChild /></a></td></tr>
      </grid:foreachNonprofitHasChildIterator>
      <grid:foreachNonprofitHasParentIterator>
         <tr><td>hasParent</td><td><a href="../<grid:NonprofitHasParentType/>/<grid:NonprofitHasParentType/>.jsp?uri=<grid:NonprofitHasParent/>"><grid:NonprofitHasParent /></a></td></tr>
      </grid:foreachNonprofitHasParentIterator>
   </table>

   <h3>Inverse Object Properties (these do not have declared inverses)</h3>
   <table>
   </table>
   </grid:Nonprofit>

<jsp:include page="/footer.jsp" flush="true" /></div></div></body>
</html>

