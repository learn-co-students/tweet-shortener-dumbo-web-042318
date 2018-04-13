require "pry"

def dictionary
  dictionary =
  {
    "hello"=>"hi",
    "to"=>"2",
    "two"=>"2",
    "too"=>"2",
    "for"=>"4",
    "four"=>"4",
    "be"=>"b",
    "you"=>"u",
    "at"=>"@",
    "and"=>"&"
  }
end

def word_substituter(string)
  new_string = []

  string.split.each do |word|
    if dictionary.keys.include?(word.downcase)
      new_string << dictionary[word.downcase]
    else
      new_string << word
    end
  end
  new_string.join(" ")
end

def bulk_tweet_shortener(arr)
  arr.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return word_substituter(tweet)
  end
  tweet
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    return word_substituter(tweet)[0..136] + "..."
  end
  tweet
end
