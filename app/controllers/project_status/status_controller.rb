class StatusController < ::ApplicationController

  def index
    render json: {
        git_revision: ProjectStatus::GitRevision.generate,
        # project_revision: ProjectStatus::ProjectRevision.generate,
        started_at: Time.now
    }
  end
end
