package com.da.st5.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.da.st5.dao.CategoryDAO;
import com.da.st5.dao.ContentDAO;
import com.da.st5.dao.ImagesDAO;
import com.da.st5.dao.NewsDAO;
import com.da.st5.dao.UserDAO;
import com.da.st5.model.CategoryModel;
import com.da.st5.model.ContentModel;
import com.da.st5.model.ImagesModel;
import com.da.st5.model.NewsModel;



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
//    	String pageStr = rq.getParameter("page");
//    	String maxPageItemStr = rq.getParameter("maxPageItem");
//    	if (pageStr !=null) {
//    		newsModel.setPage(Integer.parseInt(pageStr));	
//		}else {
//			newsModel.setPage(1);
//		}
//    	if (maxPageItemStr !=null) {
//    		newsModel.setMaxPageItem(Integer.parseInt(maxPageItemStr));
//		}
//    	Integer offset = (newsModel.getPage()-1)*newsModel.getMaxPageItem();
    	
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
    
    
    @RequestMapping(value = { "/loginPage/" }, method = RequestMethod.GET)
    public String init(Model model) {
        //model.addAttribute("msg", "Please Enter Your Login Details");
        return "loginPage";
      }
//    @RequestMapping(method = RequestMethod.POST)
//    public String submit(Model model, @ModelAttribute("loginBean") UserModel userModel) {
//      if (userModel != null && userModel.getUserName() != null & userModel.getPassword() != null) {
//        if (userModel.getUserName().equals("chandra") && userModel.getPassword().equals("chandra123")) {
//          model.addAttribute("msg", userModel.getUserName());
//          return "success";
//        } else {
//          model.addAttribute("error", "Invalid Details");
//          return "loginPage";
//        }
//      } else {
//        model.addAttribute("error", "Please enter Details");
//        return "loginPage";
//      }
//    }
    
    
    
    @RequestMapping(value = { "/registerPage/" }, method = RequestMethod.GET)
    public String registerPage(ModelMap model) {
        return "registerPage";
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