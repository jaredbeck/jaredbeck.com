class User < ActiveRecord::Base
  devise :database_authenticatable, :rememberable, :lockable
  attr_accessible :email, :password, :password_confirmation, :remember_me
end
