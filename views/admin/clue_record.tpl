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
      {% if userInfo.role==1 %}
      <div class="record-show">
        <div class="record-item">
          <span class="record-name">客户名称:{{clue.name}}</span>
        </div>

        <div class="record-item">
          <span>联系电话:{{clue.phone}}</span>
        </div>

        <div class="record-item">
          <span>线索来源:{{clue.source}}</span>
        </div>

        <div class="record-item">
          <span>创建时间:{{clue.create_time_display}}</span>
        </div>
        <div class="record-staute">
          <span>用户状态:</span>
          <select class="input-content">
            <option value="0">请选择状态</option>
            <option value="1" {% if clue.status ==1 %} selected {% endif %}>没有意向</option>
            <option value="2" {% if clue.status ==2 %} selected {% endif %}>意向一般</option>
            <option value="3" {% if clue.status ==3 %} selected {% endif %}>意向强烈</option>
            <option value="4" {% if clue.status ==4 %} selected {% endif %}>完成销售</option>
            <option value="5" {% if clue.status ==5 %} selected {% endif %}>取消销售</option>
          </select>
        </div>
        <div class="record-staute">
          <span>当前分配销售:</span>
          <select class="input-role">
            <option value="0">请选择销售</option>
            {% for val in users %}
            <option value="{{val.id}}" {% if clue.user_id==val.id %} selected {% endif %}">{{val.name}}</option>
            {% endfor %}
          </select>
        </div>
        <div class="record-staute">
          <span>备注:</span>
          <textarea class="remark">{{val.comment}}</textarea>
        </div>
        <div class="buttom-item">
          <input id="clueId" type="text" hidden value="{{clue.id}}">
          <button class="save-buttom">保存</button>
        </div>
      </div>
      {% endif %}
      <div class="record-log">
        {% for val in record %}
        <div class="log-list">
          <span class="log-time">{{val.create_time_display}}</span>
          <span class="log-comment">{{val.content}}</span>
        </div>
        {% endfor %} 
        <div class="record-add">
          <textarea class="record-remark" placeholder="跟踪内容" value=""></textarea>
        </div>
        <div class="record-buttoms">
          <button class="record-buttom">添加</button>
        </div>
      </div>
    </div>
  </div>
</div>
{% endblock %}


{% block js %}
<script src="https://lib.baomitu.com/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
  const PAGE = {
    init:function(){
      this.bind();
    },
    bind:function(){
      $(".save-buttom").on('click',this.saveSubmit);
      $(".record-buttom").on('click',this.recordSubmit);
    },
    saveSubmit:function(){
      let id = $('#clueId').val();
      let status = $('.input-content').val();
      let comment =$('.remark').val();
      let user_id=$('.input-role').val();
      if(!id || !status || !comment || !user_id){
        alert('缺少参数')
        return
      }
      $.ajax({
        url:'/api/clue/' + id,
        data:{status,comment,user_id},
        type:'PUT',
        success:function(data){
          if(data.code==200){
            alert('编辑成功')
          }else{
            alert(data)
          }
        },
        error:function(err){
          console.log(err)
        }
      })
    },
    recordSubmit:function(){
      let content = $('.record-remark').val();
      console.log(content);
      let id =$('#clueId').val();
      console.log(id);
      if(!content){
        alert('缺少参数');
        return
      }
      // $.ajax({
      //   url:'/api/clue/'+ id + '/record',
      //   data:{content},
      //   type:'POST',
      //   success:function(data){
      //     console.log(data);
      //     if(data.code==200){
      //       alert('添加成功')
      //       location.reload();
      //     }else{
      //       alert(data)
      //     }
      //   },
      //   error:function(){
      //     console.log(err)
      //   }
      // })
    }
  }
  PAGE.init();
</script>
{% endblock %}