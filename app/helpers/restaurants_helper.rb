module RestaurantsHelper
  def restaurant_photo_url(restaurant)
    placeholder = 'https://lunawood.com/wp-content/uploads/2018/02/placeholder-image.png'
    restaurant.photo.attached? ? restaurant.photo : placeholder
  end
end