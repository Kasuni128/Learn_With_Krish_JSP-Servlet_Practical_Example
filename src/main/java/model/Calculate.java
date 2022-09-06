package model;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "Calculate", value = "/Calculate")
public class Calculate extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String answer=null;
        int num1 = Integer.parseInt(request.getParameter("num1"));
        int num2 = Integer.parseInt(request.getParameter("num2"));
        String sign=request.getParameter("sign");

        System.out.println(num1+" "+sign+" "+num2);

        try{
            if(sign.equals("+")){
                answer = String.valueOf(num1+num2);
            }
            if(sign.equals("-")){
                answer = String.valueOf(num1-num2);
            }
            if(sign.equals("*")){
                answer = String.valueOf(num1*num2);
            }
            if(sign.equals("/")){
                answer = String.valueOf(num1/num2);
            }
        } catch(Exception e){
            answer="Expection Occured";

        }
        request.setAttribute("answer",answer);
        request.getRequestDispatcher("display.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
