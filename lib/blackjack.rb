def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def invalid_command
  puts "Please enter a valid command"
end

def initial_round
  #return deal_card + deal_card
  #card_sum = card_total + deal_card
#  return deal_card + deal_card
#  puts display_card_total(card_total)
#  return display_card_total(card_total)
#end

card_sum = 0
 for card in 1..2
   card_sum += deal_card
 end
 display_card_total(card_sum)
 card_sum
end

#def hit?(number)
#  prompt_user
#  get_user_input
#  if get_user_input == "s"
    # do nothing
#  elsif get_user_input == "h"
#    deal_card
#    return number + deal_card
#  else
#    invalid_command
#    prompt_user
#  end
#    display_card_total(card_total)
#end

def hit?(prev_total)
  # code hit? here
  prompt_user
  user_response = get_user_input
  new_total = prev_total
  case user_response
    when "h"
      # Only update the value if 'h' is pressed
      new_total += deal_card
    when "s"
      # Do nothing
    else
      # Handle unsupported commands
      invalid_command(user_response)
  end
  new_total
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  #  welcome
  #  card_total = initial_round
  #until card_total > 21 do
  #  hit?
  #  display_card_total
  #end
  #end_game(card_total)
#end

def runner
   #code runner here
  welcome
  card_total = initial_round
  until card_total > 21  do
    did_user_hit = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end
end
