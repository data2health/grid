<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="grid" uri="http://slis.uiowa.edu/GRIDRDF"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Company - http://www.grid.ac/ontology/Company</title>
<style type="text/css" media="all">    @import "<util:applicationRoot/>/resources/style.css";</style></head>
<body>
<div id="content"><jsp:include page="/header.jsp" flush="true" /> <jsp:include page="/menu.jsp" flush="true"><jsp:param name="caller" value="research" /></jsp:include><div id="centerCol">
   <p><a href="altCompany.jsp?uri=${param.uri}">alternate view</a></p>
   <p><a href="../utility/sparqlDump.jsp?type=Company&uri=${param.uri}">RDF dump</a></p>
   <grid:Company subjectURI="${param.uri}">

   <h3>Default Properties</h3>
   <table>
      <tr><td>URI</td><td><a href="<grid:CompanySubjectURI/>"><grid:CompanySubjectURI /></a></td></tr>
      <tr><td>Label</td><td><grid:CompanyLabel /></td></tr>
   </table>

   <h3>Functional Datatype Properties</h3>
   <table>
   </table>

   <h3>Non-Functional Datatype Properties</h3>
   <table>
      <grid:foreachCompanyWikipediaPageIterator>
         <tr><td>wikipediaPage</td><td><grid:CompanyWikipediaPage /></td></tr>
      </grid:foreachCompanyWikipediaPageIterator>
      <grid:foreachCompanyEstablishedYearIterator>
         <tr><td>establishedYear</td><td><grid:CompanyEstablishedYear /></td></tr>
      </grid:foreachCompanyEstablishedYearIterator>
      <grid:foreachCompanyIdIterator>
         <tr><td>id</td><td><grid:CompanyId /></td></tr>
      </grid:foreachCompanyIdIterator>
   </table>

   <h3>Object Properties</h3>
   <table>
      <grid:foreachCompanyHasRelatedIterator>
         <tr><td>hasRelated</td><td>
            <c:set var="localType"><grid:CompanyHasRelatedType/></c:set>
            <c:choose>
            <c:when test="${ localType eq 'null'}">
                  <a href="<grid:CompanyHasRelated/>"><grid:CompanyHasRelated/></a>
            </c:when>
            <c:otherwise>
                  <a href="../<grid:CompanyHasRelatedType/>/<grid:CompanyHasRelatedType/>.jsp?uri=<grid:CompanyHasRelated/>"><grid:CompanyHasRelated /></a>
            </c:otherwise>
            </c:choose>
         </td></tr>
      </grid:foreachCompanyHasRelatedIterator>
      <grid:foreachCompanyHasAddressIterator>
         <tr><td>hasAddress</td><td>
            <c:set var="localType"><grid:CompanyHasAddressType/></c:set>
            <c:choose>
            <c:when test="${ localType eq 'null'}">
                  <a href="<grid:CompanyHasAddress/>"><grid:CompanyHasAddress/></a>
            </c:when>
            <c:otherwise>
                  <a href="../<grid:CompanyHasAddressType/>/<grid:CompanyHasAddressType/>.jsp?uri=<grid:CompanyHasAddress/>"><grid:CompanyHasAddress /></a>
            </c:otherwise>
            </c:choose>
         </td></tr>
      </grid:foreachCompanyHasAddressIterator>
      <grid:foreachCompanyHasChildIterator>
         <tr><td>hasChild</td><td>
            <c:set var="localType"><grid:CompanyHasChildType/></c:set>
            <c:choose>
            <c:when test="${ localType eq 'null'}">
                  <a href="<grid:CompanyHasChild/>"><grid:CompanyHasChild/></a>
            </c:when>
            <c:otherwise>
                  <a href="../<grid:CompanyHasChildType/>/<grid:CompanyHasChildType/>.jsp?uri=<grid:CompanyHasChild/>"><grid:CompanyHasChild /></a>
            </c:otherwise>
            </c:choose>
         </td></tr>
      </grid:foreachCompanyHasChildIterator>
      <grid:foreachCompanyHasParentIterator>
         <tr><td>hasParent</td><td>
            <c:set var="localType"><grid:CompanyHasParentType/></c:set>
            <c:choose>
            <c:when test="${ localType eq 'null'}">
                  <a href="<grid:CompanyHasParent/>"><grid:CompanyHasParent/></a>
            </c:when>
            <c:otherwise>
                  <a href="../<grid:CompanyHasParentType/>/<grid:CompanyHasParentType/>.jsp?uri=<grid:CompanyHasParent/>"><grid:CompanyHasParent /></a>
            </c:otherwise>
            </c:choose>
         </td></tr>
      </grid:foreachCompanyHasParentIterator>
   </table>

   <h3>Inverse Object Properties (these do not have declared inverses)</h3>
   <table>
   </table>
   </grid:Company>

<jsp:include page="/footer.jsp" flush="true" /></div></div></body>
</html>

