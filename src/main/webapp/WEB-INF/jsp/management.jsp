<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <c:url var="base" value="/"/>
  <base href="${base}">
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>新闻管理</title>
  <link rel="stylesheet" href="https://www.jq22.com/jquery/bootstrap-4.2.1.css">
  <style>
    .content1 {
      width: 1000px;
      height: 600px;

      display: inline-block;
      margin-top: 50px;
      margin-left: 100px;
    }

    .content1 .title{
      width: 600px;
      height: 0;
    }

    .content1 .operation{
      width: 200px;
      height: 0;
    }

    th, td{
      text-align: center;
    }

    #lin {
      margin: 20px 0;
      height: 30px;
      padding: 5px;
      box-sizing: border-box;
    }

    .names {
      width: 300px;
      margin-bottom: 30px;
    }
    .content3 {
      margin-top: 50px;
      margin-left: 100px;
      
    }
    .content3 ul {
      padding-left: 0;
      margin-bottom: 100px;
    }
    .content3 ul li{
      list-style: none;
    }

    .tab{
      display: flex;
      justify-content: space-between;
      align-items: center;
    }
  </style>
</head>

<body>



  <div class="content1">
    <!-- <input type="text" id="lin" placeholder="请输入需要搜索的内容"> -->
    <div class="tab">
      <input type="text" class="form-control names" id="lin" placeholder="请输入需要搜索的内容">
      <div>
        <a href="index"><button type="button" class="btn btn-outline-primary">首页</button></a>
        <a href="newseditor"><button type="button" class="btn btn-primary">发布文章</button></a>
      </div>
    </div>
    <table class="table table-striped table-bordered" id="table-1">
      <thead class="thead-dark">
        <tr>
          <th class="title">新闻标题</th>
          <th class="operation">操作</th>
        </tr>
      </thead>

      <tbody>

        <c:forEach items="${news }" var="n">
          <tr>

            <td>
              <a href="getnews?title=${n.title }">
                ${n.title }
              </a>
            </td>
            <td>
              <a href="update?title=${n.title }">
                <button type="button" class="btn btn-primary">修改</button>
              </a>
              <a href="deletenews?title=${n.title }">
                <button type="button" class="btn btn-danger">删除</button>
              </a>
            </td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
  </div>

  <div class="content3">
    <input type="text" class="form-control names" id="searchInput" placeholder="请输入需要搜索的内容">

    <ul class="ul">
      <li>新华社北京12月11日电  中共中央政治局12月11日召开会议，分析研究2021年经济工作；听取中央纪委国家监委工作汇报，研究部署20
        新华社北京12月11日电  中共中央政治局12月11日召开会议，分析研究2021年经济工作；听取中央纪委国家监委工作汇报，研究部署20
        新华社北京12月11日电  中共中央政治局12月11日召开会议，分析研究2021年经济工作；听取中央纪委国家监委工作汇报，研究部署20
        新华社北京12月11日电  中共中央政治局12月11日召开会议，分析研究2021年经济工作；听取中央纪委国家监委工作汇报，研究部署20
        新华社北京12月11日电  中共中央政治局12月11日召开会议，分析研究2021年经济工作；听取中央纪委国家监委工作汇报，研究部署20
        新华社北京12月11日电  中共中央政治局12月11日召开会议，分析研究2021年经济工作；听取中央纪委国家监委工作汇报，研究部署20
        新华社北京12月11日电  中共中央政治局12月11日召开会议，分析研究2021年经济工作；听取中央纪委国家监委工作汇报，<研究部署20></研究部署20></li>
    </ul>
  </div>

  <script src="https://www.jq22.com/jquery/jquery-1.10.2.js"></script>
  <script src="https://www.jq22.com/jquery/bootstrap-4.2.1.js"></script>
  <script src="../../js/news/lin_search.js"></script>
  <script>
    //  表1


    $("#lin").on('keyup', function () {
      var table1 = $("#table-1");
      var input = $(this);
      new Search(table1, input,)

    })


    // 表2
    $('#select').on('change', function () {
      var content = $('#select') // 下拉框
      var table2 = $('#table-2')
      new Search(table2, content, '#6332f6')
    })

    // 搜索ul li
    $('#searchInput').on('keyup', function () {
      var content = $('.ul') // 
      var input = $(this)
      new Search(content, input, '#6332f6')
    })



  </script>




</body>

</html>