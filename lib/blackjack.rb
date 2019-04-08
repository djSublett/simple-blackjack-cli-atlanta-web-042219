def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(number)
  # code #display_card_total here
  puts "Your cards add up to #{number}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  user_choice = gets
end

def end_game(number)
  # code #end_game here
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum 
end

def hit?(card_total)
  # code hit? here
  prompt_user
  hit = get_user_input
  if hit == 's'
    card_total
  end
  elsif hit == 'h'
    card_total += deal_card
  end
  else
    invalid_command
  end
  
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
  get_user_input
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  until card_total > 21
    welcome
    initial_round
    hit?
  end 
  
end
    
