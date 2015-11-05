class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

validates_uniqueness_of :email
has_many :events
has_many :events, through: :tickets
has_many :addresses, as: :addressebable
has_many :tickets

end
