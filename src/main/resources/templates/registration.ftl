<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as r>

<@c.page>
    <div class="mb-1">Add new user</div>
    ${message?ifExists}
    <@r.login "/registration" true/>
</@c.page>