// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require ckeditor/init

$(function(){
  $('input[type="radio"][name="tab"]').on('change', function(e){
    $('#tabs_head_container label').removeClass('active')
    $('#tabs_head_container label[for="' + this.id + '"]').addClass('active')
  });

  $('#slide_menu_button').on('click', function(){
    $('#slide_menu').toggleClass('active');
  });
});

$(function(){

  $('select[name=weight]').on('change', function(){
    var $thisRow = $(this).closest("tr")
    if (this.value<$('select[name=weight]').index(this)) {
      $thisRow.insertBefore($('select[name=weight]').eq(this.value).closest("tr"))
    } else {
      $thisRow.insertAfter($('select[name=weight]').eq(this.value).closest("tr"))
    }
    $('select[name=weight]').each(function(i){
      this.value = i
    });
    var newOrder = {}
    $.param($('select[name=weight]').each(function(i){
      newOrder[i] = $(this).data('id');
    }), true);
    $.post('/admin/services/update_weight', {order: newOrder})
  });

})