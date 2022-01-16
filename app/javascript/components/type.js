import Typed from 'typed.js';

export const loadDynamicBannerText = () => {
    new Typed('#banner-typed-text', {
      strings: ["Movies around the world", "Simplified for you"],
      typeSpeed: 50,
      loop: true
    });
  }
  