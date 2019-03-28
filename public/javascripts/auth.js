const PAGE ={
  init:function(){
    this.bind();
  },
  bind:function(){
    $(".form-button").on('click',this.buttonSubmit);
  },
  buttonSubmit:function(){
    let phone = $('#userPhone').val();
    let password=$('#userPassword').val();
    if(!phone || !password){
      alert('params empty!')
      return
    }
    $.ajax({
      url:'/api/login',
      data:{phone,password},
      type:'POST',
      success:function(data){
        if(data.code===200){
          alert('登录成功')
          location.reload()
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