class User < ApplicationRecord
	has_many :fav_gyms, :foreign_key => "user_id" :through => :users_gymns
	has_many :gyms, :through => :climb_sessions
	
	# host methods
	has_many :hosted_climb_sessions, :foreign_key => 'host_id' :through => :climb_sessions
	has_many :guests, through: :climb_sessions, :foreign_key => "guest_id"

	# guest methods
	has_many :climb_sessions, :foreign_key => 'guest_id'
	has_many :hosts, through: :climb_sessions, :foreign_key => "host_id"

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
