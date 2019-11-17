<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>


<@c.page>
<div>
    <@l.logout />
    <span><a href="/users">users</a> </span>
</div>
<div>
    <form method="post" enctype="multipart/form-data">
        <input type="text" name="text" placeholder="Ввудите сообщение"/>
        <input type="text" name="tag" placeholder="Тэг"/>
        <input type="file" name="file">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit">Добавить</button>
    </form>
</div>

    <div>
        <form method="get" action="/main">
            <input type="text" name="tag" placeholder="Тэг" value="${filter?ifExists}"/>
            <button type="submit">Фильтровать</button>
        </form>
</div>

    <div>Список сообщений</div>
    <#list messages as message>
        <div>
            <b>${message.id}</b>
            <span>${message.text}</span>
            <i>${message.tag}</i>
            <strong>${message.authorName}</strong>
            <div>
                <#if message.filename??>
                    <img src="/img/${message.filename}">
                </#if>
            </div>

        </div>
    <#else>
        No message
    </#list>



</@c.page>