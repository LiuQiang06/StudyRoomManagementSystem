package com.room.service.impl;

import com.room.controller.LoginModel;

import com.room.mapper.*;

import com.room.service.*;

import com.room.util.*;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Service
public class StudyGatherServiceImpl implements StudyGatherService {
    @Autowired
    AdhocStudyGatherMapper adhocStudyGatherMapper;
    SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd");
    SimpleDateFormat sdf3 = new SimpleDateFormat("yyyyMMddHHmmss");

    /**
      学习时间统计
    page:当前页数
    login:当前登录账号
    ororderDate1:预约日期(最小值)
    ororderDate2:预约日期(最大值)
    */
    @Override
    public Map<String, Object> studyGather(Integer page, LoginModel login,
        String ororderDate1, String ororderDate2) {
        Map<String, Object> rs = new HashMap<String, Object>();
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("orderDate1", ororderDate1);
        params.put("orderDate2", ororderDate2);
        params.put("orderStatus", 2);
        params.put("userId", login.getId());

        List<Map<String, Object>> list = adhocStudyGatherMapper.studyGather(params); //学习时间统计

        for (Map<String, Object> adhocMap : list) {
        }

        List<String> orderDateXList = DateCommonUtils.getEchartTimeList(ororderDate1,
                ororderDate2, "yyyy-MM-dd", "yyyy-MM-dd", 3);
        rs.put("orderDateXList", orderDateXList);

        List<Map<String, Object>> rsList1 = new ArrayList<Map<String, Object>>();

        for (int i = 0; i < list.size(); i++) {
            Map<String, Object> map = list.get(i);
            rsList1.add(map);
        }

        rs.put("rsList1", rsList1);

        return rs;
    }
}

