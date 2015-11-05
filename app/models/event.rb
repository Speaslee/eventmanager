class Event < ActiveRecord::Base
has_many :addresses, as: :addressebable
has_many :tickets
has_many :users, through: :tickets

belongs_to :owner, class_name: 'User'
accepts_nested_attributes_for :addresses

include PgSearch
pg_search_scope :search_by_description, against: :description
 pg_search_scope :search_all, against: [:event_name, :description]

 def self.search term
  self.where("description LIKE ?", "%#{term}%")
end
end
