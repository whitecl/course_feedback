class CoursesController < ApplicationController
before_filter :authenticate_user!

def index
    @courses = Course.all
end

def show
    @course = Course.find(params[:id])
    @segments = @course.segments.where(released: true)
end

def new
    @course = Course.new
end

def create
    @course = Course.new(params[:course])
    if @course.save
        redirect_to course_path(@course)
    else
        render 'new'
    end
end

end
