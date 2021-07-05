class Show < ActiveRecord::Base
    has_many :characters
    belongs_to :network

    def actors_list
        self.characters.map do |character|
            character.actor.full_name
        end
    end

    def build_network(name)
        n = Network.create(name)
        n.shows << self
    end

end