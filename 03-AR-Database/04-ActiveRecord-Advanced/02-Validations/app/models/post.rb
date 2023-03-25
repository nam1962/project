class Post < ActiveRecord::Base
  belongs_to :user

  # TODO: Add some validation
  validates :title, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 5 }
  validates :user, presence: true
  validates :url, presence: true, format: { with: /https?:\/\/[\S]+/ }
end
