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

function setVh() {
    let vh =window.innerHeight * 0.01;
    document.documentElement.style.setProperty('--vh', `${vh}px`);
}
setVh();
window.addEventListener('resize', setVh);
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
