require 'fastlane/action'
require_relative '../helper/azuredevops_envvars_helper'

module Fastlane
  module Actions
    class AzuredevopsEnvvarsAction < Action
      def self.run(params)
        if params[:env_variable_name] && ENV.key?(params[:env_variable_name])
            return ENV[params[:env_variable_name]]
        end

        if params[:env_default_value]
          return params[:env_default_value]
        end

        return ""
      end

      def self.description
        "A Fastlane plugin that provides passthrough access to AzureDevOps environment variables"
      end

      def self.authors
        ["Star Leasing Company"]
      end


      def self.details
        "A Fastlane plugin that provides passthrough access to AzureDevOps environment variables"
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :env_variable_name,
                               env_name: "FL_AZDO_ENV_VARIABLE_NAME",
                               description: "The Azure DevOps environment variable to access",
                               optional: false,
                               type: String),
          FastlaneCore::ConfigItem.new(key: :env_default_value,
                               env_name: "FL_AZDO_ENV_DEFAULT_VALUE",
                               description: "If the environment variable is not found, return this value instead",
                               optional: true,
                               type: String)

        ]
      end

      def self.is_supported?(platform)
        true
      end
    end
  end
end
