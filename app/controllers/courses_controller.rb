class CoursesController < ApplicationController
    before_action :authenticate_admin!
    layout "dashboard"
    
    def index
        @courses = Course.all
    end

    def new
        @course = Course.new
    end

    def create
        @course = Course.new(course_params)
        if @course.save
            redirect_to courses_path
        else
            redirect_to new_course_path
        end
    end

    def edit
        @course = Course.find(params[:id])
    end

    def upgrade
        @course = Course.find(params[:id])
        if @course.upgrade(course_params)
            redirect_to courses_path
        else
            redirect_to edit_course_path
        end
    end

    def destroy
        @course = Course.find(params[:id])
        @course.delete
        redirect_to courses_path
    end


    private
        def course_params
            params.require(:course).permit(:name, :description, :hour)
        end
end
