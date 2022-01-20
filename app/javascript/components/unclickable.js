export const unclickable = () => {
    const cardNew = document.querySelector(".new-bookmark.inactive");
    const cardLink = document.querySelector(".splide__slide.new")
    if (cardLink) {
        cardLink.addEventListener("click", (e) => {
            cardNew.classList.toggle("inactive");
        })
    }
}