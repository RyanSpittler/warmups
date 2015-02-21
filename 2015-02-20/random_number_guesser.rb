#!/usr/bin/env ruby

def analyze_guess(chosen_number, guess)
  if guess == chosen_number
    'You got it'
  elsif guess > chosen_number
    'Too high'
  else
    'Too low'
  end
end

def request_guess(random_number)
  user_guess = 0
  while user_guess != random_number
    user_guess = 0
    puts "What is your guess?"
    while user_guess < 1 || user_guess > 10
      print "Please guess a number from 1 to 10"
      user_guess = gets.chomp.to_i
    end
    puts analyze_guess(random_number, user_guess)
  end
end

random_number = rand(10) + 1
request_guess(random_number)
