package all.service;

import all.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookService {
    //增加一本书
    int addBook(Books books);
    //删除一本书
    int deleteBook(int id);
    //修改一本书
    int updateBook(Books books);
    //查询一本书
    Books selectBookById(int id);
    //查询全部书
    List<Books> selectAllBook();
    //搜索书籍
    Books queryBookByName(String bookName);
}
