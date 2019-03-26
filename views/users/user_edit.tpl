{% extends './../users_layout.tpl' %}

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
      <h2 class="create-title">编辑人员</h2>
      <span class="create-back"><a href="/users">返回用户列表</a> </span>
    </div>

    <div class="create-input">
      <div class="input-item">
        <span class="name">姓名:</span>
        <input class="input-content" type="text" name="姓名" placeholder="名字" value="" />
      </div>

      <div class="input-item">
        <span class="name">电话:</span>
        <input class="input-content" type="text" nember="电话" placeholder="电话" value="" />
      </div>

      <div class="input-item">
        <span class="name">密码:</span>
        <input class="input-content" type="password" name="密码" placeholder="密码" value="" />
      </div>

      <div class="input-item">
        <span class="name">角色:</span>
        <select class="input-content">
          <option>请选择角色</option>
          <option>管理员</option>
          <option>销售</option>
        </select>
      </div>
    </div>

    <div class="save-item">
      <button class="save-buttom">保存</button>
    </div> 
  </div>
</div>
{% endblock %}

{% block js %}
{% endblock %}