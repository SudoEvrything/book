class Author < ApplicationRecord
	
	has_and_belongs_to_many :books
	validates :first_name, presence: true

end
