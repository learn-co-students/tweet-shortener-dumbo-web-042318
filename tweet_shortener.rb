# Write your code here.
def dictionary
dictionary = {
  "too" => "2",
  "to" => "2",
  "two" =>"2",
  "four" => "4",
  "for" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}
end

def word_substituter(tweet)
  #takes in string of tweet as an argument and shortens it based on substitutes
  tweet.split.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else 
      word 
    end
    end.join(" ")
end

def bulk_tweet_shortener(arr_tweets)
  #iterate them
  #shorten them
  #put results to the screen
  arr_tweets.map do |tweet|
    tweet = word_substituter(tweet)
    puts "#{tweet}"
  end
end

def selective_tweet_shortener(tweet)
  #shortens tweets that exceed 140 characters
  #only does subs if tweet is longer than 140 characters
  #if 140 or less, return original tweet
  if tweet.size > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  #truncates tweets over 140 characters after shortening
  #truncate with ellipsis(...)
  if tweet.size > 140
    tweet[0...137] + "..."
  else
    tweet
  end
end