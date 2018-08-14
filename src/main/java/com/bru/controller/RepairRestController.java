package com.bru.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.bru.dao.RepairDao;
import com.bru.model.RepairBean;

@RestController
public class RepairRestController {

	@Autowired
	RepairDao repairDao;

	@RequestMapping(value = "/all")
	public List<RepairBean> all() throws SQLException {
		List<RepairBean> list = new ArrayList<>();
		list = repairDao.findAll();
		return list;
	}

	@RequestMapping(value = "/status11")
	public List<RepairBean> status1() throws SQLException {
		List<RepairBean> list = new ArrayList<>();
		list = repairDao.status1();
		return list;
	}

	@RequestMapping(value = "/status22")
	public List<RepairBean> status2() throws SQLException {
		List<RepairBean> list = new ArrayList<>();
		list = repairDao.status2();
		return list;
	}

	@RequestMapping(value = "/status33")
	public List<RepairBean> status3() throws SQLException {
		List<RepairBean> list = new ArrayList<>();
		list = repairDao.status3();
		return list;
	}

	@RequestMapping(value = "/status44")
	public List<RepairBean> status4() throws SQLException {
		List<RepairBean> list = new ArrayList<>();
		list = repairDao.status4();
		return list;
	}

	@RequestMapping(value = "/status55")
	public List<RepairBean> status5() throws SQLException {
		List<RepairBean> list = new ArrayList<>();
		list = repairDao.status5();
		return list;
	}

	@RequestMapping(value = "/status66")
	public List<RepairBean> status6() throws SQLException {
		List<RepairBean> list = new ArrayList<>();
		list = repairDao.status6();
		return list;
	}
}
