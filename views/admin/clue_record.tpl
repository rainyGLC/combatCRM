{% extends './../admin_layout.tpl' %}

{% block css %}
<link rel="stylesheet" href="/stylesheets/layout.css">
<link rel="stylesheet" type="text/css" href="/stylesheets/clue_record.css">
{% endblock %}

{% block header %}
  {{ super() }}
{% endblock %}

{% block content %}
<div class="container">
  <div class="record-container">
    <div class="record-content">
      <h2 class="record-title">跟踪线索</h2>
      <span class="record-back"><a href="/admin/clue">返回线索列表</a></span>
    </div>
    <div class="record-comment">
      <div class="record-show">
        <div class="record-item">
          <span class="record-name">客户名称:名字</span>
        </div>

        <div class="record-item">
          <span>联系电话:135xxxxxxx</span>
        </div>

        <div class="record-item">
          <span>线索来源:baidu</span>
        </div>

        <div class="record-item">
          <span>创建时间:2019/03/17 11:29:11</span>
        </div>

        <div class="record-staute">
          <span>用户状态:</span>
          <select class="input-content">
            <option>请选择状态</option>
            <option>没有意向</option>
            <option>意向一般</option>
            <option>意向强烈</option>
            <option>完成销售</option>
            <option>取消销售</option>
          </select>
        </div>
        <div class="record-staute">
          <span>当前分配销售:</span>
          <select class="input-content">
            <option>请选择</option>
            <option>管理员</option>
            <option>销售</option>
          </select>
        </div>
        <div class="record-staute">
          <span>备注:</span>
          <textarea class="remark"></textarea>
        </div>

        <div class="buttom-item">
          <button class="save-buttom">保存</button>
        </div>
      </div>

      <div class="record-log">
        <div class="log-list">
          <span class="log-time">2019/03/17</span>
          <span class="log-comment">跟踪内容</span> 
        </div>

        <div class="log-list">
          <span class="log-time">2019/03/17</span>
          <span class="log-comment">跟踪内容</span> 
        </div>
        
        <div class="record-add">
          <textarea class="record-remark">学习</textarea>
        </div>
        <div class="record-buttom">
          <button class="record-add">添加</button>
        </div>
      </div>
      
    </div>
  </div>
</div>
{% endblock %}

{% block js %}
{% endblock %}