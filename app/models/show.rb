class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    # character_name = self.characters.map {|character| character.actor}
    # character_name.Actor.full_name
  end
end
