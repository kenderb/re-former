class User < ApplicationRecord
  validates :username, :email, :password, presence: { message: '- The field can not be empty' }
  validates :password, length: { minimum: 6, message: '- Password has to be longer or equal to 6' }
  validates :username, uniqueness: { message: '- This username has been taken' }
  validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP,
                                                message: '- Please type an email' }
end
