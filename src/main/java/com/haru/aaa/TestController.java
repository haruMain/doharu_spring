package com.haru.aaa;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.haru.domain.BoardVO;
import com.haru.domain.Page;
import com.haru.service.TestService;

@Controller
@RequestMapping("/board")
public class TestController {

	@Autowired
	TestService service;

//	게시물 목록
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	 public String getList(Model model) throws Exception {
		  List<BoardVO> list = null;
		  list = service.list();
		  int count = service.count();
		  
		  model.addAttribute("list", list);
		  model.addAttribute("count", count);
		  
		  return "board/main";
		 }
	
	@RequestMapping(value = "/mainList", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public String List(Model model) throws Exception {
		List<BoardVO> list = null;
		list = service.list();
		int count = service.count();
		
		model.addAttribute("list", list);
		model.addAttribute("count", count);
		
		return "board/main";
	}
	 
//	 게시물작성
	 @RequestMapping(value = "/write", method = RequestMethod.GET) 
	 public String List(HttpSession session, Model model) throws Exception {
		 Object loginInfo = session.getAttribute("member");
		 
			/*
			 * if(loginInfo == null ) { model.addAttribute("msg", "login_error"); }
			 */
		 return "board/write"; 
	 }
	 
	 @RequestMapping(value = "/write", method = RequestMethod.POST)
	 public String handleFormSubmission(BoardVO boardVO, HttpServletRequest request, MultipartHttpServletRequest mpRequest) throws Exception {
		 service.save(boardVO, mpRequest);
		 return "redirect:/board/main"; 
	 }
//	게시물작성
//	 @RequestMapping(value = "/list", method = RequestMethod.POST) 
//	 public String handleFormSubmission(@RequestParam("mode") String mode, BoardVO boardVO) throws Exception {
//		 if ("A".equals(mode)) {
//			    service.save(boardVO);
//			    return "redirect:/board/main"; // 성공 시 적절한 리다이렉트 view 반환
//			} else {
//			    return "write"; // 실패 시 적절한 에러 view 반환
//			}
//	 }
	 
//	게시물 조회
	 @RequestMapping(value = "/view", method = RequestMethod.GET)
	 public void getView(@RequestParam("seq") long seq, Model model) throws Exception {
		 BoardVO boardVO = service.view(seq);
		 model.addAttribute("list", boardVO);
		 
			/*
			 * List<Map<String, Object>> fileList =
			 * service.selectFileList(boardVO.getSeq()); model.addAttribute("file",
			 * fileList);
			 */
	 }
	 
//	 게시물 수정
	 @RequestMapping(value = "/modify", method = RequestMethod.GET)
	 public void getModify(@RequestParam("seq") int seq, Model model) throws Exception {
		 BoardVO boardVO = service.view(seq);
		 model.addAttribute("list", boardVO);
	 }
	 
	 @RequestMapping(value = "/modify", method = RequestMethod.POST)
	 public String postModify(BoardVO boardVO) throws Exception {
		 service.modify(boardVO);
		 return "redirect:/board/view?seq=" + boardVO.getSeq();
	 }
	 
//	 게시글 삭제
	 @RequestMapping(value = "/delete", method = RequestMethod.GET)
	 public String getDelete(@RequestParam("seq") int seq) throws Exception {
		 service.delete(seq);  
		 return "redirect:/board/listPage";
	 }
	 
//	 게시물 목록 + 페이징 추가 
	 @RequestMapping(value = "/listPage", method = RequestMethod.GET)
	 public void getListPage(@RequestParam(value = "num", required = false, defaultValue = "1") int num, Model model) throws Exception {
		 Page page = new Page();
		 page.setNum(num);
		 page.setCount(service.count());  
		 int count = service.count();

		 List<BoardVO> list = null; 
		 list = service.listPage(page.getDisplayPost(), page.getPostNum());

		 model.addAttribute("list", list);  
		 model.addAttribute("page", page);
		 model.addAttribute("select", num);
		 model.addAttribute("count", count);
		 
		 }
	 
//		게시물 목록
//		 @RequestMapping(value = "/main", method = RequestMethod.GET)
//		 public void getList(Model model) throws Exception {
//			  List<BoardVO> list = null;
//			  list = service.list();
//			  model.addAttribute("list", list);
//			 }
	 

	}
