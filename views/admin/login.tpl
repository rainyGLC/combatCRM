{% extends './../layout.tpl' %}

{% block css %}
<link rel="stylesheet" type="text/css" href="/stylesheets/admin_login.css" />
{% endblock %}
 
{% block content %}
<div class="wrapper">
  <div class="form-section">
    <div class="form-title">管理系统后台登录</div>
    <div class="form-item">
      <input id="userPhone" type="text" class="form-input" placeholder="你的手机"/>
    </div>
    <div class="form-item">
      <input id="userPassword" type="text" class="form-input" placeholder="你的密码"/>
    </div>
    <div class="form-item">
      <button id="userSubmit" class="form-button">马上抢占名额</button>
    </div>
  </div>
</div>
{% endblock %}
