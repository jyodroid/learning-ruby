require './document.rb'
# frozen_string_literal: true

@doc = Document.new('Hamlet', 'Shakespeare', 'To be or...')

# constant should be commented?? "Magic comment"
# THE_ORIGINAL_CONSTANT = 'original'

THE_ORIGINAL_CONSTANT = 'original'
PI = '3.14159'

# Freeze mutable objects assigned to constants??

def count_words_in(the_string)
  the_words = the_string.split
  the_words.size
end

# use like get_greetings :john or get_greetings(:john) or get_greetings "john"
def get_greetings(name) # no needs parenthesis (please dont put comments on same line as def, just this one :))
  "Hello #{name}"
end

# statesmaents in same line like
def another_greetings
  puts 'Hello'; puts 'Motherfucker'
end

# Rubocop doesnt like single line method def but you can use it
# def simple_greetings; puts 'simple'; end

def number_in_a_can(number = 10)
  number.times { |n| puts "The number is #{n}" }
end

def multiple_number_in_a_can(number = 10)
  number.times do |n|
    puts "The number is #{n}"
    puts "Twice the number is #{n * 2}"
  end
end

def until_number_in_a_can(number = 10)
  until number.zero?
    puts "The number is #{number}"
    number -= 1
  end
end

def who_is_doc
  puts "doc is instance of document -> #{@doc.instance_of? Document}"
end

def doc_from_shakespeare?
  'yes!!' unless @doc.author != 'Shakespeare'
end

def getting_pi(pi_string)
  Float(pi_string)
end

def getting_pi_again(pi_string)
  pi_string.to_f
end
