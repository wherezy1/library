package com.where.library.member.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/**
 * Created with IntelliJ IDEA.
 *
 * @Author: where
 * @Date: 2022/11/25/20:59
 * @Description: 配置线程池
 * 两种引入配置文件方式
 * ①： @EnableConfigurationProperties(ThreadPoolProperties.class)
 * ② ； BeanFactory自动注入
 */
//@EnableConfigurationProperties(ThreadPoolProperties.class)
@Configuration
public class MyThreadPoolConfig {
    // 1、核心线程数
    // 2、最大线程数
    // 3、最长等待时间
    // 4、单位
    // 5、阻塞队列
    // 6、线程池管理工厂
    // 7、拒绝策略
    @Bean
    public ThreadPoolExecutor threadPoolExecutor(ThreadPoolProperties pool) {
        return new ThreadPoolExecutor(
                pool.getCore(),
                pool.getMaxSize(),
                pool.getKeepAliveTime(),
                TimeUnit.SECONDS,
                new LinkedBlockingQueue<>(10000),
                Executors.defaultThreadFactory(),
                new ThreadPoolExecutor.AbortPolicy()
        );
    }
}
