class User < ActiveRecord::Base
	BCrypt::Engine.cost = 12

	validates_presence_of :email
	
	has_secure_password

  has_many :users_books
  has_many :books, through: :users_books

  def self.confirm(user_email, unsecure_password)
    user = User.find_by(email: user_email)
    if user
    	user.authenticate(unsecure_password)
    end
  end

end
