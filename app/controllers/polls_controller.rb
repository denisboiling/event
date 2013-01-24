class PollsController < ApplicationController
  authorize_resource

  def index
    @polls = Poll.newer_started.page(params[:page]).per(3)
  end

  def show
    @poll = Poll.find(params[:id])
    @poll.record_pageview!
  end
end
