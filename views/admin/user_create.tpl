{% extends './../admin_layout.tpl' %}

{% block css %}
<link rel="stylesheet" href="/stylesheets/layout.css">
<link rel="stylesheet" type="text/css" href="/stylesheets/user_create.css">
{% endblock %}

{% block header %}
  {{ super() }}
{% endblock %}

{% block content %}
<div class="container">
  <div class="create-container">
    <div class="create-content">
      <h2 class="create-title">新建用户管理</h2>
      <span class="create-back"><a href="/admin/user">返回用户列表</a> </span>
    </div>

    <div class="create-input">
      <div class="input-item">
        <span class="name">姓名:</span>
        <input class="input-content" type="text" name="姓名" placeholder="请输入名字" value="" />
      </div>

      <div class="input-item">
        <span class="name">电话:</span>
        <input class="input-phone" type="text" nember="电话" placeholder="请输入电话" value="" />
      </div>

      <div class="input-item">
        <span class="name">密码:</span>
        <input class="input-password" type="password" name="密码" placeholder="请输入密码" value="" />
      </div>

      <div class="input-item">
        <span class="name">角色:</span>
        <select class="input-role">
          <option value="0">请选择角色</option>
          <option value="1">管理员</option>
          <option value="2">销售</option>
        </select>
      </div>
    </div>

    <div class="save-item">
      <button class="save-buttom">新增</button>
    </div> 
  </div>
</div>
{% endblock %}

{% block js %}
<script src="https://lib.baomitu.com/jquery/3.3.1/jquery.min.js"></script>
<script src="/javascripts/user_create.js"></script>
{% endblock %}