class DashboardController < ApplicationController
before_filter :authenticate_admin_user!

def index
    @feedbacks = Feedback.order('id DESC')
end

end
