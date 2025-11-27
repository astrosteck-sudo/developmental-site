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
first_slide.addEventListener("click", () => {
    [first_pic,second_pic, third_pic, fourth_pic].forEach(pic => pic.style.opacity = 0)
    setTimeout(() => {
        first_pic.src = "Kyabobo-National-Park-Head-Quaters-And-Entrance-Nkwanta-Ghana-TortoisePathcom-11-1024x684.webp";
        image_description.textContent = "NewLife"
        second_pic.src = "kente_town.jpeg";
        third_pic.src = "sunset_forest.jpeg";
        fourth_pic.src = "volta-lake.jpg";
        [first_pic, second_pic, third_pic, fourth_pic].forEach(pic => pic.style.opacity = 1);
    }, 400);
});

second_slide.addEventListener("click", () => {
    [first_pic,second_pic, third_pic, fourth_pic].forEach(pic => pic.style.opacity = 0)
    setTimeout(() => {
        first_pic.src = "kakum_canopy_walk.jpg";
        second_pic.src = "a3-1.webp";
        third_pic.src = "AF1QipM0FYBK-yC2GDx4mY0oP1UM9kPjRX6B1UJnn21ns680-w680-h510.jpg";
        fourth_pic.src = "caption.jpg";
        [first_pic, second_pic, third_pic, fourth_pic].forEach(pic => pic.style.opacity = 1);
    }, 400);//gallery_imges/AF1QipM0FYBK-yC2GDx4mY0oP1UM9kPjRX6B1UJnn21ns680-w680-h510.jpg gallery_imges/caption.jpg
});

third_slide.addEventListener("click", () => {
    [first_pic,second_pic, third_pic, fourth_pic].forEach(pic => pic.style.opacity = 0)
    setTimeout(() => {
        first_pic.src = "Amedzofe2.webp";
        second_pic.src = "phare-cap-saint-paul.jpg";
        third_pic.src = "nn.jpg";
        fourth_pic.src = "Kalakpa-Game-Production-Reserve.jpg";
        [first_pic, second_pic, third_pic, fourth_pic].forEach(pic => pic.style.opacity = 1);
    }, 400);
});

const sets = [
  [
    "Kyabobo-National-Park-Head-Quaters-And-Entrance-Nkwanta-Ghana-TortoisePathcom-11-1024x684.webp",
    "Kalakpa-Game-Production-Reserve.jpg",
    "caption.jpg",
    "volta-lake.jpg"
  ],
  [
    "nn.jpg",
    "phare-cap-saint-paul.jpg",
    "kente_town.jpeg",
    "Amedzofe2.webp"
  ],
  [
    "kakum_canopy_walk.jpg",
    "Fort-Prinzenstein.webp",
    "sunset_forest.jpeg",
    "AF1QipM0FYBK-yC2GDx4mY0oP1UM9kPjRX6B1UJnn21ns680-w680-h510.jpg"
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

/*<body>
    
    <div id="mybox">
        Click me😊 
    </div>

    <button id="mybutton">Click me</button>

    <script src="index.js"></script>
</body>*/
// const mybox = document.getElementById("mybox")
// const mybutton = document.getElementById("mybutton")

// mybox.addEventListener("click", event => {
//     event.target.style.backgroundColor = "tomato"; //the target is what we clicked on
//     event.target.textContent = "OUCH🤕"
// });
// mybox.addEventListener("mouseover", event => {
//     event.target.style.backgroundColor = "yellow"; //the target is what we clicked on
//     event.target.textContent = "Don't do it 😯"
// })
// mybox.addEventListener("mouseout", event => {
//     event.target.style.backgroundColor = "lightgreen"; //the target is what we clicked on
//     event.target.textContent = "Click Me 😊"
// })
