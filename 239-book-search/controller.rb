require './davinci-sinatra.rb'

get "/" do
  halt erb(:browse)
end

# TODO: GET handler for routes like /year/2011, /year/2007, etc.

# TODO: GET handler for routes like /author/Olsen,
#       /author/Crockford, etc.

# TODO: GET handler for routes like /topic/jQuery, /topic/CSS, etc.

# TODO: GET handler for routes like /isbn/1449397220, 
#       /isbn/1449325947, etc.
