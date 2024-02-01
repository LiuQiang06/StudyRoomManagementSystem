package com.room;

import org.mybatis.spring.boot.autoconfigure.MybatisAutoConfiguration;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.scheduling.annotation.EnableScheduling;

//请求路径:http://localhost:8080/study_room_sys/commonapi/sys_login
@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class // 关闭mybatis的自动配置
        , MybatisAutoConfiguration.class})
@EnableScheduling
public class StudyRoomApplication extends SpringBootServletInitializer {
    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
        return builder.sources(StudyRoomApplication.class);
    }

    public static void main(String[] args) {
        SpringApplication.run(StudyRoomApplication.class, args);
    }
}
