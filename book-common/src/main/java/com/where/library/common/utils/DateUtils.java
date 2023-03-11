package com.where.library.common.utils;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/11/28/16:46
 * @Description:
 */
public class DateUtils {
    public static String FORMAT = "yyyy-MM-dd HH:mm:ss";
    public static SimpleDateFormat sdf = new SimpleDateFormat(FORMAT);

    public static String getCurrentDate() {
        //获取当前时间
        Date date = new Date();
        //定义转化为字符串的日期格式
        //将时间转化为类似 2020-02-13 16:01:30 格式的字符串
        String d = sdf.format(date);
        return d;
    }

    /**
     * 由该工具 / 格式生成的字符串
     */
    public static Date parseToDate(String time) {
        Date parse = null;
        try {
            parse = sdf.parse(time);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return parse;
    }

    public static Long parseToMillisecond(String time) {
        Date date = parseToDate(time);
        long time1 = date.getTime();
        return time1;
    }

    public static void main(String args[]) {
        long l = System.currentTimeMillis();
        String date1 = getCurrentDate();
        // 2022-12-11 10:21:45
        System.out.println(date1.toString());
        // 2022-12-11 10:21:45.616
        Timestamp timestamp = new Timestamp(Long.valueOf(l));
        com.sun.jmx.snmp.Timestamp timestamp1 = new com.sun.jmx.snmp.Timestamp(Long.valueOf(l));
        System.out.println(timestamp);
        System.out.println(timestamp1);
    }
}
