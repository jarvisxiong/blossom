<#import "/spring.ftl" as spring>
<#import "/master/master.ftl" as master>
<#import "/utils/table.ftl" as table>


<@master.default currentUser=currentUser>
<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-sm-4">
        <h2><i class="fa fa-key"></i> <@spring.message "roles.title"/></h2>
        <ol class="breadcrumb">
            <li>
                <a href="/blossom"><@spring.message "menu.home"/></a>
            </li>
            <li>
                <a href="/blossom/administration"><@spring.message "menu.administration"/></a>
            </li>
            <li class="active">
                <strong><@spring.message "roles.title"/></strong>
            </li>
        </ol>
    </div>
</div>

<div class="wrapper wrapper-content animated fadeInUp">
    <#include "./table.ftl">
</div>
</@master.default>