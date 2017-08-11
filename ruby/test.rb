form = {
  :name => "Vinnie Lu",
  :address => "Riverside Drive",
  :email => "lu.vinnie@gmail.com",
  :phone => "603 930 7209",
  :fave_shades_of_blue => "magenta",
  :wallpaper_preferences => "Paisley",
  :ombre_is => "Fierce"
}

form[:name] = "Roger Rabbit"
form[:email] = "lu.vinnie@hotmail.com"
form[:hired] = "yes"
form[:phone] = "512 298 2178"
form[:fave_shades_of_blue] = "white"

variable = :name

p form[variable]

p form[:name] + " " + form[:address]

p form