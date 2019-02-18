class WhenController < ApplicationController
    before_action :authenticate_admin!
    layout 'dashboard', except: [:index]
    def index
        @monday = When.where(week: :monday)
        @tuesday = When.where(week: :tuesday)
        @wednesday = When.where(week: :wednesday)
        @thursday = When.where(week: :thursday)
        @friday = When.where(week: :friday)
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
