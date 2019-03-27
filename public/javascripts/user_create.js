const PAGE={
  init:function(){
    this.bind();
  },
  bind:function(){
    $('.save-buttom').on('click',this.newUser);
  },
  newUser:function(){
    let name = $('.input-content').val();
    let phone = $('.input-phone').val();
    let password = $('.input-password').val();
    let role=$('.input-role').val();
    if(!name || !phone || !password || !role){
      alert('缺少参数')
      return
    }
    $.ajax({
      url:'/api/user',
      data:{name,phone,password,role},
      type:'POST',
      success:function(data){
        if(data.code==200){
          alert('新增成功')
        }else{
          console.log(data)
        }
      },
      error:function(err){
        console.log(err)
      }
    })
  }
}
PAGE.init();
