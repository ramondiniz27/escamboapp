class Category < ActiveRecord::Base

include FriendlyId
# Require FriendlyID Gem
friendly_id :description, use: :slugged

# Associations
	has_many :ads
	
# Validations
	validates_presence_of :description

end
