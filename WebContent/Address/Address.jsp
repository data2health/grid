<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="grid" uri="http://slis.uiowa.edu/GRIDRDF"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Address - http://www.grid.ac/ontology/Address</title>
<style type="text/css" media="all">    @import "<util:applicationRoot/>/resources/style.css";</style></head>
<body>
<div id="content"><jsp:include page="/header.jsp" flush="true" /> <jsp:include page="/menu.jsp" flush="true"><jsp:param name="caller" value="research" /></jsp:include><div id="centerCol">
   <p><a href="altAddress.jsp?uri=${param.uri}">alternate view</a></p>
   <p><a href="../utility/sparqlDump.jsp?type=Address&uri=${param.uri}">RDF dump</a></p>
   <grid:Address subjectURI="${param.uri}">

   <h3>Default Properties</h3>
   <table>
      <tr><td>URI</td><td><a href="<grid:AddressSubjectURI/>"><grid:AddressSubjectURI /></a></td></tr>
      <tr><td>Label</td><td><grid:AddressLabel /></td></tr>
   </table>

   <h3>Functional Datatype Properties</h3>
   <table>
   </table>

   <h3>Non-Functional Datatype Properties</h3>
   <table>
      <grid:foreachAddressCountryNameIterator>
         <tr><td>countryName</td><td><grid:AddressCountryName /></td></tr>
      </grid:foreachAddressCountryNameIterator>
      <grid:foreachAddressCountryCodeIterator>
         <tr><td>countryCode</td><td><grid:AddressCountryCode /></td></tr>
      </grid:foreachAddressCountryCodeIterator>
      <grid:foreachAddressCityNameIterator>
         <tr><td>cityName</td><td><grid:AddressCityName /></td></tr>
      </grid:foreachAddressCityNameIterator>
   </table>

   <h3>Object Properties</h3>
   <table>
      <grid:foreachAddressHasGeonamesCityIterator>
         <tr><td>hasGeonamesCity</td><td>
            <c:set var="localType"><grid:AddressHasGeonamesCityType/></c:set>
            <c:choose>
            <c:when test="${ localType eq 'null'}">
                  <a href="<grid:AddressHasGeonamesCity/>"><grid:AddressHasGeonamesCity/></a>
            </c:when>
            <c:otherwise>
                  <a href="../<grid:AddressHasGeonamesCityType/>/<grid:AddressHasGeonamesCityType/>.jsp?uri=<grid:AddressHasGeonamesCity/>"><grid:AddressHasGeonamesCity /></a>
            </c:otherwise>
            </c:choose>
         </td></tr>
      </grid:foreachAddressHasGeonamesCityIterator>
   </table>

   <h3>Inverse Object Properties (these do not have declared inverses)</h3>
   <table>
      <grid:foreachAddressHasAddressInverseIterator>
         <tr><td>hasAddress</td><td><a href="../<grid:AddressHasAddressInverseType/>/<grid:AddressHasAddressInverseType/>.jsp?uri=<grid:AddressHasAddressInverse/>"><grid:AddressHasAddressInverse/></a></td></tr>
      </grid:foreachAddressHasAddressInverseIterator>
   </table>
   </grid:Address>

<jsp:include page="/footer.jsp" flush="true" /></div></div></body>
</html>

