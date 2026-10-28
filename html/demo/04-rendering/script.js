const renderBox = document.querySelector("#render-box");

document.querySelector("#resize-box").addEventListener("click", () => {
    renderBox.classList.toggle("is-wide");
});

document.querySelector("#color-box").addEventListener("click", () => {
    renderBox.classList.toggle("is-coral");
});

document.querySelector("#move-box").addEventListener("click", () => {
    renderBox.classList.toggle("is-moved");
});
