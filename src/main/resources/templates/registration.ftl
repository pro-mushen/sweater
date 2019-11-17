<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as r>

<@c.page>
    add new user
    ${message?ifExists}
    <@r.login "/registration" />
</@c.page>