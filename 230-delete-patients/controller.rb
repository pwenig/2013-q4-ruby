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
  @patient.systolic  = params["systolic"]
  @patient.diastolic = params["diastolic"]
  @patient.save!
  redirect "/"
end
