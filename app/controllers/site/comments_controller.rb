class Site::CommentsController < SiteController
  before_action :authenticate_member!
    def create
      @comment = Comment.new(comment_params)
      @comment.member = current_member

    if @comment.save
      redirect_to site_home_index_path, notice: "Comentário registrado com sucesso!"
    else
      redirect_to  site_home_index_path, notice: "Erro ao Adcionar Comentário" 
    end
  end
private
  def comment_params
    params.require(:comment).permit(:body, :ad_id)
  end
end
