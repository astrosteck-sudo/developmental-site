/*<body>
    
    <div class="slider">
        <div class="slides">
            <img class="slide" src="images/eye.jpg">
            <img class="slide" src="images/food pot.jpg">
            <img class="slide" src="images/continental.jpg">
        </div>
        <button class="prev" onclick="prevSlide()">&#10094</button>
        <button class="next" onclick="nextSlide()">&#10095</button>
    </div>


     <script src="index.js"></script>
</body>*/

const slides = document.querySelectorAll(".slides img")
let slideIndex = 0
let intervalId = null

document.addEventListener("DOMContentLoaded", initializeSlider)
function initializeSlider(){
    if(slides.length > 0){
        slides[slideIndex].classList.add("displaySlide");
        intervalId = setInterval(nextSlide, 5000);
    }
}
function showSlide(index){
    if(index >= slides.length){
        slideIndex = 0
    }//this is to make sure that when the image reaches the last image it resets back to the first
    else if(index < 0){
        slideIndex = slides.length - 1
    }//this is to make sure that when the image reaches the first image it resets back to the last

    slides.forEach(slide => {
        slide.classList.remove("displaySlide");
    });
    slides[slideIndex].classList.add("displaySlide");
}


function nextSlide(){
    slideIndex++
    showSlide(slideIndex)
}
let first_pic = document.getElementById("first_pic")
let second_pic = document.getElementById("second_pic")
let third_pic = document.getElementById("third_pic")
let fourth_pic = document.getElementById("fourth_pic")

let image_description = document.getElementById("image_description")

const second_slide = document.getElementById("second")
const first_slide = document.getElementById("first")
const third_slide = document.getElementById("third")
second_slide.addEventListener("click", () => {
    [first_pic,second_pic, third_pic, fourth_pic].forEach(pic => pic.style.opacity = 0)
    setTimeout(() => {
        first_pic.src = "pexels-gabriela-palai-129458-395196(1).jpg";
        image_description.textContent = "NewLife"
        second_pic.src = "pexels-harold-granados-115813190-9984286.jpg";
        third_pic.src = "pexels-simonmigaj-746386.jpg";
        fourth_pic.src = "pexels-jjagtenberg-103123.jpg";
        [first_pic, second_pic, third_pic, fourth_pic].forEach(pic => pic.style.opacity = 1);
    }, 400);
});

first_slide.addEventListener("click", () => {
    [first_pic,second_pic, third_pic, fourth_pic].forEach(pic => pic.style.opacity = 0)
    setTimeout(() => {
        first_pic.src = "pexels-quang-nguyen-vinh-222549-2153722.jpg";
        second_pic.src = "pexels-quang-nguyen-vinh-222549-6877880.jpg";
        third_pic.src = "pexels-mikhail-nilov-9207076.jpg";
        fourth_pic.src = "pexels-diana-reyes-227887231-32514943.jpg";
        [first_pic, second_pic, third_pic, fourth_pic].forEach(pic => pic.style.opacity = 1);
    }, 400);
});

third_slide.addEventListener("click", () => {
    [first_pic,second_pic, third_pic, fourth_pic].forEach(pic => pic.style.opacity = 0)
    setTimeout(() => {
        first_pic.src = "pexels-zulfugarkarimov-34313512.jpg";
        second_pic.src = "pexels-ozgomz-840719.jpg";
        third_pic.src = "pexels-nandhukumar-450441(1).jpg";
        fourth_pic.src = "pexels-svliiim-34305420.jpg";
        [first_pic, second_pic, third_pic, fourth_pic].forEach(pic => pic.style.opacity = 1);
    }, 400);
});

const sets = [
  [
    "pexels-quang-nguyen-vinh-222549-2153722.jpg",
    "pexels-quang-nguyen-vinh-222549-6877880.jpg",
    "pexels-mikhail-nilov-9207076.jpg",
    "pexels-diana-reyes-227887231-32514943.jpg"
  ],
  [
    "pexels-gabriela-palai-129458-395196(1).jpg",
    "pexels-harold-granados-115813190-9984286.jpg",
    "pexels-simonmigaj-746386.jpg",
    "pexels-jjagtenberg-103123.jpg"
  ],
  [
    "pexels-zulfugarkarimov-34313512.jpg",
    "pexels-ozgomz-840719.jpg",
    "pexels-nandhukumar-450441(1).jpg",
    "pexels-svliiim-34305420.jpg"
  ]
];
// ============ MOBILE LOGIC ============ //
if (window.innerWidth <= 768) {
  const galleryContainer = document.querySelector(".gallery-container") || document.querySelector(".gallery"); 
  if (galleryContainer) {
    galleryContainer.innerHTML = ""; // clear the 4 default images

    // Combine all 3 sets into one array of 12 images
    const allImages = sets.flat();

    // Add all 12 images to the gallery
    allImages.forEach(src => {
      const img = document.createElement("img");
      img.src = src;
      img.style.width = "100%";
      img.style.borderRadius = "10px";
      img.style.marginBottom = "10px";
      img.style.transition = "transform 0.3s ease";
      img.addEventListener("touchstart", () => img.style.transform = "scale(1.02)");
      img.addEventListener("touchend", () => img.style.transform = "scale(1)");
      galleryContainer.appendChild(img);
    });
  }
}
