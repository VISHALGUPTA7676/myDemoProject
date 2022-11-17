let searchForm = document.querySelector('.search-form');

document.querySelector('#search-btn').onclick = () =>{
    searchForm.classList.toggle('active');
    shoppingCart.classList.remove('active');
    loginForm.classList.remove('active');
    signupForm.classList.remove('active');
    navbar.classList.remove('active');
}

let shoppingCart = document.querySelector('.shopping-cart');

document.querySelector('#cart-btn').onclick = () =>{
    shoppingCart.classList.toggle('active');
    searchForm.classList.remove('active');
    loginForm.classList.remove('active');
    signupForm.classList.remove('active');
    navbar.classList.remove('active');
}

let loginForm = document.querySelector('.login-form');

document.querySelector('#login-btn').onclick = () =>{
    loginForm.classList.toggle('active');
    signupForm.classList.remove('active');
    searchForm.classList.remove('active');
    shoppingCart.classList.remove('active');
    navbar.classList.remove('active');
}

let signupForm = document.querySelector('.signup-form');

document.querySelector('#signup').onclick = () =>{
    signupForm.classList.toggle('active');
    loginForm.classList.remove('active');
    searchForm.classList.remove('active');
    shoppingCart.classList.remove('active');
    navbar.classList.remove('active');
}

let navbar = document.querySelector('.navbar');

document.querySelector('#menu-btn').onclick = () =>{
    navbar.classList.toggle('active');
    searchForm.classList.remove('active');
    shoppingCart.classList.remove('active');
    loginForm.classList.remove('active');
    signupForm.classList.remove('active');
}



var swiper = new Swiper(".product-slider", {
    loop:true,
    spaceBetween: 20,
    autoplay: {
        delay: 7500,
        disableOnInteraction: false,
    },
    centeredSlides: true,
    breakpoints: {
      0: {
        slidesPerView: 1,
      },
      768: {
        slidesPerView: 2,
      },
      1020: {
        slidesPerView: 3,
      },
    },
});



//password and confirm password
const pwd = document.querySelector("#pwd"),
      cpwd = document.querySelector("#cpwd"),
      alertIcon = document.querySelector(".errorIcon"),
      alertText = document.querySelector(".text"),
      submitBtn = document.querySelector(".button");

pwd.addEventListener("input", ()=>{
  let inputValue = pwd.value.trim();

  if(inputValue.length >= 8){
    cpwd.removeAttribute("disabled");
    submitBtn.removeAttribute("disabled");
    submitBtn.classList.add("active");
  }else{
    cpwd.setAttribute("disabled" , true);
    submitBtn.setAttribute("disabled" , true);
    submitBtn.classList.remove("active");
    cpwd.value = "";
    alertText.innerText = "Enter at least 8 characters";
    alertText.style.color = "#a6a6a6";
    alertIcon.style.display = "none";
  }
});

submitBtn.addEventListener("click" , () => {
  if(pwd.value === cpwd.value){
    alertText.innerText = "Password Matched";
    alertIcon.style.display = "none";
    alertText.style.color = "#228b22";
    return true;
  }else{
    alertText.innerText = "Password did't Matched";
    alertIcon.style.display = "block";
    alertText.style.color = "#D93025";
    return false;
  }
});



  