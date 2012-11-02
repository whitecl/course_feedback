// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

var request_feedback_list = function() {
    var $feedback_list = $('#feedbacks_list');
    $feedback_list.fadeOut();
    $.ajax({
        url: '/poll_feedback',
        success: function(response_body) {
            $feedback_list.empty();
            $feedback_list.append(response_body);
            $feedback_list.fadeIn();
            
            poll_feedback_list();
        }
    });
}

var poll_feedback_list = function() {
    setTimeout('request_feedback_list()', 10000);
}

$(document).ready(function() {
    if ($('#feedbacks_list').length > 0) {
        poll_feedback_list();   
    }
});