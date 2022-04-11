package com.da.st5.controller;

import java.util.Date;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.da.st5.dao.CategoryDAO;
import com.da.st5.dao.ContentDAO;
import com.da.st5.dao.ImagesDAO;
import com.da.st5.dao.NewsDAO;
import com.da.st5.dao.UserDAO;
import com.da.st5.model.CategoryModel;
import com.da.st5.model.ContentModel;
import com.da.st5.model.ImagesModel;
import com.da.st5.model.NewsModel;
import com.da.st5.model.UserModel;



@Controller
public class MainController {

 
    @Autowired
    private CategoryDAO categoryDAO;
    
    @Autowired
    private NewsDAO newsDAO;
    
    @Autowired
    private ContentDAO contentDAO;
    
    @Autowired
    private ImagesDAO imagesDAO;
    
    @Autowired
    private UserDAO userDAO;

    
    @RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
	public String homePage(ModelMap model) {	
    	List<CategoryModel> listcate = categoryDAO.listCategory();
    	List<NewsModel> listnews = newsDAO.listNews();
    	List<NewsModel> listNewsHot = newsDAO.listNewsHot();
    	NewsModel firstNewsHot = newsDAO.listNewsHot().get(0);
    	System.out.print(listNewsHot.get(2).getId());
    	System.out.print(firstNewsHot);
    	model.addAttribute("firstNewsHot", firstNewsHot);
    	model.addAttribute("secondNewsHot", listNewsHot.get(1));
    	model.addAttribute("lastNewsHot", listNewsHot.get(2));
    	model.addAttribute("news", listnews);
        model.addAttribute("category", listcate);
		return "homePage";
    }
    
    @RequestMapping(value = {"/{id}/" },method = RequestMethod.GET)
	public String detailNews(ModelMap model ,@PathVariable(name="id") int id) {
    	List<CategoryModel> listcate = categoryDAO.listCategory();
    	model.addAttribute("category", listcate);
    	List<NewsModel> detailNews = newsDAO.detailNews(id);
    	List<ContentModel> contentNews = contentDAO.listContentByNew(id);
    	List<ImagesModel> imgNews = imagesDAO.listImgByNew(id);
    	model.addAttribute("content", contentNews.get(0));
    	model.addAttribute("img", imgNews.get(0));
    	model.addAttribute("news", detailNews.get(0));
    	return "detailPage";
	}
    
    @RequestMapping(value = { "/contactusPage/" }, method = RequestMethod.GET)
    public String contactusPage(Model model) {
    	List<CategoryModel> listcate = categoryDAO.listCategory();
    	model.addAttribute("category", listcate);
//    	List<NewsModel> list = newsDAO.listNews();
//        model.addAttribute("news", list);
        return "contactusPage";
    }
    @RequestMapping(value = { "/categoryPage/{id}/" }, method = RequestMethod.GET)
    public String categoryPage(ModelMap model ,@PathVariable(name="id") int id) {
    	List<CategoryModel> listcate = categoryDAO.listCategory();
    	List<CategoryModel> categetid = categoryDAO.getcategoryId(id);
    	List<NewsModel> listNewsByCategory = newsDAO.listNewsByCategory(id);
    	
    	model.addAttribute("news", listNewsByCategory);
    	model.addAttribute("category", listcate);
    	model.addAttribute("categetid", categetid.get(0));
//    	List<NewsModel> list = newsDAO.listNews();
//        model.addAttribute("news", list);
        return "categoryPage";
    }
    
    //----------adminPage---------------
    @RequestMapping(value = { "/adminPage/" }, method = RequestMethod.GET)
    public String adminPage(ModelMap model) {
    	
        return "adminPage";
    }
    
  //----------listNewsportal---------------
    @RequestMapping(value = { "/adminPage/listNewsportal/" }, method = RequestMethod.GET)
    public String listNewsportal(ModelMap model) {
    	List<NewsModel> listnews = newsDAO.listNews();
    	model.addAttribute("news", listnews);
        return "listNewsportal";
    }
    //----------view new admin---------------
    @RequestMapping(value = {"/adminPage/listNewsportal/view/{id}/" },method = RequestMethod.GET)
	public String viewNew(ModelMap model ,@PathVariable(name="id") int id) {
    	List<CategoryModel> listcate = categoryDAO.listCategory();
    	model.addAttribute("category", listcate);
    	List<NewsModel> detailNews = newsDAO.detailNews(id);
    	List<ContentModel> contentNews = contentDAO.listContentByNew(id);
    	List<ImagesModel> imgNews = imagesDAO.listImgByNew(id);
    	model.addAttribute("content", contentNews.get(0));
    	model.addAttribute("img", imgNews.get(0));
    	model.addAttribute("news", detailNews.get(0));
    	
    	return "viewNew";
	}
    
    //----------detail new Admin---------------
    @RequestMapping(value = {"/adminPage/listNewsportal/detail/{id}/" },method = RequestMethod.GET)
	public ModelAndView detailNewsadmid(ModelMap model ,@PathVariable(name="id") int id) {
    	ModelAndView mv= new ModelAndView("detailAdmin");
    	List<NewsModel> detailNews = newsDAO.detailNews(id);
    	List<CategoryModel> listcate = categoryDAO.listCategory();
    	model.addAttribute("category", listcate);
    	model.addAttribute("news", detailNews.get(0));
    	mv.addObject("updateNews",new NewsModel());
    	return mv;
	}
//    @RequestMapping(value ="/adminPage/listNewsportal/detail/{id}/" , method = RequestMethod.POST)
//    public ModelAndView updateNew(@ModelAttribute("updateNews") NewsModel news) {
//    	System.out.println(news.getCreatedDate());
//    	ModelAndView mv= new ModelAndView("detailAdmin");
//    	int count = newsDAO.addNews(news);
//    	if (count>0) {
//    		mv.addObject("statusAddNew","succes");
//    		
//		}else {
//			mv.addObject("statusAddNew","unsucces");
//		}
//        return mv;
//    }
    
  //----------add News---------------
    @RequestMapping(value = {"/adminPage/addNew/" },method = RequestMethod.GET)
	public ModelAndView addNew(ModelMap model) {
    	ModelAndView mv= new ModelAndView("addNew");
    	List<CategoryModel> listcate = categoryDAO.listCategory();
    	model.addAttribute("category", listcate);
    	model.addAttribute("datenow", java.time.LocalDate.now());
    	mv.addObject("news",new NewsModel());
    	return mv;
	}
    @RequestMapping(value ="/adminPage/addNew/" , method = RequestMethod.POST)
    public ModelAndView CreateAcc(@ModelAttribute("news") NewsModel news) {
    	System.out.println(news.getCreatedDate());
    	ModelAndView mv= new ModelAndView("addNew");
    	int count = newsDAO.addNews(news);
    	if (count>0) {
    		mv.addObject("statusAddNew","succes");
    		
		}else {
			mv.addObject("statusAddNew","unsucces");
		}
        return mv;
    }
    
  //----------listCategory---------------
    @RequestMapping(value = { "/adminPage/listCategory/" }, method = RequestMethod.GET)
    public String listCategory(ModelMap model) {
    	
    	List<CategoryModel> listcate = categoryDAO.listCategory();
    	model.addAttribute("category", listcate);
        return "listCategory";
    }
    
    //----------loginPage---------------
    @RequestMapping(value = { "/loginPage/" }, method = RequestMethod.GET)
    public ModelAndView loginPage() {
    	ModelAndView mv= new ModelAndView("loginPage");
    	
    	mv.addObject("user",new UserModel() );
        return mv;
    }
    @RequestMapping(value ="/loginPage/" , method = RequestMethod.POST)
    public ModelAndView CheckAcc(@ModelAttribute("user") UserModel user) {
    	ModelAndView mv= new ModelAndView("loginPage");
    	ModelAndView mv1= new ModelAndView("adminPage");
    	UserModel userModel = userDAO.user(user);
    	if (userModel != null) {
    		if (userModel.getStatus()==1) {
    			return mv1;
			}
    		if (userModel.getStatus()==2) {
    			return mv1;
			}else {
				mv.addObject("loginFail","Account is waiting for approval");
				return mv;
			}
		}else {
			mv.addObject("loginFail","Wrong account or password");
	        return mv;
		}
    }

    
  //----------registerPage---------------
    @RequestMapping(value = { "/registerPage/" }, method = RequestMethod.GET)
    public ModelAndView registerPage() {
    	ModelAndView mv= new ModelAndView("registerPage");
    	
    	mv.addObject("user",new UserModel() );
        return mv;
    }
    
    @RequestMapping(value ="/registerPage/" , method = RequestMethod.POST)
    public ModelAndView CreateAcc(@ModelAttribute("user") UserModel user) {
    	ModelAndView mv= new ModelAndView("loginPage");
    	int count = userDAO.adduser(user);
    	if (count>0) {
    		mv.addObject("status","succes");
    		
		}else {
			mv.addObject("status","unsucces");
		}
        return mv;
    }
    
    @RequestMapping(value = { "/forgotPassword/" }, method = RequestMethod.GET)
    public String forgotPassword(ModelMap model) {
        return "forgotPassword";
    }
    
    @RequestMapping(value = { "/recoverPassword/" }, method = RequestMethod.GET)
    public String recoverPassword(ModelMap model) {
        return "recoverPassword";
    }
}