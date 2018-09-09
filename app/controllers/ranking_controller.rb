class RankingController < ApplicationController
  def index
      @ranking = current_user.completedtasks
  end
end
