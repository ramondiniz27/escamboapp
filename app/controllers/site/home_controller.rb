class Site::HomeController < SiteController

  def index
  	@categories = Category.order(:description)
    @ads  = Ad.descending_order(6, params[:page])
    @carousel = Ad.limit(3).order("RANDOM()")
  end
end
