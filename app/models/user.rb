class User < ApplicationRecord
  validates_presence_of :name, :login
  validates_uniqueness_of :name, :login

  has_many :posts

  def as_json(*_args)
    {name: name, login: login }
  end
  
end