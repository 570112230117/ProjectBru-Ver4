package com.bru.controller;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bru.dao.LoginDao;
import com.bru.dao.RepairDao;
import com.bru.model.RepairBean;


@Controller
public class RepairController {

	@Autowired
	LoginDao loginDao;

	@Autowired
	RepairDao repairDao;

	// tableuser
	@RequestMapping(path = "/", method = RequestMethod.GET)
	public String goHome(HttpServletRequest request, Model model) {
		RepairBean bean = new RepairBean();
		try {
			bean = repairDao.count();
			request.setAttribute("beanRe", bean);
			bean = repairDao.count1();
			request.setAttribute("bean1", bean);
			bean = repairDao.count2();
			request.setAttribute("bean2", bean);
			bean = repairDao.count3();
			request.setAttribute("bean3", bean);
			bean = repairDao.count4();
			request.setAttribute("bean4", bean);
			bean = repairDao.count5();
			request.setAttribute("bean5", bean);
			bean = repairDao.count6();
			request.setAttribute("bean6", bean);
		} catch (Exception e) {
			// TODO: handle exception
		}
		request.removeAttribute("repairBean");
		model.addAttribute("messessError", "");
		return "tableuser";
	}

	@RequestMapping(path = "/repair", method = RequestMethod.GET)
	public String repair(HttpServletRequest request, Model model) {
		RepairBean bean = new RepairBean();
		try {
			bean = repairDao.count();
			request.setAttribute("beanRe", bean);
			bean = repairDao.count1();
			request.setAttribute("bean1", bean);
			bean = repairDao.count2();
			request.setAttribute("bean2", bean);
			bean = repairDao.count3();
			request.setAttribute("bean3", bean);
			bean = repairDao.count4();
			request.setAttribute("bean4", bean);
			bean = repairDao.count5();
			request.setAttribute("bean5", bean);
			bean = repairDao.count6();
			request.setAttribute("bean6", bean);
		} catch (Exception e) {
			// TODO: handle exception
		}

		return "repair";
	}

	@RequestMapping(path = "/map", method = RequestMethod.GET)
	public String map(Model model) {
		return "map";
	}

	@RequestMapping(path = "/map1", method = RequestMethod.GET)
	public String map1(Model model) {
		return "testmap";
	}
	
	@RequestMapping(path = "/warranty", method = RequestMethod.GET)
	public String warranty(HttpServletRequest request, Model model) throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.count();
		request.setAttribute("beanRe", bean);
		bean = repairDao.count1();
		request.setAttribute("bean1", bean);
		bean = repairDao.count2();
		request.setAttribute("bean2", bean);
		bean = repairDao.count3();
		request.setAttribute("bean3", bean);
		bean = repairDao.count4();
		request.setAttribute("bean4", bean);
		bean = repairDao.count5();
		request.setAttribute("bean5", bean);
		bean = repairDao.count6();
		request.setAttribute("bean6", bean);
		return "warranty";
	}

	@RequestMapping(path = "/tableadmin", method = RequestMethod.GET)
	public String tableadmin(HttpServletRequest request, Model model) throws SQLException {
		RepairBean beann = new RepairBean();
		beann = repairDao.count();
		request.setAttribute("beanRe", beann);
		return "tableadmin";
	}

	// insert
	@RequestMapping(value = { "/insertRepair" }, method = RequestMethod.POST, produces = "application/json")
	public Map<String, String> insertRepair(@RequestBody RepairBean repairBean) {
		try {
			repairDao.insert(repairBean);
		} catch (Exception e) {
			e.printStackTrace();
		}
		Map<String, String> repair = new HashMap<String, String>();
		return repair;
	}


	@RequestMapping(path = "/status1", method = RequestMethod.GET)
	public String status1(HttpServletRequest request, Model model) throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.count();
		request.setAttribute("beanRe", bean);
		bean = repairDao.count1();
		request.setAttribute("bean1", bean);
		bean = repairDao.count2();
		request.setAttribute("bean2", bean);
		bean = repairDao.count3();
		request.setAttribute("bean3", bean);
		bean = repairDao.count4();
		request.setAttribute("bean4", bean);
		bean = repairDao.count5();
		request.setAttribute("bean5", bean);
		bean = repairDao.count6();
		request.setAttribute("bean6", bean);
		return "status1";
	}

	@RequestMapping(path = "/status2", method = RequestMethod.GET)
	public String status2(HttpServletRequest request, Model model) throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.count();
		request.setAttribute("beanRe", bean);
		bean = repairDao.count1();
		request.setAttribute("bean1", bean);
		bean = repairDao.count2();
		request.setAttribute("bean2", bean);
		bean = repairDao.count3();
		request.setAttribute("bean3", bean);
		bean = repairDao.count4();
		request.setAttribute("bean4", bean);
		bean = repairDao.count5();
		request.setAttribute("bean5", bean);
		bean = repairDao.count6();
		request.setAttribute("bean6", bean);
		return "status2";
	}

	@RequestMapping(path = "/status3", method = RequestMethod.GET)
	public String status3(HttpServletRequest request, Model model) throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.count();
		request.setAttribute("beanRe", bean);
		bean = repairDao.count1();
		request.setAttribute("bean1", bean);
		bean = repairDao.count2();
		request.setAttribute("bean2", bean);
		bean = repairDao.count3();
		request.setAttribute("bean3", bean);
		bean = repairDao.count4();
		request.setAttribute("bean4", bean);
		bean = repairDao.count5();
		request.setAttribute("bean5", bean);
		bean = repairDao.count6();
		request.setAttribute("bean6", bean);
		return "status3";
	}

	@RequestMapping(path = "/status4", method = RequestMethod.GET)
	public String status4(HttpServletRequest request, Model model) throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.count();
		request.setAttribute("beanRe", bean);
		bean = repairDao.count1();
		request.setAttribute("bean1", bean);
		bean = repairDao.count2();
		request.setAttribute("bean2", bean);
		bean = repairDao.count3();
		request.setAttribute("bean3", bean);
		bean = repairDao.count4();
		request.setAttribute("bean4", bean);
		bean = repairDao.count5();
		request.setAttribute("bean5", bean);
		bean = repairDao.count6();
		request.setAttribute("bean6", bean);
		return "status4";
	}

	@RequestMapping(path = "/status5", method = RequestMethod.GET)
	public String status5(HttpServletRequest request, Model model) throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.count();
		request.setAttribute("beanRe", bean);
		bean = repairDao.count1();
		request.setAttribute("bean1", bean);
		bean = repairDao.count2();
		request.setAttribute("bean2", bean);
		bean = repairDao.count3();
		request.setAttribute("bean3", bean);
		bean = repairDao.count4();
		request.setAttribute("bean4", bean);
		bean = repairDao.count5();
		request.setAttribute("bean5", bean);
		bean = repairDao.count6();
		request.setAttribute("bean6", bean);
		return "status5";
	}

	@RequestMapping(path = "/status6", method = RequestMethod.GET)
	public String status6(HttpServletRequest request, Model model) throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.count();
		request.setAttribute("beanRe", bean);
		bean = repairDao.count1();
		request.setAttribute("bean1", bean);
		bean = repairDao.count2();
		request.setAttribute("bean2", bean);
		bean = repairDao.count3();
		request.setAttribute("bean3", bean);
		bean = repairDao.count4();
		request.setAttribute("bean4", bean);
		bean = repairDao.count5();
		request.setAttribute("bean5", bean);
		bean = repairDao.count6();
		request.setAttribute("bean6", bean);
		return "status6";
	}

	// list
	@RequestMapping(path = "/list/{values}", method = RequestMethod.GET)
	public String list(@PathVariable("values") String values, HttpServletRequest request, Model model) {
		return null;
	}
}
