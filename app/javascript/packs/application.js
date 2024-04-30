// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs";
import Turbolinks from "turbolinks";
import * as ActiveStorage from "@rails/activestorage";
import "channels";
import 'bootstrap';
import "select2";
import { loadDynamicBannerText } from "../components/type.js"
import { barrating } from "../components/barrating"
import { slides } from "../components/splide"
import { unclickable } from "../components/unclickable"

const $ = require('jquery')

Rails.start();
Turbolinks.start();
ActiveStorage.start();

const path = typeof (parseInt(window.location.pathname.split("/")[2]));

document.addEventListener('turbolinks:load', () => {
  const { main, thumbnails } = slides();
  if (window.location.pathname === "/"){ loadDynamicBannerText(); }
  if ( path === "number" ) {
    // barrating();
    unclickable();
    main.sync( thumbnails );
    main.mount();
    thumbnails.mount();
  }
});


document.addEventListener('turbolinks:load', () => {
  $('#bookmark_movie_id').select2({
    placeholder: 'Select a movie',
    tags: true
  });
  slides();
});

// document.addEventListener('turbolinks:load', () => {
//   barrating();
// });

// document.addEventListener('turbolinks:load', () => {
//   unclickable();
// });
