<!DOCTYPE html>
<html lang="zh">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=990, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta charset="utf-8" />
    <meta name="renderer" content="webkit">
    <title>猿来入此电影票网_电影在线选座购票平台</title>
    <meta name="keywords" content="猿来入此电影票,猿来入此电影票网,猿来入此电影院,猿来入此影票,猿来入此电影,电影票，电影"/>
    <meta name="description" content="猿来入此电影票网是猿来入此最大的电影票在线选座平台，同时猿来入此电影票网还提供电影排期，影院信息查询、猿来入此本土电影行业资讯等服务。看电影，来猿来入此电影票选座"/>
    <#include "../common/head-css.ftl"/>
</head>
<body>
<#include "../common/header.ftl"/>   
<div id="body" class="main">
<div class="wrapper-register fn-clear">
    <div class="box-register">
        <h2>免费注册猿来入此电影票系统</h2>
        <div class="img-code-wrap">
            <div class="img-code"><input name="imgCode" type="text" maxlength="4" placeholder="输入右侧验证码" /></div>
            <span class="img-code-show" id="register-img-code-show"><img src="/cpacha/generate_cpacha?vl=4&fs=25&w=128&h=45&method=home_register_img_code" width="100%" /></span>
        </div>
        <p class="fn-clear box-tel">
            <input name="tel" class="tel fn-left" type="text" value="手机号" maxlength="11" />
            <span class="btn fn-right sned-check">获取验证码</span>
            <span class="error">请输入正确的手机号</span>
        </p>
        <p class="ipt">
            <input name="checkCode" class="check-code" type="text" maxlength="6" value="验证码" />
            <span class="error">验证码格式错误</span>
        </p>
        <p class="ipt">
            <input name="password" class="pwd bgpwd2" type="password" />
            <span class="error">请输入6-16位密码仅含字母与数字</span>
        </p>
        <p class="fn-clear"><span class="btn do-register">立即注册</span></p>
        <p class="box-des fn-clear">
            <label class="cor999"><input type="checkbox" checked="checked" class="fn-left agreement" /><span class="fn-left">阅读并接受江西电影票<a href="/help/serviceterms.html" target="_blank">《用户协议》</a></span></label>
            <span class="error">请接受江西电影票《用户协议》</span>
        </p>
    </div>
    <div class="loginmenthod-register">
        <p>已有账户，点此登录</p>
        <p class="fn-clear box-btn"><span class="btn do-login">立即登录</span></p>
        
    </div>
</div>
</div>
<#include "../common/footer-js.ftl"/> 
<#include "../common/footer.ftl"/> 
<#include "../common/login-dialog.ftl"/> 
<script type="text/javascript">
$("input.tel").focus(function () {
            if ($(this).val() == "手机号") {
                $(this).val("");
            }
        });
        $("input.tel").blur(function () {
            if ($(this).val() == "") {
                $(this).val("手机号");
            }
        });
        $("input.check-code").focus(function () {
            if ($(this).val() == "验证码") {
                $(this).val("");
            }
        });
        $("input.check-code").blur(function () {
            if ($(this).val() == "") {
                $(this).val("验证码");
            }
        });
        $("input.pwd").focus(function () {
            $(this).removeClass("bgpwd2");
        });
        $("input.pwd").blur(function () {
            if ($(this).val() == "") {
                $(this).addClass("bgpwd2");
            }
        });
        var $domTel = $(".wrapper-register .tel");
        var $domCheckCode = $(".wrapper-register .check-code");
        var $domPwd = $(".wrapper-register .pwd");
        var $domAgreement = $(".wrapper-register .agreement");
        var regTel = /^((\(\d{2,4}\))|(\d{3,4}\-))?1[3|4|5|7|8]\d{9}$/;
        var regCheckCode = /^\d{6}$/;
        var regPwd = /^([a-zA-Z0-9]){6,16}$/;
        var cursec = 60;
        var submiting = false;
        $(".wrapper-register .sned-check").click(function () {
            if (submiting) return false;
            var $this = $(this);
            var tel = $.trim($this.siblings(".tel").val());
            var imgCode = $.trim($("input[name=imgCode]").val());
            if (!imgCode) {
                alert("请输入图形验证码！");
                return;
            }
            if (!regTel.test(tel)) {
                $this.siblings(".error").show();
                return;
            } else {
                $this.siblings(".error").hide();
                $.ajax({
                    url: '/sms_code/send_sms_code',
                    data: { mobile: tel, valilCode: imgCode,img_code_method:'home_register_img_code',sms_code_method:'home_register_sms_code' },
                    type: 'post',
                    dataType: 'json',
                    beforeSend: function () {
                        submiting = true;
                        $this.text("正在发送");
                        $this.addClass("disable");
                    },
                    success: function (data) {
                        if (data.code == 0) {
                            submiting = true;
                            if (cursec < 60) {
                                return;
                            }
                            var timer = setInterval(function () {
                                if (cursec == 60) {
                                    $this.addClass("disable");
                                }
                                $this.text(cursec + "秒后重发");
                                if (cursec == 0) {
                                    window.clearInterval(timer);
                                    submiting = false;
                                    cursec = 60;
                                    $this.text("获取验证码");
                                    $this.removeClass("disable");
                                } else {
                                    cursec--;
                                }
                            }, 1000);
                        } else {
                            $(".img-code-show img").attr("src", "/cpacha/generate_cpacha?vl=4&fs=25&w=128&h=45&method=home_register_img_code&v=" + Math.random());
                            submiting = false;
                            alert(data.msg);
                            $this.removeClass("disable");
                            $this.text("获取验证码");
                        }
                    },
                    error: function () {
                        submiting = false;
                        $this.removeClass("disable");
                        alert("获取验证码失败,请检查您的手机是否可以访问网络");
                    }
                });
            }
        });
        var regflag = false;
        $(".wrapper-register .do-register").click(function () {
            if (regflag) return;
            var $this = $(this);
            var tel = $.trim($domTel.val());
            var checkCode = $.trim($domCheckCode.val());
            var pwd = $.trim($domPwd.val());
            $(".wrapper-register .error").hide();
            var flag = false;
            if (!regTel.test(tel)) {
                $domTel.parent().find(".error").show();
                flag = true;
            }
            if (!regCheckCode.test(checkCode)) {
                $domCheckCode.parent().find(".error").show();
                flag = true;
            }
            if (!regCheckCode.test(checkCode)) {
                $domCheckCode.parent().find(".error").show();
                flag = true;
            }
            if (!regPwd.test(pwd)) {
                $domPwd.parent().find(".error").show();
                flag = true;
            }
            if (!$domAgreement.is(':checked')) {
                $domAgreement.parent().parent().find(".error").show();
                flag = true;
            }
            if (flag) return;
            $.ajax({
                url: 'register',
                data: { mobile: tel, password: pwd, checkCode: checkCode },
                type: 'post',
                dataType: 'json',
                beforeSend: function () {
                    regflag = true;
                    $this.addClass("disable");
                },
                success: function (data) {
                    if (data.code == 0) {
                        regflag = true;
                        $this.removeClass("disable");
                        window.location = "/home/index/index";

                    } else {
                        regflag = false;
                        alert(data.msg);
                        $this.removeClass("disable");
                    }
                },
                error: function () {
                    regflag = false;
                    $this.removeClass("disable");
                    alert("注册失败,请检查您的手机是否可以访问网络");
                }
            });

        });
        $(".wrapper-register .do-login").click(function () {
            linkLogin ="/";
            if ("False".toLowerCase() != "true") {
                $(".boxLogin").overlay({ api: true }).load();
            }
        });
        $("#register-img-code-show img").on('click', function () {
        	$(this).attr("src", "/cpacha/generate_cpacha?vl=4&fs=25&w=128&h=45&method=home_register_img_code&v=" + Math.random());
    	});

</script>
</body>
</html>