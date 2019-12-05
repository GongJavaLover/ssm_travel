package com.gxj.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

//时间工具类
public class DateUtils {
    public static String dateToString(Date date,String pattern){
        SimpleDateFormat sdf=new SimpleDateFormat(pattern);
        String format = sdf.format(date);
        return format;
    }

    public static Date stringToDate(String str,String pattern){
        SimpleDateFormat sdf=new SimpleDateFormat(pattern);
        Date date=null;
        try {
            date = sdf.parse(str);
            return date;
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return date;
    }
}
