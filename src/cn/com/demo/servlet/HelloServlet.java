package cn.com.demo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloServlet extends HttpServlet {

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
        //request.setCharacterEncoding("UTF-8");
        // 获取名称        
        String name = request.getParameter("name");
        if(name != null){
        	byte[] bytes = name.getBytes("iso-8859-1");
        	name = new String(bytes,"UTF-8");
        }
        name=  "Hello," + name;
        System.out.println(name);
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		// 只需要输出需要的内容
		out.print(name);
		
		out.flush();
		out.close();
	}

}
