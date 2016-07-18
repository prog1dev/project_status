Dir.glob(File.join(File.dirname(__FILE__), "project_status", '**/*.rb'), &method(:require))

module ProjectStatus

  mattr_accessor :config

  class ProjectStatusEngine < Rails::Engine

    config.autoload_paths << File.expand_path("..", __FILE__)

    config.before_initialize do |app|
      ProjectStatus.config = ProjectStatus::Config.new app.config.try(:project_status)
    end
  end
end
