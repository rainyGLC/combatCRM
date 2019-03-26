{% extends './../admin_layout.tpl' %}

{% block css %}
<link rel="stylesheet" href="/stylesheets/layout.css">
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/stylesheets/user.css">
{% endblock %}

{% block header %}
  {{ super() }}
{% endblock %}

{% block content %}
<div class="container">
  <div class="admin-container">
    <div class="personnel-container">
      <h2 class="personnel-title">人员管理</h2>
      <span class="personnel-add"><a href="/admin/user_create">新增人员>></a></span>
    </div>
    <div class="personnel-list">
      <table class="table table-bordered">
        <thead>
          <tr>
            <th scope="col">姓名</th>
            <th scope="col">电话</th>
            <th scope="col">角色</th>
            <th scope="col">创建时间</th>
            <th scope="col">操作</th>
          </tr>
        </thead>
        <tbody>
          {% for val in users %}
          <tr>
            <th scope="row">{{val.name}}</th>
            <td>{{val.phone}}</td>
            <td>{{val.role}}</td>
            <td>{{val.create_time_display}}</td>
            <td><a href="/admin/user/{{val.id}}/edit">编辑</a></td>
          </tr>
          {% endfor %}
        </tbody>
      </table>   
    </div>
  </div>
</div>
{% endblock %}

{% block js %}
{% endblock %}