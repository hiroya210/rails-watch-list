import Splide from '@splidejs/splide';



export const slides = (maxWidth) => {



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
    })

  const main = new Splide( '#main-slider', {
        fixedHeight: "60vh",
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
  })

main.sync( thumbnails );
main.mount();
thumbnails.mount();
}