import "jquery-bar-rating";
const $ = require("jquery")

export const barrating = () => {
    $("#review_rating").barrating({ theme: "css-stars" });
}
