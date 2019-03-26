{% extends './../users_layout.tpl' %}

{% block css %}
<link rel="stylesheet" href="/stylesheets/layout.css">
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/stylesheets/clue.css">
{% endblock %}

{% block header %}
  {{ super() }}
{% endblock %}

{% block content %}
<div class="container">
  <div class="clue-container">
    <div class="clue-content">
      <h2 class="clue-title">线索列表管理</h2>
    </div>
    <div class="clue-list">
      <table class="table table-bordered">
        <thead>
          <tr>
            <th scope="col">姓名</th>
            <th scope="col">电话</th>
            <th scope="col">来源</th>
            <th scope="col">创建时间</th>
            <th scope="col">跟踪销售</th>
            <th scope="col">状态</th>
            <th scope="col">操作</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope="row">1</th>
            <td>Mark</td>
            <td>Otto</td>
            <td>@mdo</td>
            <td>编辑</td>
            <td>编辑</td>
            <td>编辑</td>
          </tr>
          <tr>
            <th scope="row">2</th>
            <td>Jacob</td>
            <td>Thornton</td>
            <td>@fat</td>
            <td>编辑</td>
            <td>编辑</td>
            <td><a href="/users/clue/clue_record">跟踪</a></td>
          </tr>
        </tbody>
      </table> 
    </div>
  </div>
</div>
{% endblock %}

{% block js %}
{% endblock %}