package com.alipay.config;

import java.io.FileWriter;
import java.io.IOException;

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
	public static String app_id = "2016091300503910";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDGLhcXeMgk1OizXFiZBOkjHpCz50GJHxtlNTDqUdLN4tDhj24w5LjgF/lfHMHCqg4pmBuH7x8m4FdtEtYjM/xMpd8oBGpPGCAuy0ImhwjqHAxqywHveYoRETN9MvK0B6p0uxMdCIooJZ+94ywMppYgqA8Bkm6GTgTpPz1vkRYNiUibJekmm5asSp6g+xekRT+37N+o918Dm7vPbIPX8NP54cY97t6xhBI6q0bYUnPDbiZU9OhhqP+r7MLyGWO6RTRDzu86t2T3xA6wG2K7zVERYDStld67wvAT3K4Ce+eRtKyLppHmjKIx/i2rHo5MAoNRJ7KzLrfRzE2xK7u0n4RnAgMBAAECggEAWg8b40i5+zLdxJRUlsUKhTEgpQCUYZHHS0jOv80LNRC7x6T8eC+YbA24/yX8T1AkO3aqHC3oRCxyzlhfA4ReRR6juHW5MdRO27T2jLeUr36rjeRPLtpWicb9VQnQDUvmhEF3QBxfXDssyofvvpf9ZT26BAbdPx85UB2y935BPUi2Dv78LFrkF11lMFK/r+cg+Q6RoCi89DhjRiNC23cxTye5Md60XL+Ovs7P+VBQEVQhXCR+TM0LROQct3JqAoxaMQcQG+HV/0CImR8/YmDLLAIpor/dYDySufYWoa/pP221nwi5AZSEc+kUcFzg8mW6qhf1e20z7qqmccn2SXfr4QKBgQD4HzBCPq4gDuA084Kgf1vYjFsWERE+9mFYx8oeMKWDTIKMwr8RRuAvTdGs+ioimJDYuzxF7uHtkUy56tWuPCZRiWZt3v3HFqr8Yrz0YnXLF3jQXYz/C5WZjbdzMrRFx2VWIOhZAY7Wo4O5jqs1NKb0c97xeV7HZSiBOPCO5SO1GQKBgQDMePWSuozBvW5LGKBVJptPr1RswKPOwvdPQUXuoT4JXQ+oqagOO8s1PEMDXxvxxj2JJlmG4QzVZqs6+UcrTGHblO/ctM/3gcQYQOOcJo5v6ZhDEs1w/ZvEvBXskxskBbLZxYL/MmjCzWdQ+e+Lxz0wRxw7cjZE3t96dkSPnY61fwKBgE5PKZ/+wF4F0+ViZXvaNlamFallQZgpkpe+lp/oopRJ9XoPjNYbFG5ZlS+O1PWOSUjd7yvzNQMRtLGI2F/hRAa/4sASfO30zYpSb2iCGsM6aTr6C6IDOff4rkmBWzwarnT8ddiBkV9UxCIwUQC92WOVnmt/7tXnq1z9Z47x6s8hAoGAPhiyA6iR3LipyTamYpXB7xZBHnH2jXFaaABbu5fOXkub2M4FUqVIFlfBxkFZHDjnMUKrR7ILErgGYneX7Ida5LO7kJx82B7Zrb/vH9n5wfUAH8aTC7CJYNr6EYmvYWY1pbs9CEGH3TlCGi59WEbex02hPlB2OL4ywl8ufSsNTwMCgYEAi/0jc3aOiuRuzFhAZe5PmRgCbs790o6gzbqdc811a6SZYeHAmRPCae/UBeDLgnPxuo4T7ls3JSX7Js8I3m4M/njILEGzeNK0aL7NJOqxf+YnH3+JuiZzC1AqCpi/2ArR0mlONDqiV5pWeJxLKEThEVnKlaia95HOCOakdW/sThs=";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAuvvpww6IpK+50c1gSs8mHg2RCSzStOB1fosNk/zzdhiZ48q7KHtwqbwo6YY/XbsKZvDzyb0+MQlfVRlql4zkLX5PwKQJbafm7Nbm4eei0q+yjv6F0ckwRMCz7SWtmlFi/57GP1OGXlx5o1sAmgP8D3YwRyRSErT1LK7JmesIk3uULRJOdMa5Vn0TfEo5mSN7KwaoIopchSMGtYMSLKV2AkDJjmfG1pRJt2Up4HY2JHuNmzrekm6xuOMo9gRe2op/kuMW0dSqOtJ9zF/nH12PWCv8G4CXPD6CxJyY7Yj79EsF4uuxta3VfdYG2sFqK9hcowLTPEiZhzoEYUcdhTtfZQIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://localhost:8080/alipay.trade.page.pay-JAVA-UTF-8/notify_url.jsp";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://localhost:8080/OneStepService/foregroundindex.jsp";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
//	public static String gatewayUrl = "https://openapi.alipay.com/gateway.do";
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// 支付宝网关
	public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

