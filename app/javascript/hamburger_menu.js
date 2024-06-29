document.addEventListener("DOMContentLoaded", function() {
  const hamburgerMenu = document.querySelector(".hamburger-menu");
  const navMenu = document.querySelector(".nav");

  if (!hamburgerMenu) {
    console.error("Hamburger menu not found.");
    return;
  }

  if (!navMenu) {
    console.error("Navigation menu not found.");
    return;
  }

  hamburgerMenu.addEventListener("click", function() {
    navMenu.classList.toggle("active");
    hamburgerMenu.classList.toggle("active")
    document.body.classList.toggle("no-scroll");
  });
});
