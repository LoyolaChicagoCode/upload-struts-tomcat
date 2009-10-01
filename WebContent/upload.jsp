<?xml version="1.0"?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page" 
  xmlns:c="/tld/jstl-c" 
  xmlns:fmt="/tld/jstl-fmt" 
  xmlns:html="/tld/struts-html" 
  version="1.2">
  <jsp:directive.page contentType="text/html" />
  <html:xhtml/>
  <html:html locale="true">
    <head>
      <title>File Upload Example</title>
      <html:base/>
    </head>
    <body>
      <font color="red">
        <html:errors/>
      </font>
      <p>
          Note that the maximum allowed size of an uploaded file for this application is two megabytes.
          See the /WEB-INF/struts-config.xml file for this application to change it.
      </p>
      <br/>

      <!--
      	The most important part is to declare your form's enctype to be "multipart/form-data",
      	and to have a form:file element that maps to your ActionForm's FormFile property
      -->
      <html:form action="upload.do?queryParam=Successful" enctype="multipart/form-data">

      	Please enter some text, just to demonstrate the handling of text elements as opposed to file elements:<br />
      	<html:text property="theText" /><br /><br />
  
      	Please select the file that you would like to upload:<br />
      	<html:file property="theFile" /><br /><br />

        If you would rather write this file to another file, please check here:
        <html:checkbox property="writeFile" /><br /><br />

        If you checked the box to write to a file, please specify the file path here:<br />
        <html:text property="filePath" /><br /><br />

      	<html:submit />
      </html:form>
    </body>
  </html:html>
</jsp:root>