const LogInBtn = document.querySelector("#sign-in-link");
const LoginBox = document.querySelector("#sign-up-form");
const form = document.querySelector('#form');
const logOutBox = document.querySelector('#logout-confirmation');
const submit = document.querySelector('#submit');
const signOut = document.querySelector('#sign-out');
const cancel = document.querySelector('#cancel');
let userId = document.querySelector('#user_id');
const closeLogin = document.querySelector('#close-login');
const productGrid = document.querySelector('#product-grid');
const continueText = document.querySelector('#sign-to-continue-text');
const closeCartBtn = document.querySelector('#close-cart');
const cartWrapper = document.querySelector('#cart-wrapper');
const cartForm = document.querySelector('#cart-form');

function generatePurchaseId() {
    let str = "";
    for (let i = 0; i < 15; i++) {
      const randomNum = Math.floor(Math.random() * 10);
      str += randomNum;
    }
    return `pur_${str}`;
  }


var sessionDetails = JSON.parse(localStorage.getItem("sessionDetails"));

let isSigned = sessionDetails? true: false;


if(isSigned){
    LogInBtn.textContent = `Signed in as ${sessionDetails.userName}`
}

closeLogin.addEventListener('click', ()=>{
    LoginBox.style.animation = "fade-out 0.5s";
    setTimeout(()=>{LoginBox.style.display = "none";}, 450);
    
})

LogInBtn.addEventListener("click", ()=>{
    userId.value = `USR_${Math.random()*100}`;
    LoginBox.style.animation = "fade-in 0.5s";
        LoginBox.style.display = "flex";
    if(!isSigned){
        form.style.display = "flex";
        continueText.style.display = "unset";
        logOutBox.style.display = "none";

    }
    else if(isSigned){
        form.style.display = "none";
        logOutBox.style.display = "unset";
        continueText.style.display = "none";
    }
});

cancel.addEventListener('click', ()=>{
    LoginBox.style.animation = "fade-out 0.5s";
    setTimeout(()=>{LoginBox.style.display = "none";}, 450);
})

form.addEventListener('submit', ()=>{
        let sessionObject = {
        "userId": userId,
        "fullName": document.querySelector('#name').value,
        "userName": document.querySelector('#username').value,
        "email": document.querySelector('#email').value,
        "phone": document.querySelector('#phone').value,
        "address": document.querySelector('#address').value
        }

        localStorage.setItem("sessionDetails", JSON.stringify(sessionObject));

        var sessionDetails = JSON.parse(localStorage.getItem("sessionDetails"));

        LogInBtn.textContent = `Signed in as ${sessionDetails.userName}`

        LoginBox.style.animation = "fade-out 0.5s";
        setTimeout(()=>{LoginBox.style.display = "none";}, 450);
        isSigned = true;
})

signOut.addEventListener('click', ()=>{
    localStorage.clear();
    isSigned = false;
    LoginBox.style.animation = "fade-out 0.5s";
    setTimeout(()=>{LoginBox.style.display = "none";}, 450);
    LogInBtn.textContent = `Sign Up`
})

$.ajax({
        url:'http://127.0.0.1/product_fetch.php',
        type:'GET',
        dataType:'json',
        success:function(data){
            console.log(data)
            let renderedItems = data.map(prod => prod).sort(() => Math.random() - 0.5);
            productGrid.innerHTML = renderedItems.map(item =>{
                return `<div class="product">
                <img class="prod-img" src="${item.prod_img}" alt="${item.prod_name}">
                <p class="prod-name">${item.prod_name}</p>
                <p class="prod-desc">${(item.prod_desc.length > 80)?(item.prod_desc.slice(0, 80) + "..."):item.prod_desc}</p>
                <p class="prod-price">${item.prod_price}</p>
                <button class="buy-now">
                Buy Now</button>
            </div>`
        }).join(" ");

        const buyNowBtn = document.getElementsByClassName("buy-now");
        for(let i = 0; i<buyNowBtn.length; i++){
            buyNowBtn[i].addEventListener('click', ()=>{
                if(isSigned){
                    cartWrapper.style.animation = "fade-slide-in 0.5s";
                    cartWrapper.style.display = "flex";
                    document.querySelector('#cart-prod-img').src = renderedItems[i].prod_img;
                    document.querySelector('#cart-prod-name').value = renderedItems[i].prod_name;
                    document.querySelector('#cart-prod-desc').textContent = renderedItems[i].prod_desc;
                    document.querySelector('#cart-prod-price').value = renderedItems[i].prod_price;
                    document.querySelector('#customer-name').value = sessionDetails.fullName;
                    document.querySelector('#customer-address').value = sessionDetails.address;
                    document.querySelector('#customer-email').value = sessionDetails.email;
                    document.querySelector('#time').value = Date().slice(0, 25);
                    const qty = document.querySelector('#product-quantity');
                    qty.value = 1;
                    document.querySelector('#amount-paid').value = qty.value * Number(data[i].prod_price.replace(/[^0-9]/g, ""));
                    qty.addEventListener("change", function (event) {
                        if (this.value < 1) this.value = 1;
                        document.querySelector('#amount-paid').value = this.value * Number(data[i].prod_price.replace(/[^0-9]/g, ""));
                    })
                    document.querySelector('#purchase-id').value = generatePurchaseId();
                }
                else{
                    LoginBox.style.animation = "fade-in 0.5s";
                    LoginBox.style.display = "flex";
                    form.style.display = "flex";
                    continueText.style.display = "unset";
                    logOutBox.style.display = "none";
                }
            })
        }
    }
})

cartForm.addEventListener('submit', (event)=>{
    event.preventDefault;
    alert("Product bought successfully!✔️");
    cartForm.submit();
})


closeCartBtn.addEventListener('click', ()=>{
    cartWrapper.style.animation = "fade-slide-out 0.5s";
    setTimeout(()=>{cartWrapper.style.display = "none";}, 450)
    
})

