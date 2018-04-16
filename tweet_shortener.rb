require 'pry'

def dictionary
  dictionary = {"hello" => "hi"
                "to" => "2"
                "two" => "2"
                "too" => "2"
                "for" => "4"
                "four" => "4"
                "be" => "b"
                "you" => "u"
                "at" => "@"
                "and" => "&"}
end

def word_substituter(str)
  dic = dictionary
  final_str = ""
  arr = str.split(" ")

  binding.pry

  # arr.each do |w|
  #   if w ==
  #
  # end


  #final_str
end
