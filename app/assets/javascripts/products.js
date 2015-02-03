$(document).on('ready page:load', function(){
  // See if this is a touch device
  if ('ontouchstart' in window) {
    // Set the correct body class
    $('body').removeClass('no-touch').addClass('touch');

    // Add the touch toggle to show text
    $('div.box-inner img').click(function() {
      $(this).closest('.box-inner').toggleClass('touchFocus');
    });
  }

  $('#products .page').infinitescroll({
    navSelector: 'nav.pagination',
    nextSelector: 'nav.pagination a[rel=next]',
    itemSelector: '#products div.product'
  });
});