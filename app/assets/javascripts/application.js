// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require sweet-alert
//= require sweet-alert-confirm
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .

$(document).ready(function() {

  $(document).on('click', "tr[data-link]", function() {
    window.location = $(this).data('link')
  });

  $(document).on('click', '#view-issues-btn', function() {
    $('#issues-table').toggle("slow");
    $(this).children('p').text(function(i, t) {
      return t == 'Show All Issues' ? 'Hide All Issues' : 'Show All Issues';
    });
  });

});