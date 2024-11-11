<#import "sidebarItem.ftl" as sidebarItemMacro>

<#macro sidebar currentPage>

 <div class="sidebar-div">
  <div class="sidebar-logo">
     <img src="${contextPath}/public/l1.png" alt="Logo" />
  </div>

  <ul class="sidebar">
    <#assign sidebarItems = [
      {"name": "Home", "icon": "${contextPath}/public/h1.png"},
      {"name": "Settings", "icon": "${contextPath}/public/s1.png"},
      {"name": "About", "icon": "${contextPath}/public/l1.png"}
    ]>

    <#list sidebarItems as item>
      <li data-page="${item.name}">
         <@sidebarItemMacro.sidebarItem currentPage=currentPage itemPage=item.name itemIcon=item.icon />
      </li>
    </#list>
  </ul>
  <div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
      window.currentPage = "${currentPage}";
      $(document).ready(function() {
        function setActivePage(page) {
            $('.sidebar li').each(function() {
                const itemPage = $(this).data('page');
                if (itemPage === page) {
                    $(this).addClass('active');
                } else {
                    $(this).removeClass('active');
                }
            });
        }

        setActivePage("${currentPage}");

        $('.sidebar li').on('click', function() {
            const page = $(this).data('page');
            setActivePage(page);
            window.currentPage = page;
        });
    });
    </script>

</#macro>
