$(function() {

  // SHOW EXPENSE RECEIPT
  var $receipt_button = $('#show-receipt');
  var $overlay = $('<div class="overlay"></div>');
  var $expense_image = $('#expense-image');

  $receipt_button.click( function(){
    $('body').append( $overlay );
    $overlay.fadeIn();
    $overlay.append( $expense_image );
    $expense_image.fadeIn("slow");
  });

  $expense_image.click( function(e){
    e.preventDefault();
  });

  $overlay.click( function(){
    $expense_image.fadeOut();
    $overlay.fadeOut("slow");
  });

});

