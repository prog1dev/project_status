module ProjectStatus
  class ProjectInfo
    class << self
      def generate
        @project_info ||= {
          ruby_version:  RUBY_VERSION,
          rails_version: Rails.version
        }
        @project_info.deep_merge!(Config::ADDITIONAL_INFO)
        @project_info.except(:access_key)
      end
    end
  end
end
