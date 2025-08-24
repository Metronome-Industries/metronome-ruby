# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::CustomFields#list_keys
      class CustomFieldListKeysParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute next_page
        #   Cursor that indicates where the next page of results should start.
        #
        #   @return [String, nil]
        optional :next_page, String

        # @!attribute entities
        #   Optional list of entity types to return keys for
        #
        #   @return [Array<Symbol, MetronomeSDK::Models::V1::CustomFieldListKeysParams::Entity>, nil]
        optional :entities,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[enum: MetronomeSDK::V1::CustomFieldListKeysParams::Entity] }

        # @!method initialize(next_page: nil, entities: nil, request_options: {})
        #   @param next_page [String] Cursor that indicates where the next page of results should start.
        #
        #   @param entities [Array<Symbol, MetronomeSDK::Models::V1::CustomFieldListKeysParams::Entity>] Optional list of entity types to return keys for
        #
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
