class CoursesController < ApplicationController
before_filter :authenticate_user!

def index
    @courses = Course.all
end

def show
    @course = Course.find(params[:id])
    @segments = @course.segments.where(released: true)
end

#def new
#    @course = Course.new
#end
#
#def create
#    @course = Course.new(params[:course])
#    if @course.save
#        redirect_to course_path(@course)
#    else
#        render 'new'
#    end
#end

def create_feedback
    segment = Segment.find(params[:feedback][:segment_id])
    
    unless segment
      redirect_to courses_path
      return
    end

    feedback = Feedback.new({
        score: params[:feedback][:score]
    })
    feedback.segment = segment
    feedback.user = current_user
    
    feedback.save
    redirect_to course_path(feedback.segment.course), notice: "You added feedback to #{feedback.segment.name}. You can do this as many times as you like."
end

end
