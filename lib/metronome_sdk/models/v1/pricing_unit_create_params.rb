# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::PricingUnits#create
      class PricingUnitCreateParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute name
        #   The name of the custom pricing unit. This will appear on invoices.
        #
        #   @return [String]
        required :name, String

        # @!method initialize(name:, request_options: {})
        #   @param name [String] The name of the custom pricing unit. This will appear on invoices.
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
