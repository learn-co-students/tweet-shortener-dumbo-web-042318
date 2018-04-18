# Write your code here.
=begin
"hello" becomes 'hi'
"to, two, too" become '2'
"for, four" become '4'
'be' becomes 'b'
'you' becomes 'u'
"at" becomes "@"
"and" becomes "&"
=end
require 'pry'

def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  array = tweet.split(" ")

  array.map do |str|
      if dictionary.keys.include?(str)
        dictionary[str]
      else
        str
      end
  end.join(" ")

end


def bulk_tweet_shortener(tweet_array)

  tweet_array.each do |tweet|
    puts word_substituter(tweet)
  end

end

def selective_tweet_shortener(tweet)

  if tweet.length > 140
    return word_substituter(tweet)
  elsif tweet.length < 130
    return tweet
  else
    return tweet
  end

end

def shortened_tweet_truncator(tweet)

  if tweet.length < 140
    return tweet
  else
      if word_substituter(tweet).length > 140
        return tweet[0...137] + "..."
      else
        return word_substituter(tweet)
      end

  end


end
