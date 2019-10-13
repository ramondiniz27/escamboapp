class Site::AdDetailController < SiteController

	def show
		@ad = Ad.find(params[:id])
		respond_to do |format|
			format.html
			format.pdf do
			  render pdf: "ad_detail"   # Excluding ".pdf" extension.
			end
		  end
	end
end


