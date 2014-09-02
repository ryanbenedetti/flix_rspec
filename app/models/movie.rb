class Movie < ActiveRecord::Base
  
  def flop?
    total_gross.blank? || total_gross < 50000000
  end

  #Get current movies not future ones
  def self.released
    where("released_on <= ?", Time.now ).order("released_on desc")
  end
  
  
  #Get movies that gross more than 300 million
  def self.hits
    where("total_gross > ?", 300000000 ).order(total_gross: :desc)
  end

  #Get movies that gross less than 50 million
  def self.flops
    Movie.where("total_gross < ?", 50000000 ).order(total_gross: :asc)
    
  end
  
  #Get the last 3 movies added
  def self.recently_added
    order('created_at desc').limit(3)
  end
  
end
