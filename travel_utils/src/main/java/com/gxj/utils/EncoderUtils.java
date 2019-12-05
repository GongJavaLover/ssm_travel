package com.gxj.utils;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

//密码加密工具类
public class EncoderUtils {
    private static BCryptPasswordEncoder encoder =new BCryptPasswordEncoder();
    public static String encoderPassword(String password){
        return encoder.encode(password);
    }

    public static void main(String[] args) {
        String s = EncoderUtils.encoderPassword("123");
        System.out.println(s);
    }
}
