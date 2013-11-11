require './davinci-sinatra.rb'

get "/" do
  # TODO: If there is already a user_id saved in the session...
  # TODO: ...then use it to load the @user instance variable.
  # TODO: Otherwise just start a new empty User.

  halt erb(:index)
end

post "/" do
  # TODO: If there is already a user_id saved in the session...
  # TODO: ...then use it to load the @user instance variable.
  # TODO: Otherwise just start a new empty User.

  # TODO: Set the user's new preferences from POST params on the User
  # TODO: Then save the User object

  # TODO: Save that user ID to the session, in case we created a new
  #       one. (If we already had a user ID in the session, it doesn't
  #       hurt to overwrite it with the same value).

  redirect "/"
end

# TODO: Write handler for GET /logout
