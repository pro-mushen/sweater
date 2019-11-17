<#import "parts/common.ftl" as c>

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
                <td><a href="/users/${user.id}"> edit</a></td>
            </tr>
        </#list>
    </table>

</@c.page>