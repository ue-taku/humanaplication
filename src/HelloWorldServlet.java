package src;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import src.model.HelloModel;

public class HelloWorldServlet extends HttpServlet{

//    protected void service(HttpServletRequest req, HttpServletResponse res)
//            throws ServletException, IOException {
//
//        String question = req.getParameter("input");
//        System.out.println(question);
//
//        req.setAttribute("answer", "今日は晴れです");
//
//        req.getRequestDispatcher("index.jsp").forward(req,res);
//
//    }

    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
    	req.setCharacterEncoding("UTF-8");

        System.out.println("doGetメソッドが呼び出されました。");

        // JSPからパラメーター（入力値）を受け取る
        String question = req.getParameter("input");
        System.out.println(question);

        // 答えを受け取る
        String answer = new HelloModel().takeAnsewer(question);
        // JSPに値を渡す設定をする
        req.setAttribute("answer", answer);
        // J画面遷移するJSPを指定し、画面遷移を実行する
        req.getRequestDispatcher("index.jsp").forward(req,res);

    }

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
    	req.setCharacterEncoding("UTF-8");

    	System.out.println("doPostメソッドが呼び出されました。");

        // JSPからパラメーター（入力値）を受け取る
        String question = req.getParameter("input");
        System.out.println(question);

        // 答えを受け取る
        String answer = new HelloModel().takeAnsewer(question);
        // JSPに値を渡す設定をする
        req.setAttribute("answer", answer);
        // J画面遷移するJSPを指定し、画面遷移を実行する
        req.getRequestDispatcher("/index.jsp").forward(req,res);


    }


}
