<#--

    Solo - A small and beautiful blogging system written in Java.
    Copyright (c) 2010-present, b3log.org

    Solo is licensed under Mulan PSL v2.
    You can use this software according to the terms and conditions of the Mulan PSL v2.
    You may obtain a copy of Mulan PSL v2 at:
            http://license.coscl.org.cn/MulanPSL2
    THIS SOFTWARE IS PROVIDED ON AN "AS IS" BASIS, WITHOUT WARRANTIES OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO NON-INFRINGEMENT, MERCHANTABILITY OR FIT FOR A PARTICULAR PURPOSE.
    See the Mulan PSL v2 for more details.

-->
<!--[if lt IE 9]>
    <script type="text/javascript">
       (function () {
           var element = ['time', 'article'];
           for (var i = 0; i < element.length; i++) {
               document.createElement(element[i]);
           }
       })();
   </script>
<![endif]-->
<div class="header">
    <div class="container fn-clear">
        <div class="left">
            <h1 class="title">
                <a href="${servePath}">
                    ${blogTitle}
                </a>
            </h1>
            <span class="sub-title">${blogSubtitle}</span>
            <span class="ico-list"></span>
        </div>
        <ul class="left">
            <#list pageNavigations as page>
                <li>
                    <a href="${page.pagePermalink}" target="${page.pageOpenTarget}"><#if page.pageIcon != ''><img
                            class="page-icon" src="${page.pageIcon}" alt="${page.pageTitle}"></#if>${page.pageTitle}</a>
                </li>
            </#list>
            <li>
                <a href="${servePath}/tags.html">${allTagsLabel}</a>
            </li>
            <li>
                <a rel="alternate" href="${servePath}/rss.xml">RSS <img src="${staticServePath}/images/feed.png"
                                                                        alt="RSS"/></a>
            </li>
        </ul>
        <#if !staticSite>
            <form class="right" action="${servePath}/search">
                <input placeholder="${searchLabel}" id="search" type="text" name="keyword"/>
                <input type="submit" value="" class="none"/>
            </form>
        </#if>
    </div>
</div>
