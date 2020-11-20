class User < ApplicationRecord
  validates :username, :email, :password, presence: { message: 'The field can-t be emty' }
  validates :password, length: { minimum: 6, message: 'Password has to be longer or equal to 6'}
  validates :username, uniqueness: { message: 'This username has been taken' }
  validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP,
                                                message: 'Pleas type an email' }
end
