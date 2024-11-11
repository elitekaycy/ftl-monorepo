<#macro sidebarItem currentPage itemPage itemIcon>
  <li
    <#if currentPage == itemPage>
      class="active"
    </#if>
    data-page="${itemPage}">
    <img src="${itemIcon}" alt="${itemPage}" />
    <span>${itemPage}</span>
  </li>
</#macro>
