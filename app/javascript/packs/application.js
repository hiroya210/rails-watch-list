// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
import "../../../node_modules/jquery-bar-rating/dist/themes/css-stars.css";
import "jquery-bar-rating";

import Rails from "@rails/ujs";
import Typed from 'typed.js';
import Turbolinks from "turbolinks";
import * as ActiveStorage from "@rails/activestorage";
import "channels";
import 'bootstrap';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Lists of all movies around the world", "Simplified for you"],
    typeSpeed: 50,
    loop: true
  });
}


Rails.start();
Turbolinks.start();
ActiveStorage.start();


$(document).on('turbolinks:load', () => {
  $("#review_rating").barrating({
    theme: "css-stars"
  });
  loadDynamicBannerText();  
});
