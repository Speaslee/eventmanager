class Event < ActiveRecord::Base
has_many :addresses, as: :addressebable
has_many :tickets
has_many :users, through: :tickets

belongs_to :owner, class_name: 'User'
accepts_nested_attributes_for :addresses
end
