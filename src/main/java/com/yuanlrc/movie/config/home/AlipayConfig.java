package com.yuanlrc.movie.config.home;


/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2021000116688236";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDPj4eMg33RNPCVkSNW9iIhADl0Q6/mnOqF3nFPMyqemZ+xUNkjd2mEtLCRPLL+REJZF/+S7VFxe/idmkHllNU9Y6+GS4Sk3qtNiYvMziS5EyqCgMNBFu+JnA8P0kn4eT9PcZ4hnEw803z2+2fa8jO6O9JrB5mToUYjVrOK7QXbqx4qm2aa4bY290VWZL16VBFtxNfaNATgl1jhaZ4cE1iTjWLx72Ovh9vIu7AaHvniK4WUwbEUjqoJqCGPsfnNIVsnbaiSU7XhPOcnd4UuzJTmD3ZH110oGkkX9XYhnx9CSVybsXGOrEGuhx4P1dXwoUfLNU+P/jvZVFOUu3zPvC7XAgMBAAECggEBAKkeYqy8Cw0mXI0RmEDoBgDrpOS1riJyYqi3CY4lu6lEtRiOLo62YnStoVyFn7aLuZ/MbQKzeXPFNlp78Qt2TJVbnw4GhEqt39gqpY03vjZKho2VCwMDBCQU0zTp/DmH2W0Kv3TVXE0HaT/4srN0O2+YBKgOpjTi6DotD9e3rtk/SM4ql7sUe5cDNeu7LNAlkLeVCKDzJqkkP8z+EAYDqiKjoHia6DQCwQmYrRLEOF3x248Cs/+UCoY8hs8sj3VqT581rzPeBbWTTIWE3bYBnXQ1y13+tLvLf92EHK5WiJglDwMC5hmDUuAwAwq4n6az7tbsLlsyK+BHrEOVJ/CtQfkCgYEA9YP+C25yHY4e5ilQzYE+6gWLgeADAepjRq9m6cZSqjTF5z93qfK3HvS18/i6DhjmoPwXItYRrWRk7tLHz5iiCVaynhQZhXZ4ambujHVos5fivPodRhb9FRvU7k0FNDXIkckKxXrXuGh/MAZOPVwt11js1snHHyNHJQl8o1CR3PUCgYEA2Gyb5jQ3OV/e0zBQPV9EWjvCiX/ir/5h770wS9U2/nMKTEmF6EseaBOUQWFYmEM9TS4ipdHzHiU3efXiz/6hyL/m4YtGl+7iGtLtmnaXqepLFQQFqSesieKrp4MzhD2v+ZutdchHK7qK3rKIZRSDSmzVBNxcihEvRSCwnGu1vRsCgYEAlto/Ii7+lwJYIfuI1nxvd8NocKh/sJGf5jKn/UQKTuKWJvxsPlQQCEk782gEidzq+Edsv87glbV1/vgsJXYXOb23ikG3XLXqTxZnxI3vg0nz20Gi8wn0/x9WugVBCU9yqYDpyWUtXvV2EMAPGsykrgjJnT/lxVAbyroFhyNePHECgYAv3f2xMbVRJEolTZdBq7NzfaouPTHHGS1SF/b5nsPWDV2mt9A9K3gjLslomH4+1whU7LJPGJt7/GFDwUWUGU5xFziag/JuIjCyHBrfQgGTXDWVBVm3KwY3TQIIP7WCNx6Xx33bAhvzqQOT88rFCH9tU5rdw1tYUiqxUGSfhBcjJwKBgDqJDv98LPhCn5C6v0decEShq1l/M1QoSTvzuJql63SnNS4n7WJM6GTl0oFYS3rw2y8/Z0NkNp9tAQRmYcLogSncadUF7YgzdwZqpKZZXrAlmjJgQpGwkaL3ZmiMR0j0acLkSem9zjHK7W8fhrqfjqe+CXUuOY0tA6bBA7mlEFjF";
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAhsv2LONDkbr8eHgJuBdtR1r62dM9ersAIQ7qfp8z2E+uMDUe56JVGNUQzZU+Iw8Ag9yyhVWfRc9PC5gO3yktNts3DD/6ubVidnEd+ddJIgpOb6U3L5kBR3GAyPsmebnOWQkvVw/DtgJDiMqzTEdV5tubEeXX1JRIl5JlBXEeBJuRrbhBoK21D/laU3FrZfCbMGyHGl4bWx5d5H4tZn1B9zjYI5qmc+RvXebR0kF7FR3NrSeDNoq/Mj5dY2nT084tqlWN0DVGgWO9XfYF2Ac3afe/RJagH3gp5XbASKBhGPy8SdeLnnY1N9kGwV8qa81V/BenxrLxLcS84Tdtaheq8wIDAQAB";
 	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://tufxvma.nat.ipyingshe.com/home/pay/alipay_notify";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://tufxvma.nat.ipyingshe.com/home/account/user-account";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";//https://openapi.alipay.com/gateway.do
    
}