# require 'json'
# file = File.read('hair.json')
# data_hash = JSON.parse(file)

# print data_hash['advice'][10]

require 'tty-prompt'

prompt = TTY::Prompt.new

length = %w(short medium long)
prompt.enum_select("What is your current hair length?", length)
texture = %w(straight wavy curly)
prompt.enum_select("What is your hair texture", texture)
density = %w(fine medium thick)
prompt.enum_select("How would you describe your hair density?", density)
style = %w(laid-back edgy low_maintenance clean_cut)
prompt.enum_select("How would you describe your personal style?", style)