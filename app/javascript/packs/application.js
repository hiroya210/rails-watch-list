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

Rails.start();
Turbolinks.start();
ActiveStorage.start();


// import swal from 'sweetalert';
// const test = document.querySelector("#testing");
// test.addEventListener("click", (e) => {
//   swal({
//     title: "Oh Wow you really clicked!",
//     text: "you have been trolled ;)",
//     icon: "warning",
//   });
// })

document.addEventListener('turbolinks:load', () => {
  loadDynamicBannerText();
});

document.addEventListener('turbolinks:load', () => {
  $('#bookmark_movie_id').select2();
  slides();
});

document.addEventListener('turbolinks:load', () => {
  barrating();
});