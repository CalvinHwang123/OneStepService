package oss.util;

import java.text.SimpleDateFormat;
import java.util.Date;
/*
 * 时间工具类
 * 获取当前系统时间
 */
public class DateUtil {
	//获取当前系统时间，转换成 2018-06-12 23：59：59
		public static String getCurrentDate() {
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
			String currentDate=df.format(new Date());
			return currentDate;
		}
}