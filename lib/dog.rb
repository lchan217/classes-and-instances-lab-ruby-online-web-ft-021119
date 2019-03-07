require 'nokogiri'
require 'open-uri'
require 'pry'

html = open('https://www.goodreads.com/choiceawards/best-of-the-best-2018')
doc = Nokogiri::HTML(html)

array = doc.css('.inlineblock.pollAnswer.resultShown').css('strong.uitext.result').text.split("\n")

separated_array = array.each_slice(5).to_a

binding.pry











# class Dog 
# end 

# fido = Dog.new 
#   lassie = Dog.new
#   snoopy = Dog.new