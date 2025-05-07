# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::CustomFields#set_values
      class CustomFieldSetValuesParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute custom_fields
        #
        #   @return [Hash{Symbol=>String}]
        required :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

        # @!attribute entity
        #
        #   @return [Symbol, MetronomeSDK::V1::CustomFieldSetValuesParams::Entity]
        required :entity, enum: -> { MetronomeSDK::V1::CustomFieldSetValuesParams::Entity }

        # @!attribute entity_id
        #
        #   @return [String]
        required :entity_id, String

        # @!method initialize(custom_fields:, entity:, entity_id:, request_options: {})
        #   @param custom_fields [Hash{Symbol=>String}]
        #   @param entity [Symbol, MetronomeSDK::V1::CustomFieldSetValuesParams::Entity]
        #   @param entity_id [String]
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
