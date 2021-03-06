{% extends './layout.tpl' %}

{% block css %}
<link rel="stylesheet" href="/stylesheets/index.css">
{% endblock %}

{% block content %}
<div class="wrapper">
  <div class="form-section">
    <div class="form-title">留下电话，我们会马上联系你，为你预约优惠名额</div>
    <div class="form-item">
      <input id="userName" type="text" placeholder="你的姓名" class="form-input">
    </div>
    <div class="form-item">
      <input id="userPhone" type="member" placeholder="你的手机号码" class="form-input">
    </div>
    <div class="fom-item">
      <button class="form-button">马上抢占名额</button>
    </div>
  </div>
</div>
{% endblock %}
{% block js %}
<script src="https://lib.baomitu.com/jquery/3.3.1/jquery.min.js"></script>
<script src="/javascripts/index.js" type="text/javascript">
</script>
{% endblock %}
