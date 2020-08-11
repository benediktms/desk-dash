// when clicking on a star, the star and all previous elements should receive the 'checked' class
// find the index of the currently selected star (through the HTML collection)
// map a new empty array/range to get the individual indicies
// for each index, fill in the relevant star

const list = document.getElementById('star-list');
const stars = document.querySelectorAll('.fa-star');

export const selectStar = () => {
  console.log(stars);

  stars.forEach(star => star.addEventListener('click', toggleCheckedClass));
};

const toggleCheckedClass = (e) => {
  const star = e.target;
  if (star.classList.contains('checked')) {
    star.classList.remove('checked');
  } else {
    e.target.classList.add('checked');
  }
};

const getIndex = (node) => {
  let i = 0;
  while (node.previousElementSibling) {
    node = node.previousElementSibling;
    i++;
  }
  return i;
};

