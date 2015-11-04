class Member < ActiveRecord::Base
  validates :username, :rank, { presence: true }
end
