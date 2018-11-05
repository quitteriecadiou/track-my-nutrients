const recipes = document.querySelectorAll('.suggested-recipe-content');
const initTitle = document.getElementById("suggested-recipes-title").innerHTML;
const initContent = document.getElementById("suggested-recipe-content").innerHTML;

function suggestedRecipesShowNutrients() {
  const content = document.getElementById("suggested-recipe-content");
  const title = document.getElementById("suggested-recipes-title");
  recipes.forEach((recipe) => recipe.addEventListener("click", (event) => {
    event.preventDefault();
    const recipeName = `${recipe.querySelector('.suggested-recipe-title').innerHTML}`;
    const recipeNutrients = `${recipe.querySelector('.suggested-recipe-nutrients').innerHTML}`;
    title.innerHTML = recipeName;
    content.innerHTML = recipeNutrients;
    backToSuggestedRecipeList();
  }));

};

function backToSuggestedRecipeList() {
  const backButtons = document.querySelectorAll('.back-button')
  backButtons.forEach((button) => button.addEventListener("click", (event) => {
    event.preventDefault();
    const title = document.getElementById("suggested-recipes-title");
    title.innerHTML = initTitle;
    const content = document.getElementById("suggested-recipe-content");
    content.innerHTML = initContent;
    suggestedRecipesShowNutrients();
  }));

};



export { suggestedRecipesShowNutrients };
export { backToSuggestedRecipeList };
