class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    # Returns an array of the full names of each actor associated with the show
    # A show has many actors through characters
    a = self.characters.map {|name| name.actor}
    a.Actor.full_name
  end
end
