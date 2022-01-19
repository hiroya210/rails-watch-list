import Splide from '@splidejs/splide';



export const slides = () => {

  let maxHeight = window.innerHeight;
  if ((maxHeight < 1230) && (maxHeight > 1400)){
    let maxHeight = "100vh"
  }
  else{
    let maxHeight = "60vh"
  }


  const thumbnails = new Splide( '.splide', {
        trimSpace   : false,
        focus       : 'center',
        fixedWidth  : 160,
        fixedHeight : 240,
        gap         : 10,
        rewind      : true,
        pagination  : false,
        cover       : true,
        isNavigation: true,
        breakpoints : {
          560: {
            fixedWidth : 100,
            fixedHeight: 200,
          },
        },
    }).mount();

  const main = new Splide( '#main-slider', {
        fixedHeight: maxHeight,
        fixedWidth: "95vw",
        type      : 'fade',
        rewind    : true,
        pagination: false,
        arrows    : false,
        breakpoints : {
          560: {
            fixedWidth : "100",
            fixedHeight: "50vh",
          }
        },
  }).mount();

main.sync( thumbnails );
main.mount();
thumbnails.mount();
}