import "jquery-bar-rating";
import $ from 'jquery';

export const initStarRating = () => {
  $('#review_rating').barrating({
    theme: 'css-stars'
  });
};
