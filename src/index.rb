# INPUT: Menu choice, hair questionnaire, record hair history, loop to go back to menu, prompt to quit
# DATA: history of haircuts, date, style
# OUTPUT: suggested haircut style, recommended next haircut appointment

# GEM FILES

require "tty-prompt"

prompt = TTY::Prompt.new

require 'json'
file = File.read('hair.json')
data_hash = JSON.parse(file)
data_hash.keys
print "\n"
data_hash['']

# MENU OPTIONS
puts "Welcome to Barber's Paradise!"
puts "A place where the client and barber can enjoy a smooth-sailing experience with less fuss and more relaxation by cutting out the fluff!"

while true
   choice = prompt.select(
       "Take a seat and choose from the options below:", 
       [
           "✨ Give me a new hairstyle!",
           "📝 Record last haircut",
           "🎲 Generate random hair advice",
           "Exit"
       ])

   if choice == "✨ Give me a new hairstyle!"
       
   elsif choice == "📝 Record last haircut"
      
    elsif choice == "🎲 Generate random hair advice"
       
    elsif choice == "Exit"
       exit
   else
       p "Invalid choice"
   end
end