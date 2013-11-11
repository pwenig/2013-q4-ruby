require './davinci-sinatra.rb'

get "/" do
  # TODO: Retrieve three values stored in the session and use them
  # to pre-fill form values in the view.

  halt erb(:index)
end

post "/" do
  # TODO: Transfer values of POST params to become local variables.
  # TODO: Save those local variables to the session so the values
  #       will last.

  redirect "/"
end

# TODO: Write handler for GET /logout that empties the session
