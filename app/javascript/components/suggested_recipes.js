function suggestedRecipesShowNutrients() {
  const recipes= document.querySelectorAll('.suggested-recipe-content');
  const title = document.getElementById("suggested-recipes-title");
  const content = document.getElementById("suggested-recipe-content");
  recipes.forEach((recipe) => recipe.addEventListener("click", (event) => {
  event.preventDefault();
  console.log(recipe)
  const recipeName = `${recipe.querySelector('.suggested-recipe-title').innerHTML}`
  const recipeNutrients = `${recipe.querySelector('.suggested-recipe-nutrients').innerHTML}`
  console.log(recipeName)
  title.innerHTML = recipeName;
  content.innerHTML = recipeNutrients;
  })
)}

export { suggestedRecipesShowNutrients };
