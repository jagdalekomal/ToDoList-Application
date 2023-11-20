package com.todo.contoller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.RedirectView;

import com.todo.dao.TaskDao;
import com.todo.entity.Task;

@Controller
public class toDoController {

	@Autowired
	private TaskDao taskDao;

	@RequestMapping("/")
	public String home(Model m) {

		List<Task> tasks= taskDao.getAllTask();
		m.addAttribute("task", tasks);
		return "ShowList";
	}
	
	@RequestMapping("/addTask")
	public String addProduct(Model m) {
		m.addAttribute("title", "Add Product");
		return "addTaskPage";
	}

	@PostMapping("/todoForm")
	public RedirectView TodoHandler(@ModelAttribute Task task, Model m, HttpServletRequest request) {
		taskDao.addTask(task);
		System.out.println(task);
		RedirectView redirectView= new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;

	}

	@RequestMapping("/delete/{id}")
	public RedirectView completeStatus(@PathVariable int id, HttpServletRequest request) {
		taskDao.deleteTask(id);
		RedirectView redirectView= new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
		
	}
}
