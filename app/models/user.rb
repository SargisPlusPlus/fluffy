class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable #, :confirmable

  has_one :about
  has_one :contact_info
  has_one :video
  has_one :profession
  has_many :offers

  validates :first_name, presence: true
  validates :last_name, presence: true
end
