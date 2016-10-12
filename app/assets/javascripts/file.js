$(document).on('turbolinks:load', function(){
  //Raty
  $('.rating').raty( {path: '/assets', scoreName: 'comment[rating]'});
  $('.rated').raty({ path: '/assets', 
    readOnly: true, 
    score: function() {
      return $(this).attr('data-score');
    }
  });

  //Elevate Zoom
  $('.img-zoom').elevateZoom( {
    zoomType : "lens",
    lensShape : "round",
    lensSize : "200"
  });
});