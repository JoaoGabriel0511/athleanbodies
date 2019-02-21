class WhenController < ApplicationController
    before_action :authenticate_admin!
    layout 'dashboard', except: [:index]
    def index
        @monday = When.where(week: :monday).order(:hour)
        @tuesday = When.where(week: :tuesday).order(:hour)
        @wednesday = When.where(week: :wednesday).order(:hour)
        @thursday = When.where(week: :thursday).order(:hour)
        @friday = When.where(week: :friday).order(:hour)
    end

    def edit
        @agenda = When.find(params[:id])
        @courses = Course.all
    end
 
    def select_course
        @agenda = When.find(params[:id])
        @course = Course.find(params[:course_id])
        @agenda.course = @course
        @agenda.save
        redirect_to agenda_path
    end
end
