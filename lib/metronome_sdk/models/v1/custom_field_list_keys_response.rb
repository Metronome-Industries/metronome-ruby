# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::CustomFields#list_keys
      class CustomFieldListKeysResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data>]
        required :data,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data] }

        # @!attribute next_page
        #
        #   @return [String, nil]
        required :next_page, String, nil?: true

        # @!method initialize(data:, next_page:)
        #   @param data [Array<MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data>]
        #   @param next_page [String, nil]

        class Data < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute enforce_uniqueness
          #
          #   @return [Boolean]
          required :enforce_uniqueness, MetronomeSDK::Internal::Type::Boolean

          # @!attribute entity
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data::Entity]
          required :entity, enum: -> { MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data::Entity }

          # @!attribute key
          #
          #   @return [String]
          required :key, String

          # @!method initialize(enforce_uniqueness:, entity:, key:)
          #   @param enforce_uniqueness [Boolean]
          #   @param entity [Symbol, MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data::Entity]
          #   @param key [String]

          # @see MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data#entity
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
end
