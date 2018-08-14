package com.bru.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bru.dao.LoginDao;
import com.bru.dao.RepairDao;
import com.bru.model.LoginBean;
import com.bru.model.RepairBean;

@Controller
public class LoginController {

	@Autowired
	LoginDao loginDao;

	@Autowired
	RepairDao repairDao;
	
	@RequestMapping("/login")
	public String login(Model model) {
		model.addAttribute("messessError", "");
		return "login";
	}

	@RequestMapping("/welcome")
	public String authenLogin(String username, String password, Model model, HttpServletRequest request) {
		String authen = "";
		LoginBean bean = new LoginBean();
		try {
			bean = loginDao.login(username, password);
			if (bean.getUsername() != null) {
				if (bean.getRole().equals("1")) {
					RepairBean beann = new RepairBean();
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
					authen = "welcome";
				} else if (bean.getRole().equals("2")) {
					RepairBean beann = new RepairBean();
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
					authen = "hello";
				}
			} else {
				model.addAttribute("messessError", "F");
				authen = "login";
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return authen;
	}

	@RequestMapping("/logout")
	private String logout(HttpSession request, Model model) {
		request.removeAttribute("LoginUser");
		model.addAttribute("messessError", "L");
		return "login";
	}
}
