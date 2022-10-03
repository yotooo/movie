<div class="header">
    <div class="top-nav">
        <div class="container fn-clear">
              <span class="tip">
              	欢迎来到猿来入此电影票
              	<#if ylrc_account??>
              	<span class="user-name">${ylrc_account.nickname!ylrc_account.mobile}</span>
              	<a class="loginout" href="/home/index/logout">退出</a>
              	<#else>
              	<a rel="#verlayLogin" href="javascript:void(0)" class="boxLogin blue">登录</a>
              	<a href="/home/index/register">注册</a>
              	</#if>
              </span>
            <ul>
                <li><a href="/home/account/user-center" title="个人中心" data-flag="<#if ylrc_account??>0<#else>1</#if>">个人中心</a></li>
                <li><a href="/home/account/user-order-list" title="我的订单" data-flag="<#if ylrc_account??>0<#else>1</#if>">我的订单</a></li>
                <li><a href="/home/help/use-help" title="帮助中心" target="_blank">帮助中心</a></li>
                <li>&nbsp;联系客服：2934702723</li>
            </ul>
        </div>
    </div>
    <#if ylrc_auth??>
        <#if ylrc_auth != 1>
    <div class="top-nav" id="show-copyright">
        <div class="container fn-clear" align="center">
            <p style="color:red;font-size:16px;">
                本系统由<a href="https://www.yuanlrc.com/product/details.html?pid=413">【猿来入此】</a>发布，请认准官网获取，官网获取的正版源码提供免费更新升级！
                <a href="javascript:alert('请登录后台首页填写订单号进行验证，验证通过后刷新此页面，版权信息会自动消失！')" id="order-auth-btn">点此去版权</a>
                <a href="https://www.yuanlrc.com/">点此进入官网</a>
            </p>
        </div>
    </div>
        </#if>
    </#if>

    <div class="main-nav">
        <div class="container fn-clear">
            <div class="logo"><a href="/home/index/index"><img src="/home/images/logo.png" alt="猿来入此电影票" title="猿来入此电影票" width="165"/></a></div>
            <div class="location" data-citycode="360100">
                <span class="lc"><#if ylrc_area??>${ylrc_area.name}<#else>请选择</#if></span>
                <ul class="other-city">
                    <#list provinceList as province>
                    	<li style="width:315px;"><a><font size="3px"><b>${province.name}</b></font></a></li>
                    	<#list cityList as city>
                    	<#if province.id == city.provinceId>
                    	<li><a onclick="changecity('${city.id}')" href="javascript:void(0)">${city.name}</a></li>
                    	</#if>
                    	</#list>
                    </#list>
                </ul>
            </div>
            <ul class="nav-list fn-clear">
                <li data-index="index"><a href="/home/index/index">首页</a></li>
                <li data-index="movie"><a href="/home/movie/list">电影</a></li>
                <li data-index="cinema"><a href="/home/cinema/list">影院</a></li>
                <li data-index="news"><a href="/home/news/list">资讯</a></li>
                
            </ul>
            <div class="box-code-tg">
                <p class="code">
                    <a href="javascript:void(0);">关注公众号</a>
                    <span class="tag"></span>
                </p>
            </div>
        </div>
    </div>
</div>