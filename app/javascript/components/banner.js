import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#title-to-type', {
    strings: ["Find the cocktail you need", "Slurp!!"],
    typeSpeed: 80,
    loop: true
  });
}

export { loadDynamicBannerText };
