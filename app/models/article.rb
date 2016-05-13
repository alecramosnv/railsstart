class Article < ActiveRecord::Base
	has_many :comments, dependent: :destroy
  	validates :title, uniqueness: true, presence: true,
                    length: { minimum: 5 }
  	validates :text, presence: true
end