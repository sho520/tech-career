$(function(){
  $('#toggle_switch').on('click', function() {
    $(this).next('th').slideToggle();
  })
});
