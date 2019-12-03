<#import "parts/common.ftl" as c>
<#include "parts/security.ftl">

<@c.page>
    <div class="form-row">
        <div class="form-group col-md-6">
            <form method="get" action="/main" class="for-inline">
                <input type="text" name="tag" placeholder="Search by tag" value="${filter?ifExists}"/>
                <button type="submit" class="btn btn-primary ml-2">Search</button>
            </form>
        </div>
    </div>

    <#include "parts/messageEdit.ftl"/>
    <#include "parts/messageList.ftl"/>

</@c.page>