// Home slideShow
let slideIndex = 0;
showSlides();

function showSlides() {
  let i;
  let slides = document.getElementsByClassName("slideshow");
  let dots = document.getElementsByClassName("dot");
  
  // Hide all slides
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  
  // Increment slideIndex
  slideIndex++;
  
  // Reset slideIndex if it exceeds the number of slides
  if (slideIndex > slides.length) { slideIndex = 1; }
  
  // Remove the active class from all dots
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(/ active/g, ""); // Use regex to remove all occurrences of 'active'
  }
  
  // Display the current slide and add the active class to the corresponding dot
  slides[slideIndex - 1].style.display = "block";  
  dots[slideIndex - 1].className += " active";
  
  // Change image every 2 seconds
  setTimeout(showSlides, 2000);
}
