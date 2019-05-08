require 'pry'

def dictionary
  dictionary = {"hello" => "hi",
                "to" => "2",
                "two" => "2",
                "too" => "2",
                "for" => "4",
                "four" => "4",
                "be" => "b",
                "you" => "u",
                "at" => "@",
                "and" => "&"}
end

def word_substituter(str)
  arr = str.split(" ")

  arr.collect do |w|
    if dictionary.keys.include?(w.downcase)
      w = dictionary[w.downcase]
    else
      w
    end
  end.join(" ")
end

def bulk_tweet_shortener(arr_tweets)
  arr_tweets.each do |t|
    puts word_substituter(t)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    word_substituter(tweet)[0..136] + '...'
  else
    tweet
  end
end
