require 'rest-client'

prefix = "http://"

puts "Please enter a URL:"

input = gets.chomp

input.include?("http://") ? url = input : url = prefix + input


puts RestClient.get(url)