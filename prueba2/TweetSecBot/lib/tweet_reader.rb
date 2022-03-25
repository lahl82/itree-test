require "rubygems"
require "chatterbot/dsl"
require "password_score"

# In the file named [botname].yml – the [botname] part must match your bot’s username EXACTLY
# paste the credential values that you just generated

class TweetReader
  def initialize
    puts "Activandose el TweetReader"
    exclude "http://"
    blacklist "mean_user, private_user"
  end

  def exec
    puts "checking for replies to me"
    
    replies do |tweet|
      #Leer el password desde un tweet
      password = tweet.text
      eval password, tweet
    end
  end

  def eval(password, tweet)
    score = PasswordScore.new password

    if score.value >= 50
        reply "Congratulations #USER# '#{password}' is a strong password!", tweet
    elsif score.value > 10
      suggestion = hardening password
      reply "#USER#, '#{password}' is a weak password. Try with '#{suggestion}'", tweet
    else
      reply "#USER#, unacceptable password. Please try again with a better password!", tweet
    end
  end

  def hardening(text)
    text.split("").map do |c|
      c.downcase!
      c = 5 if c == "s"
      c = 4 if c == "a"
      c = 3 if c == "e"
      c = 2 if c == "z"
      c = 1 if c == "i"
      c = 0 if c == "o"
      c = c
    end
  end
end

tr = TweetReader.new
tr.exec
