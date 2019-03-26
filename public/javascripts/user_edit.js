const PAGE={
  init:function(){
    this.bind();
  },
  bind:function(){
    $('.save-buttom').on('click',this.newUser);
  },
  newUser:function(){
    let id =$("#userId").val();
    let name = $('.input-content').val();
    console.log(name);
    let phone = $('.input-phone').val();
    console.log(phone);
    let password = $('.input-password').val();
    console.log(password);
    let role=$('.input-role').val();
    console.log(role);
    if(!name || !phone || !password || !role){
      alert('缺少参数')
      return
    }
    $.ajax({
      url:'/api/user/' + id,
      data:{name,phone,password,role},
      type:'PUT',
      success:function(data){
        console.log(data);
        if(data.code==200){
          alert('编辑成功！')
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