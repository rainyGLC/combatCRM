<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>{{title}}</title>
  {% block css %}
  <link rel="stylesheet" type="text/css" href="/stylesheets/layout.css">
  {% endblock %}
</head>
<body>
<div class="wapper">
  {% block header %}
  <header class="page-header">
    <div class="header-logo"></div>
    <div class="header-title">汽车销售管理系统</div>
    <div class="header-aside">
      <span class="roleName">管理员</span>
      <a class="leave">退出</a>
    </div>
  </header>
  {% endblock %}
  <div class="page-main">
    <div class="page-aside">
      <nav class="nav-list">
        <li class="nav-item"><a href="/users">人员管理</a></li>
        <li class="nav-item"><a href="/users/clue">线索管理</a></li>
      </nav>
    </div>
    <div class="page-content">
      {% block content %}
      {% endblock %}
    </div>
  </div>
</div>
  {% block js %}
  {% endblock %}
</body>
</html>