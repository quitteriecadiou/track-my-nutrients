function suggestedRecipesShowNutrients() {
  const recipes = document.querySelectorAll('.suggested-recipe-content');
  const recipeArr = Array.prototype.slice.call(recipes);
  recipes.forEach((recipe) => recipe.addEventListener("click", (event) => {
    event.preventDefault();
    const index = recipeArr.indexOf(recipe)
    const homePage = document.getElementById('suggested-recipes-dashboard-page')
    const allRecipeCard = document.querySelectorAll('.suggested-recipe-nutrient-detail')
    const choosenRecipe = allRecipeCard.item(index)
    homePage.classList.add('hidden')
    choosenRecipe.classList.remove('hidden')
  }));
};

function backToSuggestedRecipeList() {
  const backButtons = document.querySelectorAll('.back-button')
  const buttonArr = Array.prototype.slice.call(backButtons);
  backButtons.forEach((button) => button.addEventListener("click", (event) => {
    event.preventDefault();
    const index = buttonArr.indexOf(button)
    const homePage = document.getElementById('suggested-recipes-dashboard-page')
    const allRecipeCard = document.querySelectorAll('.suggested-recipe-nutrient-detail')
    const choosenRecipe = allRecipeCard.item(index)
    homePage.classList.remove('hidden')
    choosenRecipe.classList.add('hidden')
  }));
};



export { suggestedRecipesShowNutrients };
export { backToSuggestedRecipeList };
