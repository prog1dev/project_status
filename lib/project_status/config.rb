module ProjectStatus
  class Config

    attr_accessor :access_key #, :db

    def initialize(values=nil)
      defaults = values.present? ? Config::ADDITIONAL_INFO.deep_merge!(values) : Config::ADDITIONAL_INFO
      defaults.each do |k,v|
        instance_variable_set("@#{k}",v)
      end
    end

    # def db
    #   @db == true ? Config::TABLE_NAME : @db
    # end

    def access_key
      @access_key = Config::ADDITIONAL_INFO[:access_key]
    end

    # TABLE_NAME = :project_info

    ADDITIONAL_INFO = {}
  end
end
