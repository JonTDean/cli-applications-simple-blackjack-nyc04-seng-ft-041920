def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
  
  card
end

def display_card_total(total_card)
  puts "Your cards add up to #{total_card}" 
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(game)
  puts "Sorry, you hit #{game}. Thanks for playing!"
end

def initial_round
  i = 0
  hand_sum = 0

  while i < 2
    hand_sum += deal_card
    i += 1
  end
  
  print display_card_total(hand_sum)
  return hand_sum
end

def hit?(arg)
  print prompt_user
  choice = get_user_input

  if choice == 's'
    return arg
  elsif choice == 'h'
    arg += deal_card
    return arg
  else
    invalid_command
    print prompt_user
    choice = get_user_input
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  currentHand = []
  welcome
  currentHand << initial_round
  until currentHand[0].to_i > 21
    currentHand.insert(0,hit?(currentHand[0]))
    display_card_total(currentHand[0].to_i)
  end
  end_game(currentHand[0])
end
