class IssuesController < ApplicationController
  def index
    @issues = Issue.where(user_id: current_user)
  end
end