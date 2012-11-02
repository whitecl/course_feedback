class DashboardController < ApplicationController
before_filter :authenticate_admin_user!

def index
    @feedbacks = Feedback.order('id DESC')
end

def poll_feedback
    @feedbacks = Feedback.order('id DESC')
    render '_table_data', layout: false
end

end
