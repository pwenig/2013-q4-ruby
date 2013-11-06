require './davinci-sinatra.rb'

get "/" do
  halt erb(:questions)
end


post "/" do
if params[:name_of_element] != ""
    element = Element.find_by!(name: params[:name_of_element])
    @answer_no = element.number
  end
  if params[:number_of_element] != ""
    element = Element.find_by!(number: params[:number_of_element])
    @answer_name = element.name
  end
  halt erb(:answer_to_9_or_10)
end
  