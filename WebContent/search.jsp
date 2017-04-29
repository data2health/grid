<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="grid" uri="http://slis.uiowa.edu/GRIDRDF"%>
<%@ taglib prefix="util" uri="http://icts.uiowa.edu/tagUtil"%>
<%@ taglib prefix="lucene" uri="http://icts.uiowa.edu/lucene"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ontology Generator 1.0</title>
<style type="text/css" media="all">    @import "/viaf/resources/style.css";</style></head>
<body>
<div id="content"><jsp:include page="/header.jsp" flush="true" /> <jsp:include page="/menu.jsp" flush="true"><jsp:param name="caller" value="research" /></jsp:include><div id="centerCol">
            <h3>Search</h3>
            <form method='POST' action='search.jsp'>
                <input name="query" value="${param.query}" size=50> <input
                    type=submit name=submitButton value=Search><br>
                Display results as:
                <input type="radio" id="1" name="mode" value="address" <c:if test="${param.mode == 'address'}">checked</c:if>>  Address
                <input type="radio" id="2" name="mode" value="archive" <c:if test="${param.mode == 'archive'}">checked</c:if>>  Archive
                <input type="radio" id="3" name="mode" value="company" <c:if test="${param.mode == 'company'}">checked</c:if>>  Company
                <input type="radio" id="4" name="mode" value="education" <c:if test="${param.mode == 'education'}">checked</c:if>>  Education
                <input type="radio" id="5" name="mode" value="facility" <c:if test="${param.mode == 'facility' or empty param.mode}">checked</c:if>> Facility
                <input type="radio" id="6" name="mode" value="government" <c:if test="${param.mode == 'government'}">checked</c:if>>  Government
                <input type="radio" id="7" name="mode" value="healthcare" <c:if test="${param.mode == 'healthcare'}">checked</c:if>>  Healthcare
                <input type="radio" id="8" name="mode" value="nonprofit" <c:if test="${param.mode == 'nonprofit'}">checked</c:if>>  Nonprofit
                <input type="radio" id="9" name="mode" value="other" <c:if test="${param.mode == 'other'}">checked</c:if>>  Other
                <br>
            </form>
            Boolean operators include &amp; (and), | (or) and ! (not).
            Parentheses can be used to group terms.
            <p><hr><p>
            <c:if test="${not empty param.query}">
                <h3>
                    Search Results:
                    <c:out value="${param.query}" />
                </h3>
                <c:set var="index"><util:propertyValue name="LuceneIndex"/></c:set>
                <c:choose>
                    <c:when test="${param.mode == 'address'}">
                        <lucene:search lucenePath="${index}/address"
                            label="content" queryParserName="boolean"
                            queryString="${param.query}">
                            <p>
                                Result Count:
                                <lucene:count />
                            </p>
                            <ol class="bulletedList">
                                <lucene:searchIterator>
                                    <li><a href="Address/Address.jsp?uri=<lucene:hit label="uri" />&mode=${param.mode}"><lucene:hit label="title" /></a></li>
                                </lucene:searchIterator>
                            </ol>
                        </lucene:search>
                    </c:when>
                    <c:when test="${param.mode == 'archive'}">
                        <lucene:search lucenePath="${index}/archive"
                            label="content" queryParserName="boolean"
                            queryString="${param.query}">
                            <p>
                                Result Count:
                                <lucene:count />
                            </p>
                            <ol class="bulletedList">
                                <lucene:searchIterator>
                                    <li><a href="Archive/Archive.jsp?uri=<lucene:hit label="uri" />&mode=${param.mode}"><lucene:hit label="title" /></a></li>
                                </lucene:searchIterator>
                            </ol>
                        </lucene:search>
                    </c:when>
                     <c:when test="${param.mode == 'company'}">
                        <lucene:search lucenePath="${index}/company"
                            label="content" queryParserName="boolean"
                            queryString="${param.query}">
                            <p>
                                Result Count:
                                <lucene:count />
                            </p>
                            <ol class="bulletedList">
                                <lucene:searchIterator>
                                    <li><a href="Company/Company.jsp?uri=<lucene:hit label="uri" />&mode=${param.mode}"><lucene:hit label="title" /></a></li>
                                </lucene:searchIterator>
                            </ol>
                        </lucene:search>
                    </c:when>
                    <c:when test="${param.mode == 'education'}">
                        <lucene:search lucenePath="${index}/education"
                            label="content" queryParserName="boolean"
                            queryString="${param.query}">
                            <p>
                                Result Count:
                                <lucene:count />
                            </p>
                            <ol class="bulletedList">
                                <lucene:searchIterator>
                                    <li><a href="Education/Education.jsp?uri=<lucene:hit label="uri" />&mode=${param.mode}"><lucene:hit label="title" /></a></li>
                                </lucene:searchIterator>
                            </ol>
                        </lucene:search>
                    </c:when>
                    <c:when test="${param.mode == 'facility'}">
                        <lucene:search lucenePath="${index}/facility"
                            label="content" queryParserName="boolean"
                            queryString="${param.query}">
                            <p>
                                Result Count:
                                <lucene:count />
                            </p>
                            <ol class="bulletedList">
                                <lucene:searchIterator>
                                    <li><a href="Facility/Facility.jsp?uri=<lucene:hit label="uri" />&mode=${param.mode}"><lucene:hit label="title" /></a></li>
                                </lucene:searchIterator>
                            </ol>
                        </lucene:search>
                    </c:when>
                    <c:when test="${param.mode == 'government' or empty param.mode}">
                        <lucene:search lucenePath="${index}/government"
                            label="content" queryParserName="boolean"
                            queryString="${param.query}">
                            <p>
                                Result Count:
                                <lucene:count />
                            </p>
                            <ol class="bulletedList">
                                <lucene:searchIterator>
                                    <li><a href="Government/Government.jsp?uri=<lucene:hit label="uri" />&mode=${param.mode}"><lucene:hit label="title" /></a></li>
                                </lucene:searchIterator>
                            </ol>
                        </lucene:search>
                    </c:when>
                    <c:when test="${param.mode == 'healthcare' or empty param.mode}">
                        <lucene:search lucenePath="${index}/healthcare"
                            label="content" queryParserName="boolean"
                            queryString="${param.query}">
                            <p>
                                Result Count:
                                <lucene:count />
                            </p>
                            <ol class="bulletedList">
                                <lucene:searchIterator>
                                    <li><a href="Healthcare/Healthcare.jsp?uri=<lucene:hit label="uri" />&mode=${param.mode}"><lucene:hit label="title" /></a></li>
                                </lucene:searchIterator>
                            </ol>
                        </lucene:search>
                    </c:when>
                    <c:when test="${param.mode == 'nonprofit' or empty param.mode}">
                        <lucene:search lucenePath="${index}/nonprofit"
                            label="content" queryParserName="boolean"
                            queryString="${param.query}">
                            <p>
                                Result Count:
                                <lucene:count />
                            </p>
                            <ol class="bulletedList">
                                <lucene:searchIterator>
                                    <li><a href="Nonprofit/Nonprofit.jsp?uri=<lucene:hit label="uri" />&mode=${param.mode}"><lucene:hit label="title" /></a></li>
                                </lucene:searchIterator>
                            </ol>
                        </lucene:search>
                    </c:when>
                    <c:when test="${param.mode == 'other' or empty param.mode}">
                        <lucene:search lucenePath="${index}/other"
                            label="content" queryParserName="boolean"
                            queryString="${param.query}">
                            <p>
                                Result Count:
                                <lucene:count />
                            </p>
                            <ol class="bulletedList">
                                <lucene:searchIterator>
                                    <li><a href="Other/Other.jsp?uri=<lucene:hit label="uri" />&mode=${param.mode}"><lucene:hit label="title" /></a></li>
                                </lucene:searchIterator>
                            </ol>
                        </lucene:search>
                    </c:when>
                    <c:otherwise>
                    </c:otherwise>
                </c:choose>
            </c:if>

<jsp:include page="/footer.jsp" flush="true" /></div></div></body>
</html>

