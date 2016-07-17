class StatusController < ::ApplicationController

  before_action :check_access_key

  def index
    render json: {
        git_info:     ProjectStatus::GitInfo.generate,
        project_info: ProjectStatus::ProjectInfo.generate,
        started_at:   Time.now
    }
  end

  protected

  def check_access_key
  end
end
