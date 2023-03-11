package com.where.library.member.config;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/11/25/21:03
 * @Description:
 */
@ConfigurationProperties(prefix = "library.thread")
@Component
@Data
public class ThreadPoolProperties {
    // 1、核心线程
    public Integer core;
    // 2、最大线程数
    public Integer maxSize;
    // 3、最长等待时间
    public Integer keepAliveTime;

}
