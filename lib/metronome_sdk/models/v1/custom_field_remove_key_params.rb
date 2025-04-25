# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::CustomFields#remove_key
      class CustomFieldRemoveKeyParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute entity
        #
        #   @return [Symbol, MetronomeSDK::Models::V1::CustomFieldRemoveKeyParams::Entity]
        required :entity, enum: -> { MetronomeSDK::Models::V1::CustomFieldRemoveKeyParams::Entity }

        # @!attribute key
        #
        #   @return [String]
        required :key, String

        # @!method initialize(entity:, key:, request_options: {})
        #   @param entity [Symbol, MetronomeSDK::Models::V1::CustomFieldRemoveKeyParams::Entity]
        #   @param key [String]
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

        module Entity
          extend MetronomeSDK::Internal::Type::Enum

          ALERT = :alert
          BILLABLE_METRIC = :billable_metric
          CHARGE = :charge
          COMMIT = :commit
          CONTRACT_CREDIT = :contract_credit
          CONTRACT_PRODUCT = :contract_product
          CONTRACT = :contract
          CREDIT_GRANT = :credit_grant
          CUSTOMER_PLAN = :customer_plan
          CUSTOMER = :customer
          DISCOUNT = :discount
          INVOICE = :invoice
          PLAN = :plan
          PROFESSIONAL_SERVICE = :professional_service
          PRODUCT = :product
          RATE_CARD = :rate_card
          SCHEDULED_CHARGE = :scheduled_charge
          SUBSCRIPTION = :subscription

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
