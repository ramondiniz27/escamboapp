class Ad < ApplicationRecord

#Status
enum status: [:active,:processing,:sold]

# RatyRate config
ratyrate_rateable 'quality'

# Associations
  belongs_to :category, counter_cache: true
  belongs_to :member
  has_many :comments

# Markdowns
before_save  :md_to_html

# Validates

validates :title,:description_md,:description_short,:category_id, presence: true 
validates :picture, :finish_date, presence: true
validates :price, numericality:{greater_than: 0}

# Paperclip config 
	has_attached_file :picture, styles: { large: "800x300#",medium: "320x150#", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

# Gem money-rails
	monetize :price_cents

# Scopes
	scope :descending_order, -> (quantity = 12, page = 1) { limit(quantity).order(created_at: :desc).page(page).per(6) }
	scope :to_the, -> (member) { where(member: member) }
	scope :where_category, -> (id, page) { where(category: id).page(page).per(6) }
	scope :search, -> (term,page = 1) { 
		where("title LIKE ?","%#{term}%").page(page).per(6) 
	}

private

def md_to_html

options = {
		filter_html: true,
		link_attributes: {
			rel: "nofollow",
			target: "_blank"
	}
}

	extensions = {
	  space_after_headers: true,
	  autolink: true
	}

	renderer = Redcarpet::Render::HTML.new(options)
	markdown = Redcarpet::Markdown.new(renderer, extensions)
	self.description = markdown.render(self.description_md)
	
end

end
