// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
  
  $(document).ready(function() {
    var artistLink = $('.link');
  
    artistLink.on('click', function(e) {
      e.preventDefault();
  
      var albums = $('.album');
  
      albums.sort(function(a, b) {
        var aText = $(a).find('.sub_heading').text();
        var bText = $(b).find('.sub_heading').text();
        return aText.localeCompare(bText);
      });
  
      var parentElement = albums.eq(0).parent();
      albums.each(function() {
        parentElement.append($(this));
      });
    });
  });
  
  $(document).ready(function() {
    $('.link_rating').click(function(e) {
      e.preventDefault();
  
      $('.album').sort(function(a, b) {
        var ratingA = $(a).data('rating');
        var ratingB = $(b).data('rating');
  
        return ratingB - ratingA;
      }).appendTo('.main_content');
    });
  });


