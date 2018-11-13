/* global axios */

axios.get("/api/products").then(function(response) {
  let products = response.data;
  console.log("the products are", products);

  let productTemplate = document.querySelector("#card-group");
  let productContainer = document.querySelector(".row");

  productContainer.appendChild(productTemplate.content.cloneNode(true));

  products.forEach(function(product) {
    let copiedContent = productTemplate.content.cloneNode(true);
    copiedContent.querySelector(".card-title").innerText = product.name;
    if (product.image[0]) {
      copiedContent.querySelector(".card-img-top").src = product.image[0].url;
    }
    copiedContent.querySelector(".card-text").innerText = product.description;
    productContainer.appendChild(copiedContent);
  });
});
