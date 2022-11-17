if (document.readyState == 'loading') {
  document.addEventListener('DOMContentLoaded', ready)
} else {
  ready();
}

function ready(){
var removeCartItemButtons = document.getElementsByClassName("product-close-btn");
console.log(removeCartItemButtons);
for (var i = 0; i < removeCartItemButtons.length; i++ ){
  var button = removeCartItemButtons[i];
  button.addEventListener('click', removeCartItem);
}
}

function removeCartItem(event) {
  var buttonClicked = event.target;
      buttonClicked.parentElement.parentElement.remove();
      totalCalc();
}

'use strict';

const quantityElem = document.querySelectorAll('#quantity');
const priceElem = document.querySelectorAll('#price');
const subtotalElem = document.querySelector('#subtotal');

const totalCalc = function () {

  // declare all initial variable
  let subtotal = 0;

  // loop: for calculating `subtotal` value from every single product
  for (let i = 0; i < quantityElem.length; i++) {

    subtotal += Number(quantityElem[i].textContent) * Number(priceElem[i].textContent);

  }

  // show the `subtotal` variable value on `subtotalElem` element
  subtotalElem.textContent = subtotal.toFixed(2);

}