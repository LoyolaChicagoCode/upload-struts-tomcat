<?xml version="1.0"?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page" 
  xmlns:c="/tld/jstl-c" 
  xmlns:fmt="/tld/jstl-fmt" 
  xmlns:html="/tld/struts-html" 
  version="1.2">
  <jsp:directive.page contentType="text/html"/>
  <html:xhtml/>
  <html:html locale="true">
    <head>
      <title>File Upload Results</title>
    </head>
    <body>
      <ul>
        <li><b>The Text</b>:              <c:out value="${text}"/> </li>
        <li><b>The Query Parameter</b>:   <c:out value="${queryValue}"/> </li>
        <li><b>The File name</b>:         <c:out value="${fileName}"/> </li>
        <li><b>The File content type</b>: <c:out value="${contentType}"/> </li>
        <li><b>The File size</b>:         <c:out value="${size}"/> </li>
        <li><b>The File data</b>: </li>
      </ul>
      <hr/>
        <pre><c:out value="${data}"/></pre>
      <hr/>
    </body>
  </html:html> 
</jsp:root>