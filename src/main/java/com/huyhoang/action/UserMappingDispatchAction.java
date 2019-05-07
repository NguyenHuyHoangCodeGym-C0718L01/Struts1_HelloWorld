package com.huyhoang.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.MappingDispatchAction;

import com.huyhoang.model.User;

public class UserMappingDispatchAction extends MappingDispatchAction{

	public ActionForward addUser(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		return mapping.findForward("addUser");
	}

	public ActionForward deleteUser(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		User user = (User) form;
		user.setName("Hello Struts! Huy Hoang");
		user.setAge(22);

		return mapping.findForward("deleteUser");
	}

	public ActionForward updateUser(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		User user = (User) form;
		user.setName("Hello Struts! Huy Hoang");
		user.setAge(22);

		return mapping.findForward("updateUser");
	}

	public ActionForward viewUser(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String sex =  request.getParameter("sex");
		String about = request.getParameter("about");
		String job = request.getParameter("job");
		
		User user = (User) form;
		user.setName(name);
		user.setAge(Integer.valueOf(age));
		user.setSex(sex);
		user.setAbout(about);
		user.setJob(job);

		return mapping.findForward("viewUser");
	}
}
