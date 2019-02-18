class StaticPagesController < ApplicationController
  def home
    @title = Text.find_by(section: :home_title)
    @subtitle = Text.find_by(section: :home_subtitle)
    @testimonial_client_1 = Text.find_by(section: :testimonial_client_1)
    @testimonial_content_1 = Text.find_by(section: :testimonial_content_1)
    @testimonial_client_2 = Text.find_by(section: :testimonial_client_2)
    @testimonial_content_2 = Text.find_by(section: :testimonial_content_2)
    @testimonial_client_3 = Text.find_by(section: :testimonial_client_3)
    @testimonial_content_3 = Text.find_by(section: :testimonial_content_3)
    @about_main_text = Text.find_by(section: :about_main_text)
    @about_main_text_title = Text.find_by(section: :about_main_text_title)
  end
  def services
    @courses = Course.all
    @monday = When.where(week: :monday)
    @tuesday = When.where(week: :tuesday)
    @wednesday = When.where(week: :wednesday)
    @thursday = When.where(week: :thursday)
    @friday = When.where(week: :friday)
  end
  def blog
    @page = params[:page]
    @name = params[:name]
    if @name
        @last_page = Video.where('lower(name) LIKE ?', "%#{params[:name].downcase}%").page(1).per(18).total_pages
        @videos = Video.where('lower(name) LIKE ?', "%#{params[:name].downcase}%").order(:created_at).page(@page).per(18)
    else
        @last_page = Video.all.page(1).per(18).total_pages
        @videos = Video.all.order(:created_at).page(@page).per(18)
    end
  end
  def contact
  end
end
