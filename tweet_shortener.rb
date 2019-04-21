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
  array = tweet.split(" ")
  array.collect do |word|
    dictionary.collect do |key, value|
      if word.downcase == key
        word.replace(value)
      end
    end
  end
  array.join(" ")
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
  if tweet.length > 140
      if word_substituter(tweet).chars.length > 140
        short_tweet = word_substituter(tweet)[0..136] + "..."
      else
      word_substituter(tweet)
      end
  else
    tweet
  end
end