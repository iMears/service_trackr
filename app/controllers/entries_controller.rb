class EntriesController < ApplicationController
  def index
    @issue = Issue.find(params[:issue_id])
    @entries = Entry.where(issue_id: @issue)
  end

  def new
    @entry = Entry.new
  end

  def create
    @issue = Issue.find(params[:issue_id])
    @entry = @issue.entries.create(entry_params)
    if @entry.valid?
      flash[:success] = "Entry posted successfully!"
      redirect_to user_issue_entries_path(current_user, @issue)
    else
      flash[:error] = "Entry could not be posted"
      render 'new'
    end
  end

  private

    def entry_params
      params.require(:entry).permit(:posted_by, :body)
    end
end
