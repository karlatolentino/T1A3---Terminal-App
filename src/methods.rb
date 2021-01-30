=begin 

✨ Give me a new hairstyle!

QUESTIONNAIRE: 
1. What is your current hair length? short, medium (more than 2cm length) or long (shoulder length and longer)
2. What is your hair texture? straight, curly, wavy
3. What is your hair thickness? fine, medium, thick
4. How would you describe your personal style? laid back, slick and edgy, low-maintenance, clean cut

NEW HAIR RECOMMENDATION
1. Quiff
2. Pompadour
3. Undercut slick back
4. Side parted swept back hair
5. Crop fringe
6. Buzz cut, fade
7. Man bun

=end

# 📂 Record last haircut
def get_hair
    puts "When did you last cut your hair? day/month/year"
    date = gets.chomp.to_s
    puts "What was the length of your haircut in millimeters?"
    length = gets.chomp.to_i
    puts "Did you"
    clipper = gets.chomp.to_f
    puts "How did you style your hair?"
    style = gets.chomp.to_s
    puts "If you used product, what type of product did you use?"
    product = gets.chomp.to_s
    puts "Please add any additional notes to your experience"
    notes = gets.chomp.to_s

    print "\n"

    puts "Last appointment date: #{date}
    Hair length: #{length}mm
    Clipper no.: #{clipper}
    Style: #{style}
    Product: #{product}
    Notes: #{notes}"
end