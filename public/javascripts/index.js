const PAGE={
  init:function(){
    this.bind();
  },
  bind:function(){
    $('.form-button').on('click',this.buttonSubmit);
  },
  buttonSubmit:function(){
    let name = $('#userName').val();
    console.log(name);
    let phone =$('#userPhone').val();
    console.log(phone)
    if(!name || !phone){
      alert('params empty!')
      return
    }
    $.ajax({
      url:'/api/clue/?source=' + 'weixin',
      data:{name,phone},
      type:'POST',
      success:function(data){
        if(data.code==200){
          alert('提交成功')
          location.reload()
        }else{
          console.log(data)
        }
      }
    })
  }
}
PAGE.init();