class Event < ActiveRecord::Base
has_many :addresses
belongs_to :owner, class User
has_many :tickets
has_many :users, through: :tickets

end
