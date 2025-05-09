# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::CustomFields#add_key
      class CustomFieldAddKeyParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute enforce_uniqueness
        #
        #   @return [Boolean]
        required :enforce_uniqueness, MetronomeSDK::Internal::Type::Boolean

        # @!attribute entity
        #
        #   @return [Symbol, MetronomeSDK::V1::CustomFieldAddKeyParams::Entity]
        required :entity, enum: -> { MetronomeSDK::V1::CustomFieldAddKeyParams::Entity }

        # @!attribute key
        #
        #   @return [String]
        required :key, String

        # @!method initialize(enforce_uniqueness:, entity:, key:, request_options: {})
        #   @param enforce_uniqueness [Boolean]
        #   @param entity [Symbol, MetronomeSDK::V1::CustomFieldAddKeyParams::Entity]
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
