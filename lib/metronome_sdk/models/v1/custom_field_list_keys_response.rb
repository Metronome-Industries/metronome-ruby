# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::CustomFields#list_keys
      class CustomFieldListKeysResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute enforce_uniqueness
        #
        #   @return [Boolean]
        required :enforce_uniqueness, MetronomeSDK::Internal::Type::Boolean

        # @!attribute entity
        #
        #   @return [Symbol, MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Entity]
        required :entity, enum: -> { MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Entity }

        # @!attribute key
        #
        #   @return [String]
        required :key, String

        # @!method initialize(enforce_uniqueness:, entity:, key:)
        #   @param enforce_uniqueness [Boolean]
        #   @param entity [Symbol, MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Entity]
        #   @param key [String]

        # @see MetronomeSDK::Models::V1::CustomFieldListKeysResponse#entity
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
          PACKAGE_COMMIT = :package_commit
          PACKAGE_CREDIT = :package_credit
          PACKAGE_SUBSCRIPTION = :package_subscription
          PACKAGE_SCHEDULED_CHARGE = :package_scheduled_charge

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
