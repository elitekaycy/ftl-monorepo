<#import "header/src/template/header.ftl" as headerMacro>
<#import "sidebar/src/template/sidebar.ftl" as sidebarMacro>
<#import "layout/src/template/layout.ftl" as layoutMacro>
<#import "content/src/template/content.ftl" as contentMacro>


<html>
  <head>
    <title>main</title>
    <link rel="stylesheet" type="text/css" href="${contextPath}/public/css/styles.css">
  </head>
  <body class="body">
   <layoutMacro.layout
      <@headerMacro.header />
      <@sidebarMacro.sidebar currentPage="Home"/>

  </body>
</html>
