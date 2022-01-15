import Splide from '@splidejs/splide';

export const slides = () => {
  const thumbnails = new Splide( '.splide', {
        trimSpace   : false,
        focus       : 'center',
        fixedWidth  : 320,
        fixedHeight : 160,
        gap         : 10,
        rewind      : true,
        pagination  : false,
        cover       : true,
        isNavigation: true,
        breakpoints : {
          600: {
            fixedWidth : 100,
            fixedHeight: 100,
          },
        },
    }).mount();

  const main = new Splide( '#main-slider', {
        type      : 'fade',
        rewind    : true,
        pagination: false,
        arrows    : false,
  }).mount();

main.sync( thumbnails );
main.mount();
thumbnails.mount();
}