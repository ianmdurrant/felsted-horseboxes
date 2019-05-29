/* eslint no-console:0 */

import Rails from 'rails-ujs';
import $ from 'jquery';
import Turbolinks from 'turbolinks';
import Foundation from 'foundation-sites';
import * as ActiveStorage from 'activestorage';

// Javascript
import 'owl.carousel';

// Styles
import 'owl.carousel/dist/assets/owl.carousel.css';
import '../application.scss';

// Images
import 'images/facebook.svg';
import 'images/instagram.svg';
import 'images/facebook-white.svg';
import 'images/instagram-white.svg';


Rails.start();
Turbolinks.start();
ActiveStorage.start();
Foundation.addToJquery($);

document.addEventListener('turbolinks:load', function () {
  $(document).foundation();
});

$(document).on("turbolinks:load", function() {
  $(document).foundation();

  setTimeout(function(){
    if ($('#slider.owl-carousel').length > 0) {
      $('#slider').owlCarousel({
        items: 3,
        autoplayHoverPause: true,
        loop: true,
        margin: 0,
        autoHeight: true,
        nav: true,
        dots: true,
        autoplay: true,
        navText: ['next', 'prev'],
        responsive: {
          0: {
            items: 1
          },
          640: {
            items: 3
          }
        }
      });
    }
    if ($('#testimonialCarousel').length) {
      $('#testimonialCarousel').owlCarousel({
        autoplay: true,
        autoplayHoverPause: true,
        dots: true,
        items: 1,
        loop: true,
        margin: 0,
      })
    }

  }, 500);
});
