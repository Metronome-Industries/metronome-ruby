# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::PricingUnits#list
      class PricingUnitListResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute is_currency
        #
        #   @return [Boolean, nil]
        optional :is_currency, MetronomeSDK::Internal::Type::Boolean

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(id: nil, is_currency: nil, name: nil)
        #   @param id [String]
        #   @param is_currency [Boolean]
        #   @param name [String]
      end
    end
  end
end
