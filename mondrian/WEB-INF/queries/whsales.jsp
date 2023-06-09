<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %> <%@
taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %> <%@ taglib
prefix="c" uri="http://java.sun.com/jstl/core" %>

<!-- Sales -->
<jp:mondrianQuery
    id="query01"
    jdbcDriver="com.mysql.jdbc.Driver"
    jdbcUrl="jdbc:mysql://localhost/fpdwo?user=root&password="
    catalogUri="/WEB-INF/queries/dwosales.xml"
  >
    SELECT {[Measures].[Order Qty],[Measures].[Line Total]} ON COLUMNS,
    {([Time],[Product],[Customer],[Territory],[Ship Method])} ON ROWS FROM
    [Penjualan]
</jp:mondrianQuery>

<c:set var="title01" scope="session"
  >Query WH Adventure Fakta Penjualan using Mondrian OLAP</c:set
>
