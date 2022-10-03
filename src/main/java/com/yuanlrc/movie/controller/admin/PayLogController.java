package com.yuanlrc.movie.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yuanlrc.movie.bean.PageBean;
import com.yuanlrc.movie.entity.common.PayLog;
import com.yuanlrc.movie.service.common.PayLogService;

/**
 * 支付记录管理控制器
 * @author Administrator
 *
 */
@RequestMapping("/admin/pay_log")
@Controller
public class PayLogController {

	@Autowired
	private PayLogService payLogService;
	
	/**
	 * 支付记录列表
	 * @param model
	 * @param payLog
	 * @param pageBean
	 * @return
	 */
	@RequestMapping(value="/list")
	public String list(Model model,PayLog payLog,PageBean<PayLog> pageBean){
		model.addAttribute("pageBean", payLogService.findPage(payLog, pageBean));
		model.addAttribute("sn",payLog.getSn());
		return "admin/pay_log/list";
	}
	
}
