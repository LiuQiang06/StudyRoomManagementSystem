package com.room.task;

import org.springframework.beans.factory.annotation.Autowired;
import com.room.service.*;
import org.springframework.stereotype.Component;
import org.springframework.scheduling.annotation.Scheduled;

@Component
public class TaskServiceExcute {
    @Autowired
    TaskService taskService;

    //定时更新桌子状态，定时更新订单状态,定时规则：每分钟执行一次
//@Scheduled(cron="0 0/1 * * * ?")
    @Scheduled(cron = "* * * * * *")
    public void taskService() {
        taskService.taskService();
    }
}
