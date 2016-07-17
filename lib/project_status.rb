require "project_status/version"
require "project_status/git_revision"

module ProjectStatus
  include ProjectStatus::GitRevision

  class ProjectStatusEngine < Rails::Engine
    config.autoload_paths << File.expand_path("..", __FILE__)
  end
end
