<#import "parts/common.ftl" as c>
<#include "parts/security.ftl">

<@c.page>
    <h5>Hello, <#if user??>${name}<#else>quest</#if></h5>
    <div>Best project</div>
</@c.page>