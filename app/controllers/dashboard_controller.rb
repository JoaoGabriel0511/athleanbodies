class DashboardController < ApplicationController
  before_action :authenticate_admin!
  layout "dashboard"
  def home
  end
  def edit_texts
    @text = Text.new
  end
  def update_texts
    @text = Text.find_by(section: params[:section])
    @text.content = text_params[:content]
    @text.save
    redirect_to about_path
  end
  private
    def text_params
      params.require(:text).permit(:section, :content)
    end
end
