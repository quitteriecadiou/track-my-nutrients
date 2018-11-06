const addedRecipes = document.querySelectorAll('.added-recipe');

function turnCard() {
  addedRecipes.forEach((recipe) => recipe.addEventListener("click", (event) => {
    recipe.classList.toggle("clicked-card");
    })
)};

export { turnCard };
