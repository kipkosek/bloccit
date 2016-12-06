class Post < ActiveRecord::Base
  has_many :comments

  def self.censored
    self.all.each { |p| p.title = "SPAM" if p.id == 1 || p.id % 5 == 0 }
  end
end
