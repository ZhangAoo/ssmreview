package all.controller;

import all.pojo.Books;
import all.service.BookService;

import com.sun.istack.internal.NotNull;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {
    //controller调 service层
    @Autowired
    @Qualifier("BookServiceImpl")
    private BookService service;

    //查询全部的书籍，并且返回到一个书籍展示页面
    @RequestMapping("/allBook")
    public String list(Model model){
        List<Books> list = service.selectAllBook();
        model.addAttribute("list",list);
        return "allBook";
    }

    //跳转到增加书籍页面
    @RequestMapping("/toAddBook")
    public String toAddBook(){
        return "addBook";
    }

    //添加书籍的请求
    @RequestMapping("/addBook")
    public String addBook(Books books){
        System.out.println("addBooks-->"+books);
        service.addBook(books);
//        return "allBook";
        return "redirect:/book/allBook";//重定向到@@RequestMapping("/allBook")请求：实现请求复用
    }


    //跳转到修改页面
    @RequestMapping("/toUpdate")
    public String toUpdatePaper(int id,Model model){
        Books books = service.selectBookById(id);
        model.addAttribute("selectBooks",books);
        return "updateBook";
    }

    //修改书籍
    @RequestMapping("/updateBook")
    public String updateBook(Books books){
        System.out.println("updateBook-->"+books);
        int i=service.updateBook(books);
        if (i>0){
            System.out.println("修改成功"+books);
        }
        return "redirect:/book/allBook";
    }


    //跳转到删除页面
    @RequestMapping("/deleteBook/{bookId}")
    public String deleteBook(@PathVariable("bookId") int id){
        service.deleteBook(id);
        return "redirect:/book/allBook";
    }

    //搜索书籍
    @RequestMapping("/queryBook")
    public String queryBook(String queryBookName,Model model){
        Books books = service.queryBookByName(queryBookName);
        List<Books> list=new ArrayList<Books>();
        list.add(books);
        model.addAttribute("list",list);
        return "allBook";
    }
}
