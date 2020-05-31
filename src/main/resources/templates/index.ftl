<!DOCTYPE html>
<html lang="en">
<head>
    <#import "spring.ftl" as spring>
    <#assign arg = ["i18n","国际化实例"]>
    <title><@spring.messageArgs "title" ,arg /></title>
    <meta charset="UTF-8">
<#--    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />-->
    <link rel="stylesheet" href="${request.contextPath}/static/css/bootstrap.min.css">

</head>
<body>
<br/>
<nav class="navbar navbar-expand-lg navbar-dark bg-danger">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation" text>
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link"><@spring.message code='text.home' /></a>
            </li>
        </ul>
        <ul class="navbar-nav navbar-right">
            <li class="dropdown">
                <button  class="btn btn-danger dropdown-toggle" type="button"
                        id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <@spring.message code='text.language' />
                </button>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="javascript:void(0);">English</a><br/>
                    <a class="dropdown-item" href="javascript:void(0);">中文</a><br/>
                </div>
            </li>
        </ul>
    </div>
</nav>
<#--<a class="changeLang" href="javascript:void(0);">english</a><br/>-->
<#--<a class="changeLang" href="javascript:void(0);">中文</a><br/>-->


<div class="container" style="margin-top:50px">
    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <h1 class="display-4"><@spring.message code="text.home.message"/></h1>
            <p><@spring.message code='text.description' /></p>
                <img  src="<@spring.message code='text.image' />">
        </div>
    </div>

</div>

</body>
<script src="${request.contextPath}/static/js/jquery.js"></script>
<script src="${request.contextPath}/static/js/bootstrap.min.js"></script>
<script src="${request.contextPath}/static/js/jquery-3.3.1.min.js"></script>
<script src="${request.contextPath}/static/js/popper.min.js"></script>
<script>
    $(".dropdown-item").on("click", function () {
        switch ($(this).text()) {
            case "中文": {
                window.location.href = "index?_lang=zh_CN";
                break;
            }
            case "English": {
                window.location.href = "index?_lang=en_US";
                break;
            }
        }
    })
</script>
</html>