class DashboardController < ApplicationController

def index
    @feedbacks = Feedback.order('id DESC')
end

end
