/* global axios */

axios.get("/api/products").then(function(response) {
  let products = response.data;
  console.log("the products are", products);

  let productTemplate = document.querySelector("#card-group");
  let productContainer = document.querySelector(".row");

  products.forEach(function(product) {
    productContainer.appendChild(productTemplate.content.cloneNode(true));

    // productContainer.appendChild(productTemplate.content.cloneNode(true));
    // productContainer.appendChild(productTemplate.content.cloneNode(true));
    // productContainer.appendChild(productTemplate.content.cloneNode(true));
    // productContainer.appendChild(productTemplate.content.cloneNode(true));
  });
});
