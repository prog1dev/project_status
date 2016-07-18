module ProjectStatus
  class StatusController < ApplicationController

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
      access_key = Config::ADDITIONAL_INFO[:access_key]
      if access_key && access_key != params[:access_key]
        render json: { error: "Access denied" }
      end
    end
  end
end
