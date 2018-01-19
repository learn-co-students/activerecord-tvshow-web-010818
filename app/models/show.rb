require 'pry'

# <class name>.sum(:<column_name>)
# Song.where("number_of_stars > ?", 3)
# Song.minimum(:number_of_stars)


class Show < ActiveRecord::Base

  def self.highest_rating
    #Return the highest value in the ratings column.

    Show.maximum(:rating)
  end

  def self.most_popular_show
    #Returns the show with the highest rating.

    Show.all.find_by rating: self.highest_rating

  end

  def self.lowest_rating
    # returns the lowest value in the ratings column.

    Show.minimum(:rating)
  end

  def self.least_popular_show
    #returns the show with the lowest rating.

    Show.all.find_by rating: self.lowest_rating
  end

  def self.ratings_sum
    #returns the sum of all of the ratings.

    Show.sum(:rating)
  end

  def self.popular_shows
    # returns an array of all of the shows that have a rating greater than 5.
    

    Show.all.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    # returns an array of all of the shows sorted by alphabetical order according to their names.

    Show.order(:name)
  end

end
