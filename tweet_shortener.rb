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
  tweet.split(" ").map
end

def bulk_tweet_shortener(array_tweets)
  array_tweets.map do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  selected_tweet = tweet
  if selected_tweet.length > 140
    selected_tweet = word_substituter(tweet)
  end
  selected_tweet
end

def shortened_tweet_truncator(tweet)
  short_tweet = selective_tweet_shortener(tweet)
  if short_tweet.length > 140
    short_tweet = short_tweet(0..136) + "..."
  end
  short_tweet
end