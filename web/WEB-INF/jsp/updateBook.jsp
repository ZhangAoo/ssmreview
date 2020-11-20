<%--
  Created by IntelliJ IDEA.
  User: ZhangAoo
  Date: 2020/11/17
  Time: 21:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%--    BootStrap美化界面--%>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>


<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改书籍</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/book/updateBook" method="post">

<%--     出现的问题：提交了修改SQL的请求，但是修改失败，首先应该考虑事务问题，依旧失败
         查看SQL语句能否执行成功：SQL执行失败，修改失败
--%>
<%--        前端传递隐藏域--%>

       <input type="hidden" name="bookId" value="${selectBooks.bookId}" required>
        <div class="form-group">
            <label >书籍名称</label>
            <input type="text" name="bookName" class="form-control" value="${selectBooks.bookName}" required>
        </div>
        <div class="form-group">
            <label >书籍数量</label>
            <input type="text" name="bookCounts" class="form-control" value="${selectBooks.bookCounts}" required>
        </div>
        <div class="form-group">
            <label >书籍描述</label>
            <input type="text" name="detail" class="form-control" value="${selectBooks.detail}" required>
        </div>
        <%--        <div class="checkbox">--%>
        <%--            <label>--%>
        <%--                <input type="checkbox"> Check me out--%>
        <%--            </label>--%>
        <%--        </div>--%>
        <button type="submit" class="btn btn-default">修改</button>
    </form>
</div>


</body>
</html>
