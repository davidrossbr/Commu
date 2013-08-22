class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
  				:nome, :sobrenome, :profile
  # attr_accessible :title, :body

  validates :nome, presence: true
  validates :sobrenome, presence: true
  validates :profile, presence: true, 
                           uniqueness: true,
                           format: {
                              with: /^[a-zA-Z0-9_-]+$/,
                              message: 'Must be formatted correctly.'
                           }

  def full_name
    nome + " " + sobrenome
  end
end
