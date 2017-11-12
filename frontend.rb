require "unirest"

system "clear"
puts "Choose an option"
puts "[1] Random fortune"
puts "[2] Lotto numbers"
puts "[3] Page visit counter"

input_option = gets.chomp
if input_option == "1"
  response = Unirest.get("http://localhost:3000/fortune_url")
  fortune = response.body["fortune"]
  puts fortune
elsif input_option == "2"
  response = Unirest.get("http://localhost:3000/lotto_url")
  lotto_numbers = response.body["lotto_numbers"]
  p lotto_numbers
elsif input_option == "3"
  response = Unirest.get("http://localhost:3000/counter_url")
  count = response.body["visit_count"]
  puts "The number of visits is #{count}"
end
