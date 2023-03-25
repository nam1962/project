class User < ActiveRecord::Base
  has_many :posts
  before_validation :lower_username
  before_validation :strip_email
  # TODO: Add some validation
  validates :username, presence: true, uniqueness: true
  # validates_associated :posts, presence: true, uniqueness: true
  validates :email, presence: true, format: { with: /\A.*@.*\.com\z/ }
  # TODO: Add some callbacks

  private

  def lower_username
    self.username = username.downcase unless username.nil?
  end
  def strip_email
    self.email = email.strip unless email.nil?
  end

end
