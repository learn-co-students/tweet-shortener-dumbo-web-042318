# Write your code here.
def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  separated_tweet = tweet.split(" ")
  dictionary.keys.each { | word_to_be_replaced |
    separated_tweet.each_with_index { | word, index |
      if word.casecmp(word_to_be_replaced) == 0
        separated_tweet[index] = dictionary[word_to_be_replaced]
      end
    }
  }
  separated_tweet.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each { | tweet |
    puts word_substituter(tweet)
  }
end

def selective_tweet_shortener(tweet)
  if tweet.length < 140
    tweet
  else
    word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
  tweet[0..139]
end
