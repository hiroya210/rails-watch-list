// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs";
import Turbolinks from "turbolinks";
import * as ActiveStorage from "@rails/activestorage";
import "channels";
import 'bootstrap';
import { loadDynamicBannerText } from "../components/type.js"
import { barrating } from "../components/barrating"
import { slides } from "../components/splide"
import "select2";
import { unclickable } from "../components/unclickable"

Rails.start(); 
Turbolinks.start();
ActiveStorage.start();


document.addEventListener('turbolinks:load', () => {
  loadDynamicBannerText();
});

document.addEventListener('turbolinks:load', () => {
  $('#bookmark_movie_id').select2({
    placeholder: 'Select a movie',
    tags: true
  });
  slides();
});

document.addEventListener('turbolinks:load', () => {
  barrating();
});

document.addEventListener('turbolinks:load', () => {
  unclickable();
});
