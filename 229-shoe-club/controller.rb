  require './davinci-sinatra.rb'

get "/" do
  @customer = Customer.find(1)

  halt erb(:intro)
end

get "/sign_up" do
  @customer = Customer.find(1)

  halt erb(:sign_up)
end

#when the user clicks Go Back, the browser sends a post request to the server
#for the route "/sign_up", which has an established handler. You would get a 404 error if it didn't. 
#The server then looks to 
#find the row in the Customer table with the id 1 and load into memory and save
# to the @cusotmer instance variable. Load the variable for use later
#looking up the value for the key commit, which in this case is Go Back, which returns true
#and runs line 34 and redirects. 

#when the user clicks Contine, the browser sends a post request to the seriver for the same route, "/sign_up"
#after the variable is loaded into memory, the server looks at the value for the key commit, which in this case
#is Continue and returns true with runs line 36. Line 36 takes the params value first_name and assigns it to the first_name field of the row with the 
#id 1 in the Customer table by using the instance variable @customer, which has been established as Customer with the ID 1. Line 35 does the same thing 
#for last_name line 37 says that @customer.save is true, so it's saves it to the table. Line 38 redirects to the next page /shipping
 

post "/sign_up" do #request has been made. This is the handler.
  @customer = Customer.find(1) #assigns the instance variable to ID 1 from Customer table and saves it to memory


  if params["commit"] == "Go back" #
    redirect "/" # it's redirected and the handler stops here 
  elsif params["commit"] == "Continue"
    @customer.first_name = params["first_name"] # if you see an equal sign, lool right side first. look at the params value and assigns the empty string to the instance varaible.
    @customer.last_name = params["last_name"] # looking for teh value for the key last name in params and assigning it to the last name field for the instanc variable.
    if @customer.save == true
      redirect "/shipping"
    else
    halt erb(:sign_up) # halts handler
    end # end inner if
  end # end outer if
end # end post

get "/shipping" do
  @customer = Customer.find(1)
  @u_s_states = USState.order(:name).all

  halt erb(:shipping)
end

post "/shipping" do
  @customer = Customer.find(1)
  @u_s_states = USState.order(:name).all

 if params["commit"] == "Go back"
    redirect "/sign_up"
  elsif params["commit"] == "Continue"
    @customer.ship_speed = params["ship_speed"]
    @customer.ship_address1 = params["address1"]
    @customer.ship_city = params["city"]
    @customer.ship_state = params["state"]
    @customer.ship_zip_code = params["zip_code"]
    if @customer.save
      redirect "/billing"
    else
      halt erb(:shipping)
    end
  end
end

get "/billing" do
  @customer = Customer.find(1)
  @u_s_states = USState.order(:name).all

  halt erb(:billing)
end

post "/billing" do
  @customer = Customer.find(1)
  @u_s_states = USState.order(:name).all

  if params["commit"] == "Go back"
    redirect "/shipping"
  elsif params["commit"] == "Continue"
    if params["same_as_ship"] != nil
      @customer.bill_address_same_as_ship = true
      @customer.bill_address1 = @customer.ship_address1
      @customer.bill_city = @customer.ship_city
      @customer.bill_state = @customer.ship_state
      @customer.bill_zip_code = @customer.ship_zip_code
    else
      @customer.bill_address_same_as_ship = false
      @customer.bill_address1 = params["address1"]
      @customer.bill_city = params["city"]
      @customer.bill_state = params["state"]
      @customer.bill_zip_code = params["zip_code"]
    end
    if @customer.save
      redirect "/review"
    else 
      halt erb(:billing)
    end
   end
end

get "/review" do
  @customer = Customer.find(1)

  halt erb(:review)
end

post "/review" do
  @customer = Customer.find(1)

  if params["commit"] == "Go back"
    redirect "/billing"
  elsif params["commit"] == "Place order"
    redirect "/thank_you"
  end
end

get "/thank_you" do
  halt erb(:thank_you)
end
