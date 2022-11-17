if (document.readyState == 'loading') {
    document.addEventListener('DOMContentLoaded', ready)
} else {
    ready();
}

function ready(){
var removeCartItemButtons = document.getElementsByClassName("cart-remove");
console.log(removeCartItemButtons);
for (var i = 0; i < removeCartItemButtons.length; i++ ){
    var button = removeCartItemButtons[i];
    button.addEventListener('click', removeCartItem);
}
    var quantityInputs = document.getElementsByClassName('quantity');
    for (var i = 0; i < quantityInputs.length; i++ ){
        var input = quantityInputs[i];
        input.addEventListener('change', quantityChanged);
    }

    var addCart = document.getElementsByClassName("add-to-cart");
    for (var i = 0; i < addCart.length; i++) {
    var button = addCart[i];
    button.addEventListener("click", addCartClicked);
}
}


function removeCartItem(event) {
    var buttonClicked = event.target;
        buttonClicked.parentElement.remove();
}

function quantityChanged(event) {
    var input = event.target;
    if(isNaN(input.value) || input.value <= 0) {
        input.value = 1;
    }
}


let cart = document.querySelector('.shopping-cart');

//add to cart

function addCartClicked(event) {
    var button = event.target;
    var shopProducts = button.parentElement;
    var title = shopProducts.getElementsByClassName('product-title')[0].innerText;
    var price = shopProducts.getElementsByClassName('price')[0].innerText;
    var productImg = shopProducts.getElementsByClassName('product-img')[0].src;
    addProductToCart(title, price, productImg);
}
function addProductToCart(title, price, productImg){
    var cartShopBox = document.createElement("div");
    cartShopBox.classList.add("cart-box");
    var cartItems = document.getElementsByClassName('cart-content')[0];
    var cartItemsNames = cartItems.getElementsByClassName('cart-product-title');



var cartBoxContent = `
                        <i class="fas fa-trash cart-remove"></i>
                        <img src="${productImg}" class="cart-img" alt="">
                        <div class="content">
                            <h3 class="cart-product-title">${title}</h3>
                            <span class="cart-price">${price}</span>
                            <input type="number" name="" value="1" class="cart-quantity">
                        </div>`;

cartShopBox.innerHTML = cartBoxContent;
cartItems.append(cartShopBox);
cartShopBox.getElementsByClassName('cart-remove')[0].addEventListener('click', removeCartItem);
cartShopBox.getElementsByClassName('cart-quantity')[0].addEventListener('change', quantityChanged);

return;
}