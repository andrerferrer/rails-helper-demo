## Goal
This is an app to teach how to create a `helper`.

This demo was created from [this](https://github.com/andrerferrer/basic-photo-demo).

[Check my other demos](https://github.com/andrerferrer/dedemos).

## How to
### 1. Display the images

In `app/views/restaurants/index` we'll add the photo, handling whether it exists or not.

```erb
      <% if restaurant.photo.attached? %>
        <%= image_tag restaurant.photo, width: '300px' %>
      <% else %>
        <% placeholder_url = "https://lunawood.com/wp-content/uploads/2018/02/placeholder-image.png" %>
        <%= image_tag placeholder_url, width: '300px' %>
      <% end %>
```

### 2. Refactor with a Helper

In the [helper](https://github.com/andrerferrer/rails-helper-demo/blob/master/app/helpers/restaurants_helper.rb).

```ruby
module RestaurantsHelper
  def restaurant_photo_url(restaurant)
    placeholder = 'https://lunawood.com/wp-content/uploads/2018/02/placeholder-image.png'
    restaurant.photo.attached? ? restaurant.photo : placeholder
  end
end
```

In the [views](https://github.com/andrerferrer/rails-helper-demo/blob/master/app/views/restaurants/index.html.erb), we just need this right now.

```
      <%= image_tag restaurant_photo_url(restaurant), width: '300px' %>
```

Good luck, have fun!
