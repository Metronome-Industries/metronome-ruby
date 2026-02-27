# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Packages#retrieve
      class PackageRetrieveParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute package_id
        #
        #   @return [String]
        required :package_id, String

        # @!method initialize(package_id:, request_options: {})
        #   @param package_id [String]
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
