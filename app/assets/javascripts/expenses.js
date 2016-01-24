$(function() {

  // SHOW EXPENSE RECEIPT
  var $receipt_button = $('#show-receipt');
  var $overlay = $('<div class="overlay"></div>');
  var $expense_image = $('#expense-image');

  $receipt_button.click( function(){
    $('body').append( $overlay );
    $overlay.show();
    $overlay.append( $expense_image );
    $expense_image.show();
  });

  $expense_image.click( function(e){
    e.preventDefault();
  });

  $overlay.click( function(){
    $expense_image.hide();
    $overlay.hide();
  });
});