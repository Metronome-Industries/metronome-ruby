# frozen_string_literal: true

module MetronomeSDK
  module Models
    module Notifications
      # @see MetronomeSDK::Resources::Notifications::System#list
      class SystemListParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
