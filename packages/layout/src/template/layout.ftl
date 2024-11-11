<!-- layout.ftl -->

<#macro layout header sidebar content>
  <div class="container">
    ${header}
    <div class="content-wrapper">
      <div class="sidebar-wrapper">
        ${sidebar}
      </div>
      <div class="main-content">
        ${content}
      </div>
    </div>
  </div>
</#macro>
