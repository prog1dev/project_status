module ProjectStatus
  class ProjectInfo
    class << self
      def generate
        {
          ruby_version:  RUBY_VERSION,
          rails_version: Rails.version
        }
      end
    end
  end
end
