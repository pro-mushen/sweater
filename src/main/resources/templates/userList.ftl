<#import "parts/common.ftl" as c>
<#include "parts/security.ftl">

<@c.page>
    List user
    <table>
        <thead>
        <tr>
            <th>name</th>
            <th>role</th>
            <th></th>
        </tr>
        </thead>
        <#list users as user>
            <tr>
                <td>${user.username}</td>
                <td><#list user.roles as role>${role}<#sep>, </#list></td>
                <td><a href="/user/${user.id}"> edit</a></td>
            </tr>
        </#list>
    </table>

</@c.page>