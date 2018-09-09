class RankingController < ApplicationController
  def index
      @users= current_user.completedtasks
  end
end
