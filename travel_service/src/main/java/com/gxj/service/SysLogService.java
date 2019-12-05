package com.gxj.service;

import com.gxj.domain.SysLog;

import java.util.List;

public interface SysLogService {
    List<SysLog> findAll() throws Exception;

    void save(SysLog sysLog) throws Exception;
}
