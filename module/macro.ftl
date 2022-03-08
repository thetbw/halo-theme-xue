<#macro layout title>
    <!DOCTYPE html>
    <html lang="zh">
    <head>
        <meta charset="UTF-8">
        <meta name="keywords" content="${meta_keywords!}"/>
        <meta name="description" content="${meta_description!}"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <@global.head />
        <title>${title}</title>
        <#include "styles.ftl">
        <script src="${theme_base!}/source/js/jquery.min.js"></script>
    </head>
    <body class="<#if settings.default_night_mode!false>night</#if>">
    <#include "header.ftl">
    <#nested >
    <#include "footer.ftl">

    </body>
    <#include "plugins.ftl"/>
    <script src="${theme_base!}/source/js/main.js?ver=${theme.version!}"></script>

    <#include "script.ftl">

    </html>
</#macro>

<#macro imageUrl
<#--图片链接-->
url,
<#--  width  -->
width='',
<#-- height   -->
height='',
<#-- 图片质量 -->
quality=50
>https://images.weserv.nl/?url=${url}&w=${width}&h=${height}&q=${quality}&af&il&&output=webp</#macro>