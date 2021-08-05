package com.Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.CategoryEntityDao;
import com.daoImpl.CategoryEntityDaoImpl;
import com.google.gson.Gson;
import com.models.CategoryEntity;

/**
 * Servlet implementation class CategoryServlet
 */
@WebServlet("/CategoryServlet")
public class CategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      CategoryEntityDao dao = new CategoryEntityDaoImpl();
      CategoryEntity entity = new CategoryEntity();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CategoryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");

		System.out.println("Action : " + action);
		CategoryEntity category = null;
		Gson gson = new Gson();
		String jsonlist = "";
		String listData = "";

		switch (action) {
		case "create":
			String name = request.getParameter("author_name");

			System.out.println("Name : " + name);

			category = new CategoryEntity();
			category.setName(name);

			CategoryEntity a = dao.getCategoryByName(category.getName());

			response.setContentType("application/json");

			response.getWriter().print(gson.toJson(a));

			break;

		case "getAll":

			List<CategoryEntity> allAuthors = dao.getCategorys();
			System.out.println("Author Name : " + entity.getName());

			jsonlist = gson.toJson(allAuthors);

			response.setContentType("application/json");
			response.getWriter().print(jsonlist);
			break;

		case "update":
			int id = Integer.parseInt(request.getParameter("id"));
			String name1 = request.getParameter("category_name").toString();

			System.out.println("ID : " + id);
			category = dao.getCategoryById(id);

			if (category != null) {
				category.setName(name1);
				dao.updateCategory(category);
			}

			listData = gson.toJson(category);

			response.setContentType("application/json");
			response.getWriter().print(listData);

			break;

		case "delete":
			id = Integer.parseInt(request.getParameter("id"));
				
			System.out.println("Id = "+id);
			category = dao.getCategoryById(id);

			if (category != null) {
				dao.deleteCategory(category);

			}

			listData = gson.toJson(category);

			response.setContentType("application/json");
			response.getWriter().print(listData);

			break;
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
