package com.haru.aaa;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.haru.domain.TestVO;
import com.haru.service.TestService;

@Controller
@RequestMapping("/board/*") 
public class TestController {
	
	@Autowired
	 TestService service;

	 @RequestMapping(value = "/test", method = RequestMethod.GET)
	 public void getList(Model model) throws Exception {
	  
	  List<TestVO> list = null;
	  list = service.list();
	  model.addAttribute("list", list);
	 }
	 
	 @RequestMapping(value = "/list", method = RequestMethod.GET)
	 public String List() throws Exception {
		 
		 return "board/login";
	 }
	 
}
