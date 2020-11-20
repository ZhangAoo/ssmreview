<%--
  Created by IntelliJ IDEA.
  User: ZhangAoo
  Date: 2020/11/17
  Time: 15:15
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
                    <small>新增书籍</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="/book/addBook" method="post">
        <div class="form-group">
            <label >书籍名称</label>
            <input type="text" name="bookName" class="form-control" required>
        </div>
        <div class="form-group">
            <label >书籍数量</label>
            <input type="text" name="bookCounts" class="form-control" required>
        </div>
        <div class="form-group">
            <label >书籍描述</label>
            <input type="text" name="detail" class="form-control" required>
        </div>
<%--        <div class="checkbox">--%>
<%--            <label>--%>
<%--                <input type="checkbox"> Check me out--%>
<%--            </label>--%>
<%--        </div>--%>
        <button type="submit" class="btn btn-default">添加</button>
    </form>
</div>


</body>
</html>
