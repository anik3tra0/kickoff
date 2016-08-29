class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Associations
  has_one :profile

  # Callbacks
  after_create :create_profile

  def create_profile
  	Profile.create(user_id: self.id)
  end

end