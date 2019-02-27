class VideosController < ApplicationController
    before_action :authenticate_admin!
    layout "dashboard"
    def index
        @page = params[:page]
        @name = params[:name]
        if @name
            @last_page = Video.where('lower(name) LIKE ?', "%#{params[:name].downcase}%").page(1).per(20).total_pages
            @videos = Video.where('lower(name) LIKE ?', "%#{params[:name].downcase}%").order(:created_at).page(@page).per(20)
        else
            @last_page = Video.all.page(1).per(20).total_pages
            @videos = Video.all.order(:created_at).page(@page).per(20)
        end
    end
    def new
        @video = Video.new
    end
    def create
        @video = Video.new(video_params)
        if @video.save
            flash[:notice] = 'Video successfully created'
            redirect_to videos_path(page: 1)
        else
            flash[:alert] = @video.errors.full_messages
            redirect_to new_video_path
        end
    end
    def edit
        @video = Video.find(params[:id])
    end
    def update
        @video = Video.find(params[:id])
        if @video.update(video_params)
            flash[:notice] = 'Video successfully updated'
            redirect_to videos_path(page: params[:page])
        else
            flash[:alert] = @video.errors.full_messages
            redirect_to edit_video_path
        end
    end
    def destroy
        @video = Video.find(params[:id])
        @video.delete
        redirect_to videos_path(page: params[:page])
    end
    private
        def video_params
            params.require(:video).permit(:url, :name, :description)
        end
end
