{% extends './../admin_layout.tpl' %}

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
          {% for val in clues %}
          <tr>
            <th scope="row">{{val.name}}</th>
            <td>{{val.phone}}</td>
            <td>{{val.source}}</td>
            <td>{{val.create_time_display}}</td>
            <td>{{val.role}}</td>
            {% if val.status==1 %}
            <td>没有意向</td>
            {% elif val.status==2 %}
            <td>意向一般</td>
            {% elif val.status==3 %}
            <td>意向强烈</td>
            {% elif val.status==4 %}
            <td>完成销售</td>
            {% elif val.status==5 %}
            <td>取消销售</td>
            {% else %}
            <td>-</td>
            {% endif %}
            <td><a href="/admin/clue/{{val.id}}/clue_record">跟踪</a></td>
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