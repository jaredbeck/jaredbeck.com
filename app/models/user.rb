class User < ActiveRecord::Base
  devise :database_authenticatable, :rememberable, :lockable
end
