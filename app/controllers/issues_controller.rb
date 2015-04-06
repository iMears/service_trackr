class IssuesController < ApplicationController
  def index
    @issues = Issue.where(user_id: current_user)
  end

  def new
    @issue = Issue.new
  end

  def create
    if @issue = Issue.create(issue_params)
      current_user.issues << @issue
      redirect_to user_issues_path(current_user)
    else
      flash[:error] = "didnt work!!"
      render 'new'
    end
  end

  private

    def issue_params
      params.require(:issue).permit(:subject, :priority, :description)
    end
end