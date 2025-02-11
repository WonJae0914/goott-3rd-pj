package com.goott.pj3.admin.service;

import java.util.List;

import com.goott.pj3.admin.dto.AdminUserDTO;
import com.goott.pj3.admin.dto.ChartDTO;
import com.goott.pj3.common.util.paging.Criteria;
import com.goott.pj3.common.util.paging.PagingDTO;


public interface AdminUserService {

    List<AdminUserDTO> adminUserList(Criteria cri);

    PagingDTO paging(Criteria cri);

    AdminUserDTO adminUserDetail(String user_id);

    void adminUserUpdate(AdminUserDTO dto);

    void adminUserDelete(AdminUserDTO dto);

    void adminUserDeleteReturn(AdminUserDTO dto);

    List<ChartDTO> getUserMonthByAuth(String auth);
}
