require './davinci-sinatra.rb'

# TODO: write handler for GET / requests

get "/" do 							#Set up handler for the GET / route
	@patients = Patient.order(:id) #loading the id column from the Patient table and assigning
									#it to the @patients varialb so it can be used in the index view
	halt erb(:index) 				#render the index view
end 								#ends the GET handler block


# TODO: write handler for detail page GET /patients/3, /patients/5, etc. requests

get "/patients/:id" do 				#Set up the handler for the GET /patients/:id route
	id = params["id"] 				#assign and save the params key id to the id variable
	@patient = Patient.find(id) 	#loads the rows with the id "id" from the Patient table
									#and assigns it to the @patient variable
	halt erb(:edit_or_new) 			#Renders the edit_or_new view and stops
end 								#ends the GET handler block


# TODO: write handler for POST /patients/3, /patients/5, etc. requests

post "/patients/:id" do 			#Set up the handler for the POST /patients/:id route
	id = params["id"] 				#assign and save the params key id to the id variable
	@patient = Patient.find(id) 	#loads the row with the id from the Patient table and 
									#assigns it to the @patient variable
	if params["commit"] == "Update" #move to the next line of code if the params key commit equal update
		@patient.systolic = params["systolic"] #the params key systolic is assigned to the @patient.systolic variable
		@patient.diastolic = params["diastolic"] #the params key diastoilc is assigned to the @patient.diastolic variable
		if @patient.save == true 	#if successful save, move to line 31
			redirect "/patients/#{id}" #redirect to patients/id view
		else
			halt erb(edit_or_new) 	#if save is unsuccessful, render the edit_or_new view
		end 						#ends the if statement
	elsif params["commit"] == "Delete" #if the params key commit equals Delete
		@patient.destroy 				# Destroy method is called on the @patient variable
		redirect "/" 					#redirects to the / view
	end 								#ends outer if statment
end 									#ends POST block


# TODO: write handler for GET /new_patient requests

get "/new_patient" do 					#set up handler for GET /new_patients route
	@patient = Patient.new 				#new method is called on the Active Record Class Object
										#Patient and assigned to the @patient varialbe
	halt erb(:edit_or_new) 				#render the edit_or_new view
end 									#end the GET block

# TODO: write handler for POST /new_patient requests

post "/new_patient" do 					#Set up handler for the POST /new_patients route
	@patient = Patient.new 				#calling the new method on the Active Class Record Object (table) Patient
										#and assigning it to the @patient variable.
	@patient.systolic = params["systolic"] #assigns the params key systolic to @patient.systolic variable
	@patient.diastolic = params["diastolic"] #assigns the params key diastolic to the @patient.diastolic variable
	if @patient.save == true 			#if successful save
		redirect "/" 					#redirect to the / view
	else
		halt erb(:edit_or_new) 			#if save wasn't successful, this line would be run and
										#edit_or_new view would be rendered.
	end 								#ends the if statement
end 									#ends the post block
