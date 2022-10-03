<!DOCTYPE html>
<html lang="zh">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=990, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta charset="utf-8" />
    <meta name="renderer" content="webkit">
    <title>帮助中心|猿来入此电影票网_电影在线选座购票平台</title>
    <meta name="keywords" content="猿来入此电影票,猿来入此电影票网,猿来入此电影院,猿来入此影票,猿来入此电影,电影票，电影"/>
    <meta name="description" content="猿来入此电影票网是猿来入此最大的电影票在线选座平台，同时猿来入此电影票网还提供电影排期，影院信息查询、猿来入此本土电影行业资讯等服务。看电影，来猿来入此电影票选座"/>
    <#include "../common/head-css.ftl"/>
</head>
<body>
	<#include "../common/header.ftl"/>   
<div id="body" class="main">
<div class="wrapper-helpcenter fn-clear">
    <div class="menu-helpcenter">
    <#include "../common/help-menu.ftl"/>
</div>
    <div class="box-con">
         <h1>联系我们</h1>
        <div class="con">
            <p>客服电话：0791-87871177</p>
            <p>影院合作：13818181666（猿来入此）</p>
            <p>渠道商务、团购福利业务合作：13755650601（吴）</p>
            <p>简历投递：yuanlrc@yuanlrc.com</p>
            <p>通讯地址：上海市浦东新区京山新街93号电子商务基地B座3楼</p>
            <div class="map-us"><img src="/home/images/map-us.png" width="715" alt="地图" /></div>
        </div>
    </div>
</div>
</div>
<#include "../common/footer-js.ftl"/> 
<#include "../common/footer.ftl"/> 
<#include "../common/login-dialog.ftl"/>
<script type="text/javascript">
    $(function () {
        $(".menu-helpcenter li a").each(function () {
            if ($(this).attr("data-i") == "contactus") {
                $(this).parent().addClass("act");
            }
        });
    });
</script>
<script type="text/javascript">
    $(function () {
        var url = window.location.href;
        var strs = url.split("#");
        $(".wrapper-helpcenter .help-aq li a:[name=" + strs[1] + "]").parent().parent().siblings().removeClass("act pb10").end().addClass("act pb10");
        $(".info-help .help-nav li a").click(function () {
            var name = $(this).attr("href").split("#")[1];
            $(".wrapper-helpcenter .help-aq li a:[name=" + name + "]").parent().parent().siblings().removeClass("act pb10").end().addClass("act pb10");
        });
        $(".wrapper-helpcenter .help-aq li").click(function () {
            if (!$(this).hasClass("act")) {
                $(this).siblings().removeClass("act pb10").end().addClass("act pb10");
            }
        });
    });
</script>
</body>
</html>