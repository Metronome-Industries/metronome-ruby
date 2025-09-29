# frozen_string_literal: true

module MetronomeSDK
  module Models
    module Notifications
      # @see MetronomeSDK::Resources::Notifications::Offset#list
      class OffsetListParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute cursor
        #
        #   @return [String, nil]
        optional :cursor, String

        # @!attribute limit
        #
        #   @return [Float, nil]
        optional :limit, Float

        # @!method initialize(cursor: nil, limit: nil, request_options: {})
        #   @param cursor [String]
        #   @param limit [Float]
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
