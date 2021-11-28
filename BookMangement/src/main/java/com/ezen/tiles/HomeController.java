package com.ezen.tiles;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	@Autowired
	private SqlSession sqlSession;

	@RequestMapping("/main")
	public String ko1() {
		return "main";
	}

	@RequestMapping("/man")
	public String ko2() {
		return "man";
	}

	@RequestMapping("/maninsert")
	public String ko3() {
		return "maninsert";
	}

	@RequestMapping("/manModify")
	public String ko4() {
		return "manModify";
	}

	@RequestMapping("/manList")
	public String ko5(Model mo) {

		UserInter inter = sqlSession.getMapper(UserInter.class);
		ArrayList<UserDTO> list = inter.listout();
		mo.addAttribute("manlist", list);

		return "manList";
	}

	@RequestMapping("/maninsertdata")
	public String ko6(HttpServletRequest req) {

		String username = req.getParameter("username");
		String usertel = req.getParameter("usertel");
		String usermail = req.getParameter("usermail");

		UserInter inter = sqlSession.getMapper(UserInter.class);
		inter.maninsertdata(username, usertel, usermail);

		return "redirect:manList";
	}

	@RequestMapping("/manDelete")
	public String ko7(HttpServletRequest req) {

		int userno = Integer.parseInt(req.getParameter("userno"));

		UserInter inter = sqlSession.getMapper(UserInter.class);
		inter.manDelete(userno);

		return "redirect:manList";
	}

	@RequestMapping("/manModifydata")
	public String ko8(HttpServletRequest req) {

		HttpSession hs = req.getSession();

		int userno = (Integer) hs.getAttribute("userno");
		String username = req.getParameter("username");
		String usertel = req.getParameter("usertel");
		String usermail = req.getParameter("usermail");

		UserInter inter = sqlSession.getMapper(UserInter.class);
		inter.manModifydata(userno, username, usertel, usermail);

		return "redirect:manList";
	}

	@RequestMapping("/manSearch")
	public String ko9(HttpServletRequest req, Model mo) {

		String sname = req.getParameter("sname");
		String svalue = req.getParameter("svalue");

		UserInter inter = sqlSession.getMapper(UserInter.class);
		ArrayList<UserDTO> slist = null;

		if (sname.equals("userno")) {
			slist = inter.manSearch1(svalue);
		} else if (sname.equals("username")) {
			slist = inter.manSearch2(svalue);
		}

		mo.addAttribute("search", slist);

		return "manSearch";
	}

	@RequestMapping("/bookcontent")
	public ModelAndView ko10(HttpServletRequest request) {

		int booknumber = Integer.parseInt(request.getParameter("booknumber"));

		bookinter dao = sqlSession.getMapper(bookinter.class);
		ArrayList<bookDTO> out = dao.bookcontent(booknumber);

		ModelAndView mav = new ModelAndView();
		mav.addObject("output", out);

		return mav;
	}

	@RequestMapping("/bookdelete")
	public String ko11(HttpServletRequest request) {

		int booknumber = Integer.parseInt(request.getParameter("booknumber"));

		bookinter dao = sqlSession.getMapper(bookinter.class);
		dao.delete(booknumber);

		return "redirect:bookmanagemain";
	}

	@RequestMapping("/bookinputdata")
	public String ko12(HttpServletRequest request) {

		String booktitle = request.getParameter("booktitle");
		String bookauthor = request.getParameter("bookauthor");
		String bookcontent = request.getParameter("bookcontent");
		String bookpublisher = request.getParameter("bookpublisher");
		int bookstock = Integer.parseInt(request.getParameter("bookstock"));
		String bookcate = request.getParameter("bookcate");

		bookinter dao = sqlSession.getMapper(bookinter.class);
		dao.insertdata(booktitle, bookauthor, bookcontent, bookpublisher, bookstock, bookcate);

		return "redirect:bookmanagemain";
	}

	@RequestMapping("/bookmanagemain")
	public ModelAndView ko13(HttpServletRequest request) {

		bookinter dao = sqlSession.getMapper(bookinter.class);
		ModelAndView mav = new ModelAndView();

		ArrayList<bookDTO> out = dao.out();
		mav.addObject("output", out);

		return mav;
	}

	@RequestMapping("/bookinput")
	public String ko14() {
		return "bookinput";
	}

	@RequestMapping(method = RequestMethod.POST, value = "/booksearch")
	public ModelAndView ko15(HttpServletRequest request) {

		String categorie = request.getParameter("categorie");
		String book = request.getParameter("book");

		bookinter dao = sqlSession.getMapper(bookinter.class);

		ModelAndView mav = new ModelAndView();

		if (categorie.equals("bookauthor")) {
			ArrayList<bookDTO> out = dao.booksearchauthor(book);
			mav.addObject("output", out);
		}

		if (categorie.equals("booktitle")) {
			ArrayList<bookDTO> out = dao.booksearchtitle(book);
			mav.addObject("output", out);
		}
		return mav;
	}

	@RequestMapping(method = RequestMethod.POST, value = "/bookmainlist")
	public ModelAndView ko16(HttpServletRequest request) {

		String list = request.getParameter("list");

		bookinter dao = sqlSession.getMapper(bookinter.class);
		ModelAndView mav = new ModelAndView();

		if (list.equals("카테정렬")) {
			ArrayList<bookDTO> out1 = dao.outcate();
			mav.addObject("output", out1);
		}

		if (list.equals("번호정렬")) {
			ArrayList<bookDTO> out2 = dao.outnumber();
			mav.addObject("output", out2);
		}

		return mav;
	}

	@RequestMapping("/daeban")
	public String ko17(HttpServletRequest request, Model mo) {

		bookinter dao = sqlSession.getMapper(bookinter.class);
		ArrayList<bookDTO> dlist = dao.deabanlist();

		mo.addAttribute("dlist", dlist);

		return "daeban";
	}

	@RequestMapping("/dae")
	public String ko18(HttpServletRequest req, Model mo) {

		int booknumber = Integer.parseInt(req.getParameter("booknumber"));

		bookinter dao = sqlSession.getMapper(bookinter.class);
		ArrayList<bookDTO> dlist = dao.list(booknumber);

		mo.addAttribute("dlist", dlist);

		return "dae";
	}

	@RequestMapping(method = RequestMethod.POST, value = "/daedo")
	public String ko19(HttpServletRequest req) {

		int booknumber = Integer.parseInt(req.getParameter("booknumber"));
		String booktitle = req.getParameter("booktitle");
		String bookauthor = req.getParameter("bookauthor");
		String bookpublisher = req.getParameter("bookpublisher");
		String username = req.getParameter("username");
		String bookcate = req.getParameter("bookcate");

		Rentinter dao = sqlSession.getMapper(Rentinter.class);
		bookinter dao2 = sqlSession.getMapper(bookinter.class);
		UserInter dao3 = sqlSession.getMapper(UserInter.class);

		dao.insertrent(booknumber, booktitle, bookauthor, bookpublisher, username, bookcate);
		dao2.insertrent(booknumber);
		dao3.insertrent(username);

		return "redirect:dblist";
	}

	@RequestMapping("/dblist")
	public String ko20(Model mo) {

		Rentinter dao = sqlSession.getMapper(Rentinter.class);
		ArrayList<RentDTO> dblist = dao.dblist();

		mo.addAttribute("dblist", dblist);

		return "dblist";
	}

	@RequestMapping("/returnbook")
	public String ko21(HttpServletRequest req) {

		int booknumber = Integer.parseInt(req.getParameter("booknumber"));
		String username = req.getParameter("username");

		Rentinter dao = sqlSession.getMapper(Rentinter.class);
		bookinter dao2 = sqlSession.getMapper(bookinter.class);
		UserInter dao3 = sqlSession.getMapper(UserInter.class);

		dao.returnbook(booknumber, username);
		dao2.returnbook(booknumber);
		dao3.returnbook(username);

		return "redirect:dblist";
	}

	@RequestMapping("/search")
	public String ko22(HttpServletRequest request) {

		String username = request.getParameter("username");
		UserInter dao = sqlSession.getMapper(UserInter.class);
		ArrayList<UserDTO> slist = dao.search(username);

		ModelAndView mav = new ModelAndView();
		mav.addObject("list", slist);

		return "dae";
	}

}
