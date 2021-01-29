# INPUT: Menu choice, hair questionnaire, record hair history, loop to go back to menu, prompt to quit
# DATA: history of haircuts, date, style
# OUTPUT: suggested haircut style, recommended next haircut appointment

require "tty-prompt"

prompt = TTY::Prompt.new

while true
   choice = prompt.select(
       "MENU", 
       [
           "✨ Give me a new hairstyle!",
           "📝 Record last haircut",
           "Generate random hair advice",
           "Exit"
       ])

   if choice == "✨ Give me a new hairstyle!"
       new_style = prompt.select(
           "How short is your current hair?",
           [
               
           ])

       puts allergy_test(allergy_choice, input)
   elsif choice == "Full allergy List"
       puts "You are allergic to: #{get_allergies(input)}."
   elsif choice == "Exit"
       exit
   else
       p "Invalid choice"
   end
end