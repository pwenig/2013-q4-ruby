require './davinci-sinatra.rb'

get "/" do
  @customer = Customer.find(1)

  halt erb(:intro)
end

get "/sign_up" do
  @customer = Customer.find(1)

  halt erb(:sign_up)
end

post "/sign_up" do
  @customer = Customer.find(1)

  # TODO: If Go Back was clicked, go back to the previous page
  # TODO: If Continue was clicked, save the entered info and either go on
  #       to next page, or show validation errors on this same page
end

get "/shipping" do
  @customer = Customer.find(1)
  @u_s_states = USState.order(:name).all

  halt erb(:shipping)
end

post "/shipping" do
  @customer = Customer.find(1)
  @u_s_states = USState.order(:name).all

  # TODO: If Go Back was clicked, go back to the previous page
  # TODO: If Continue was clicked, save the entered info and either go on
  #       to next page, or show validation errors on this same page
end

get "/billing" do
  @customer = Customer.find(1)
  @u_s_states = USState.order(:name).all

  halt erb(:billing)
end

post "/billing" do
  @customer = Customer.find(1)
  @u_s_states = USState.order(:name).all

  # TODO: If Go Back was clicked, go back to the previous page
  # TODO: If Continue was clicked, save the entered info and either go on
  #       to next page, or show validation errors on this same page.
  #       (If same_as_ship checkbox was checked, use the info in the shipping
  #       fields for the billing fields).
end

get "/review" do
  @customer = Customer.find(1)

  halt erb(:review)
end

post "/review" do
  @customer = Customer.find(1)

  # TODO: If Go Back was clicked, go back to the previous page
  # TODO: If Place Order was clicked, go to thank_you page
end

get "/thank_you" do
  halt erb(:thank_you)
end
