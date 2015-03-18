class HomeController < ApplicationController
  before_action :authenticate_user!, :except => [:index]
  def index
    a = [0, 1, 1, 2, 3, 5, 8, 13, 21]
    a.delete(13)
    puts non_repeated_chars("this is pretty neat")
    names = ['danil', 'edmund']

# here we map one array to another, convert each element by some rule
    puts "====result"
    puts names.map {|name| name.capitalize } # now names contains ['Danil', 'Edmund']
    puts names.collect {|name| name.capitalize } # now names contains ['Danil', 'Edmund']
    puts "====anagram"
    puts is_anagram? "bad credit", "debit card"
    puts "====anagram"

    # puts names.each { |name| name = name.capitalize }
  end
  def search_movies
    if params[:terms]
      @result = ITunesSearchAPI.search(:term => params[:terms], :country => "US", :media => "movie")
    end
  end
  def non_repeated_chars(str)
    chars = str.chars.inject(Hash.new(0)){|h, val| h[val]+=1;h}.select{|k,v| v==1}.keys
    return chars[0]
  end
  def is_anagram?(string1, string2)
    return string1.sum == string2.sum
  end
end
