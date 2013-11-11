require './davinci-sinatra.rb'

# TODO: Write handler for GET /
get "/" do
	@employees = Employee.order(:id) #retrieve all records from the Employee table sorted by id
	@new_employee = Employee.new
	halt erb(:index) #render the index page with the variables
end #end the handler


# TODO: Write handler for POST /

post "/" do
	@new_employee = Employee.new #start a new record and assign it to the @new_employee variable
	@new_employee.first_name = params["first_name"] #Set first_name of that route to variable
	@new_employee.last_name = params["last_name"] #Set the last_name of that route to variable
	@new_employee.company_id = params["company_id"] #Set the company_id of that route to variable
	if @new_employee.save == true #if the save is successful
		redirect "/" #redirect to / view
	else
		@employees = Employee.order(:id) #assign the @employees variable to the id column of the table
		halt erb(:index) #render the index view with the variable
	end #end the if statement

end #end the handler 


