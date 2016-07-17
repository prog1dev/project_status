# Dir.glob(File.join(File.dirname(__FILE__), "project_status", '**/*.rb'), &method(:require))
require "project_status/version"
require "project_status/git_info"

module ProjectStatus
  include ProjectStatus::GitInfo
  include ProjectStatus::ProjectInfo

  class ProjectStatusEngine < Rails::Engine
    config.autoload_paths << File.expand_path("..", __FILE__)
  end
end
