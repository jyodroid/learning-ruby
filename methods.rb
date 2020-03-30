require './document.rb'
# frozen_string_literal: true

@doc = Document.new('Hamlet', 'Shakespeare', 'To be or...')

# constant should be commented?? "Magic comment"
# THE_ORIGINAL_CONSTANT = 'original'

THE_ORIGINAL_CONSTANT = 'original'
PI = '3.14159'
@fonts = ['courier', 'times roman', 'helvetica']

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

def print_fonts
  for font in @fonts do
    puts font
  end
end

def print_fonts_well_done
  @fonts.each do |font|
    puts font
  end
end

# This method has error intentionally since font sice will end on an in supperior index
def another_print_fonts
  for index in 0..@fonts.size do
    puts "#{index} -> #{@fonts[index]}" # use of templating
  end
end

def whos_books(title)
  case title
  when 'War And Peace'
    puts 'Tolstoy'
  when 'Romeo And Juliet'
    puts 'Shakespeare'
  else
    puts "Don't know"
  end
end

# The "compact" guy
def get_author(title)
  author =  case title
            when 'War And Peace' then 'Tolstoy' # We acn use regexp /War And .*/
            when 'Romeo And Juliet' then 'Shakespeare'
            else "Don't know"
            end
  puts author
end

# A simple way to validate a non defined variable
def method_empty_first_name
  @first_name ||= '' #Equivalent to @first_name = '' unless @first_name and @first_name || ''
  @first_name
end

def initialized_array
  poem_words = %w{ twinkle little star how I wonder }
  poem_words.each do |word|
    puts word
  end
end

# Ways to write a hash
def same_hash
  book_info = { :first_name => 'Russ', :last_name => 'Olsen' }
  another_book_info = { first_name: 'Russ', last_name: 'Olsen' }
  book_info == another_book_info
end

def iterate_hash
  movie = { title: '2001', genre: 'sci fi', rating: 10 }
  movie.each { |entry| pp entry }
  # or
  movie.each { |name, value| puts "#{name} => #{value}"} #this √
end

# pass multiple args, use echo_at_least_two("a", *%w{"yo soy grut"},"b") or 
# echo_at_least_two("a", *%w{"yo soy grut"}, _) in order to ommit any of the args
def echo_at_least_two(first_arg, *middle_args, last_arg)
  puts "The first argument is #{first_arg}"
  middle_args.each { |arg| puts "A middle argument is #{arg}" }
  puts "The last argument is #{last_arg}"
end

def joint_fonts
  puts @fonts.join(' ')
  puts @fonts.join('√')
  puts @fonts.join
end

# use find_idex_of_font 'helvetica' or find_idex_of_font('helvetica')
def find_idex_of_font(searched_font)
  @fonts.find_index { |font| font == searched_font }
end
