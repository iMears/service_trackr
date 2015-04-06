class IssuesController < ApplicationController
  def index
    @issues = Issue.where(user_id: current_user)
  end

  def new
    @issue = Issue.new
  end
end