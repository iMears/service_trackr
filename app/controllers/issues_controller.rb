class IssuesController < ApplicationController
  def index
    @issues = Issue.where(user_id: current_user).order('created_at desc')
  end

  def new
    @issue = Issue.new
  end

  def create
    @issue = Issue.create(issue_params)
    if @issue.valid?
      current_user.issues << @issue
      flash[:success] = "Issue Created!"
      redirect_to user_issue_path(current_user, @issue)
    else
      #TODO display full messages to user
      flash[:alert] = "Error: Could not create this issue!"
      render 'new'
    end
  end

  def show
    @issue = Issue.find(params[:id])
  end

  def edit
    @issue = Issue.find(params[:id])
  end

  def update
    @issue = Issue.find(params[:id])
    @issue.update(issue_params)
    if @issue.valid?
      flash[:success] = "Issue Updated!"
      redirect_to user_issue_path(current_user, @issue)
    else
      flash[:error] = "Error, could not update!"
    end
  end

  private

    def issue_params
      params.require(:issue).permit(:subject, :priority, :description)
    end
end