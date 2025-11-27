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

let first_image_description = document.getElementById("1_image_description")
let second_image_description = document.getElementById("2_image_description")
let third_image_description = document.getElementById("3_image_description")
let fourth_image_description = document.getElementById("4_image_description")


const second_slide = document.getElementById("second")
const first_slide = document.getElementById("first")
const third_slide = document.getElementById("third")

first_slide.addEventListener("click", () => {
    [first_pic,second_pic, third_pic, fourth_pic].forEach(pic => pic.style.opacity = 0)
    setTimeout(() => {
        first_pic.src = "Kyabobo-National-Park-Head-Quaters-And-Entrance-Nkwanta-Ghana-TortoisePathcom-11-1024x684.webp";
        first_image_description.textContent = "Kyabobo-National-Park";

        second_pic.src = "kente_town.jpeg";
        second_image_description.textContent = "Kpetoe Kente Weaving Village";

        third_pic.src = "sunset_forest.jpeg";
        third_image_description.textContent = "Agumatsa Wildlife Sanctuary";

        fourth_pic.src = "volta-lake.jpg";
        fourth_image_description.textContent = "Volta Lake";
        [first_pic, second_pic, third_pic, fourth_pic].forEach(pic => pic.style.opacity = 1);
    }, 400);
});

second_slide.addEventListener("click", () => {
    [first_pic,second_pic, third_pic, fourth_pic].forEach(pic => pic.style.opacity = 0)
    setTimeout(() => {
        first_pic.src = "kakum_canopy_walk.jpg";
        first_image_description.textContent = "Kakum Canpy Walk";

        second_pic.src = "a3-1.webp";
        second_image_description.textContent = "Mountain Afajato";

        third_pic.src = "AF1QipM0FYBK-yC2GDx4mY0oP1UM9kPjRX6B1UJnn21ns680-w680-h510.jpg";
        third_image_description.textContent = "Golden Beaches";

        fourth_pic.src = "caption.jpg";
        fourth_image_description.textContent = "Aflambo Falls";
        [first_pic, second_pic, third_pic, fourth_pic].forEach(pic => pic.style.opacity = 1);
    }, 400);//gallery_imges/AF1QipM0FYBK-yC2GDx4mY0oP1UM9kPjRX6B1UJnn21ns680-w680-h510.jpg gallery_imges/caption.jpg
});

third_slide.addEventListener("click", () => {
    [first_pic,second_pic, third_pic, fourth_pic].forEach(pic => pic.style.opacity = 0)
    setTimeout(() => {
        first_pic.src = "Amedzofe2.webp";
        first_image_description.textContent = "Amedzofe Falls";

        second_pic.src = "phare-cap-saint-paul.jpg";
        second_image_description.textContent = "Cape St. Paul Lighthouse";

        third_pic.src = "nn.jpg";
        third_image_description.textContent = "Mountain Afajato";

        fourth_pic.src = "Kalakpa-Game-Production-Reserve.jpg";
        fourth_image_description.textContent = "Kalakpa Game Production";

        [first_pic, second_pic, third_pic, fourth_pic].forEach(pic => pic.style.opacity = 1);
    }, 400);
});

const sets = [
  [
    { src: "Kyabobo-National-Park-Head-Quaters-And-Entrance-Nkwanta-Ghana-TortoisePathcom-11-1024x684.webp", desc: "Kyabobo National Park Entrance" },
    { src: "Kalakpa-Game-Production-Reserve.jpg", desc: "Kalakpa Game Reserve" },
    { src: "caption.jpg", desc: "Aflambo Falls" },
    { src: "volta-lake.jpg", desc: "Lake Volta" }
  ],
  [
    { src: "nn.jpg", desc: "Mountain Afadjato" },
    { src: "phare-cap-saint-paul.jpg", desc: "Cape Saint Paul Lighthouse" },
    { src: "kente_town.jpeg", desc: "Kpetoe Kente Weaving Village" },
    { src: "Amedzofe2.webp", desc: "Amedzofe Falls" }
  ],
  [
    { src: "kakum_canopy_walk.jpg", desc: "Kakum Canopy Walk" },
    { src: "Fort-Prinzenstein.webp", desc: "Fort Prinzenstein" },
    { src: "sunset_forest.jpeg", desc: "Agumatsa Wildlife Sanctuary" },
    { src: "AF1QipM0FYBK-yC2GDx4mY0oP1UM9kPjRX6B1UJnn21ns680-w680-h510.jpg", desc: "Golden Beaches" }
  ]
];
// ============ MOBILE LOGIC ============ //
if (window.innerWidth <= 768) {
  const galleryContainer =
    document.querySelector(".gallery-container") ||
    document.querySelector(".gallery");

  if (galleryContainer) {
    galleryContainer.innerHTML = ""; // clear the 4 default images

    // Combine all 3 sets into one array of 12 objects
    const allImages = sets.flat();

    // Add all 12 images with descriptions
    allImages.forEach(item => {

      // create wrapper
      const wrapper = document.createElement("div");
      wrapper.classList.add("gallery-item");
      wrapper.style.marginBottom = "15px";
      wrapper.style.textAlign = "center";

      // create image
      const img = document.createElement("img");
      img.src = item.src;
      img.style.width = "100%";
      img.style.borderRadius = "10px";
      img.style.transition = "transform 0.3s ease";

      img.addEventListener("touchstart", () => img.style.transform = "scale(1.02)");
      img.addEventListener("touchend", () => img.style.transform = "scale(1)");

      // create description
      const text = document.createElement("p");
      text.textContent = item.desc;
      text.style.fontSize = "20px";
      text.style.color = "gold";
      text.style.marginTop = "6px";
      text.style.textShadow= "2px 2px 8px rgba(1, 1, 1, 0.27)";
      text.style.fontWeight = "bold"
      // append both
      wrapper.appendChild(img);
      wrapper.appendChild(text);

      galleryContainer.appendChild(wrapper);
    });
  }
}








// const sets = [
//   [
//     { src:"gallery_imges/Kyabobo-National-Park-Head-Quaters-And-Entrance-Nkwanta-Ghana-TortoisePathcom-11-1024x684.webp", desc: ""},
//     "gallery_imges/Kalakpa-Game-Production-Reserve.jpg",
//     "gallery_imges/caption.jpg",
//     "gallery_imges/volta-lake.jpg"
//   ],
//   [
//     "gallery_imges/nn.jpg",
//     "gallery_imges/phare-cap-saint-paul.jpg",
//     "gallery_imges/kente_town.jpeg",
//     "gallery_imges/Amedzofe2.webp"
//   ],
//   [
//     "gallery_imges/kakum_canopy_walk.jpg",
//     "gallery_imges/Fort-Prinzenstein.webp",
//     "gallery_imges/sunset_forest.jpeg",
//     "gallery_imges/AF1QipM0FYBK-yC2GDx4mY0oP1UM9kPjRX6B1UJnn21ns680-w680-h510.jpg"
//   ]
// ];
// // ============ MOBILE LOGIC ============ //
// if (window.innerWidth <= 768) {
//   const galleryContainer = document.querySelector(".gallery-container") || document.querySelector(".gallery"); 
//   if (galleryContainer) {
//     galleryContainer.innerHTML = ""; // clear the 4 default images

//     // Combine all 3 sets into one array of 12 images
//     const allImages = sets.flat();

//     // Add all 12 images to the gallery
//     allImages.forEach(src => {
//       const img = document.createElement("img");
//       img.src = src;
//       img.style.width = "100%";
//       img.style.borderRadius = "10px";
//       img.style.marginBottom = "10px";
//       img.style.transition = "transform 0.3s ease";
//       img.addEventListener("touchstart", () => img.style.transform = "scale(1.02)");
//       img.addEventListener("touchend", () => img.style.transform = "scale(1)");
//       galleryContainer.appendChild(img);
//     });
//   }
// }

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
