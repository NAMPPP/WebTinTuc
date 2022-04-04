package com.da.st5.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.da.st5.dao.CategoryDAO;
import com.da.st5.dao.ContentDAO;
import com.da.st5.dao.ImagesDAO;
import com.da.st5.dao.NewsDAO;
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
    	System.out.print(listNewsHot.get(0).getId());
    	model.addAttribute("listNewsHot", listNewsHot);
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

}