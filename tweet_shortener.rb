# Write your code here.
def dictionary(word)
  substitutions = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" =>"2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter (tweet)
  tweet.split(" ").map do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    end
  end.join(" ")
end

def bulk_tweet_shortener(array_tweets)
  array_tweets.map do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.chars.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  short_tweet = selective_tweet_shortener(tweet)
  if short_tweet.length > 140
    short_tweet = short_tweet(0..136) + "..."
  end
  short_tweet
end