class Address < ActiveRecord::Base
  belongs_to :user
  belongs_to :event
  belongs_to :addressebable, polymorphic: true
  def edit
end
