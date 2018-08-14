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
import com.bru.dao.RepairmenDao;
import com.bru.model.LoginBean;
import com.bru.model.RepairBean;
import com.bru.model.TestAjaxBean;

@Controller
public class RepairmenController {

	@Autowired
	RepairmenDao repairmenDao;

	@Autowired
	LoginDao loginDao;

	@Autowired
	RepairDao repairDao;

	@RequestMapping(path = "/repairmen1", method = RequestMethod.GET)
	public String repairmen(Model model) {
		return "insertrepairmen";
	}

	@RequestMapping(path = "/addrepairmen", method = RequestMethod.GET)
	public String add(HttpServletRequest request, Model model) {
		request.removeAttribute("repairmenBean");
		return "addrepairmen";
	}

	@RequestMapping(path = "/add", method = RequestMethod.GET)
	public String addrepairmen(Model model) {
		return "tablerepairmen";
	}
	
	@RequestMapping(path = "/addparts", method = RequestMethod.GET)
	public String addpart(HttpServletRequest request, Model model) throws SQLException {
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

		return "addparts";
	}
	// insert
	@RequestMapping(value = { "/insertrepairmen" }, method = RequestMethod.POST, produces = "application/json")
	public Map<String, String> insertrepairmen(@RequestBody LoginBean repairmenBean) throws SQLException {
		repairmenDao.insert(repairmenBean);
		Map<String, String> tabelrepairmen = new HashMap<String, String>();
		return tabelrepairmen;
	}

	@RequestMapping(path = "/updaterepairmen/{values}", method = RequestMethod.GET)
	public String updaterepairmen(@PathVariable("values") String values, HttpServletRequest request, Model model)
			throws SQLException {
		LoginBean bean = new LoginBean();
		bean = loginDao.findById(Integer.parseInt(values));
		request.setAttribute("repairmenBean", bean);
		return "addrepairmen";
	}

	@RequestMapping(path = "/updaterepairmen1", method = RequestMethod.POST)
	public String updaterepairmen1(LoginBean repairmenbean) throws SQLException {
		loginDao.update(repairmenbean);
		return "tablerepairmen";
	}

	// update
	@RequestMapping(path = "/updateRepair", method = RequestMethod.GET)
	public String updateRepair(RepairBean repairBean) throws SQLException {
		repairDao.update(repairBean);
		return "update";
	}

	// update
	@RequestMapping(path = "/update/{values}", method = RequestMethod.GET)
	public String update(@PathVariable("values") String values, HttpServletRequest request, Model model)
			throws SQLException {
		RepairBean bean = new RepairBean();
		bean = repairDao.findById(Integer.parseInt(values));
		request.setAttribute("repairBean", bean);
		return "update";
	}

	@RequestMapping(path = "/warrantyrepairmen", method = RequestMethod.GET)
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
		return "warrantyrepairmen";
	}

	// repairmen
	@RequestMapping(path = "/repairmen/{values}", method = RequestMethod.GET)
	public String repairmen(@PathVariable("values") String values, HttpServletRequest request, Model model)
			throws SQLException {

		TestAjaxBean repairBean1 = new TestAjaxBean();
		repairBean1 = loginDao.Id();
		repairDao.repairid(repairBean1, Integer.parseInt(values));

		RepairBean bean = new RepairBean();
		bean = repairDao.findById(Integer.parseInt(values));
		request.setAttribute("repairBean", bean);

		RepairBean beann = new RepairBean();
		beann = repairDao.count();
		request.setAttribute("beanRe", beann);
		beann = repairDao.count();
		request.setAttribute("beanRe", beann);
		beann = repairDao.count1();
		request.setAttribute("bean1", beann);
		beann = repairDao.count2();
		request.setAttribute("bean2", beann);
		beann = repairDao.count3();
		request.setAttribute("bean3", beann);
		beann = repairDao.count4();
		request.setAttribute("bean4", beann);
		beann = repairDao.count5();
		request.setAttribute("bean5", beann);
		beann = repairDao.count6();
		request.setAttribute("bean6", beann);

		return "repairmen";
	}

	// updaterepairmen
	@RequestMapping(path = "/updaterepairmen", method = RequestMethod.GET)
	public String updaterepairmen(RepairBean repairBean, HttpServletRequest request, Model model) throws Exception {
		try {
			repairDao.updaterepairmen(repairBean);
			RepairBean beann = new RepairBean();
			beann = repairDao.count();
			request.setAttribute("beanRe", beann);
			beann = repairDao.count();
			request.setAttribute("beanRe", beann);
			beann = repairDao.count1();
			request.setAttribute("bean1", beann);
			beann = repairDao.count2();
			request.setAttribute("bean2", beann);
			beann = repairDao.count3();
			request.setAttribute("bean3", beann);
			beann = repairDao.count4();
			request.setAttribute("bean4", beann);
			beann = repairDao.count5();
			request.setAttribute("bean5", beann);
			beann = repairDao.count6();
			request.setAttribute("bean6", beann);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return "table";
	}

	@RequestMapping(path = "/table", method = RequestMethod.GET)
	public String tabel(HttpServletRequest request, Model model) throws SQLException {
		RepairBean bean = new RepairBean();

		bean = repairDao.count();
		request.setAttribute("beanRe", bean);
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
		return "table";
	}

	@RequestMapping(path = "/part", method = RequestMethod.GET)
	public String gopart(HttpServletRequest request, Model model) throws SQLException {
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
		return "parts";
	}

	@RequestMapping(path = "/report", method = RequestMethod.GET)
	public String report(HttpServletRequest request, Model model) throws SQLException {
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
		return "report";
	}
	
	@RequestMapping(path = "/s1", method = RequestMethod.GET)
	public String s1(HttpServletRequest request, Model model) throws SQLException {
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
		return "s1";
	}
	@RequestMapping(path = "/s2", method = RequestMethod.GET)
	public String s2(HttpServletRequest request, Model model) throws SQLException {
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
		return "s2";
	}
	@RequestMapping(path = "/s3", method = RequestMethod.GET)
	public String s3(HttpServletRequest request, Model model) throws SQLException {
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
		return "s3";
	}
	@RequestMapping(path = "/s4", method = RequestMethod.GET)
	public String s4(HttpServletRequest request, Model model) throws SQLException {
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
		return "s4";
	}
	@RequestMapping(path = "/s5", method = RequestMethod.GET)
	public String s5(HttpServletRequest request, Model model) throws SQLException {
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
		return "s5";
	}
	@RequestMapping(path = "/s6", method = RequestMethod.GET)
	public String s6(HttpServletRequest request, Model model) throws SQLException {
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
		return "s6";
	}
}
