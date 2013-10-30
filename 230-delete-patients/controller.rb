require './davinci-sinatra.rb'

get "/" do
  @patients = Patient.order(:id)
  halt erb(:index)
end

get "/patients/:id" do
  id       = params["id"]
  @patient = Patient.find(id)
  halt erb(:edit)
end

post "/patients/:id" do
    id                 = params["id"]
    @patient           = Patient.find(id)

  if params["commit"] == "Update"
    @patient.systolic  = params["systolic"]
    @patient.diastolic = params["diastolic"]
    @patient.save!

  elsif params["commit"] == "Delete"
    @patient.destroy
  end
  redirect "/"
end

