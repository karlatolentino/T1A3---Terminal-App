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

while true
   choice = prompt.select(
       "MENU", 
       [
           "✨ Give me a new hairstyle!",
           "📝 Record last haircut",
           "🎲 Generate random hair advice",
           "Exit"
       ])

   if choice == "✨ Give me a new hairstyle!"
       new_style = prompt.select(
           "How short is your current hair?",
           [
               
           ])
       puts allergy_test(allergy_choice, input)
   elsif choice == "📝 Record last haircut"
       puts "You are allergic to: #{get_allergies(input)}."
    elsif choice == "🎲 Generate random hair advice"
       
    elsif choice == "Exit"
       exit
   else
       p "Invalid choice"
   end
end