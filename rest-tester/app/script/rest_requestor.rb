require 'rest-client'

prefix = "http://"
default = "http://192.168.50.128:3000"


puts "Please enter a URL or enter \"2\" for local"

input = gets.chomp

input.include?("http://") ? url = input : url = prefix + input

if input == "2"
  
  puts "Which controller method? (index, new, edit, show, create): "
  method = gets.chomp.downcase
  
  case method
    when "index"  then page = "users"
    when "new"    then page = "users/new"
    when "edit"   then page = "users"
    when "show"   then page = "users"
    when "create" then page = "users"
                  else page = "users"
  end

  url = default + "/" + page
  
  if method == "create"
    puts RestClient.post(url,"")
  else
    puts RestClient.get(url)
  end
else
  puts RestClient.get(url)
end
  
