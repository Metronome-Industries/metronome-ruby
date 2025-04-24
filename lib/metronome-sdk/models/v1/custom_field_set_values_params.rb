# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class CustomFieldSetValuesParams < MetronomeSDK::BaseModel
        # @!parse
        #   extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

        # @!attribute custom_fields
        #
        #   @return [Hash{Symbol=>String}]
        required :custom_fields, MetronomeSDK::HashOf[String]

        # @!attribute entity
        #
        #   @return [Symbol, MetronomeSDK::Models::V1::CustomFieldSetValuesParams::Entity]
        required :entity, enum: -> { MetronomeSDK::Models::V1::CustomFieldSetValuesParams::Entity }

        # @!attribute entity_id
        #
        #   @return [String]
        required :entity_id, String

        # @!parse
        #   # @param custom_fields [Hash{Symbol=>String}]
        #   # @param entity [Symbol, MetronomeSDK::Models::V1::CustomFieldSetValuesParams::Entity]
        #   # @param entity_id [String]
        #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(custom_fields:, entity:, entity_id:, request_options: {}, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case entity
        # in :alert
        #   # ...
        # in :billable_metric
        #   # ...
        # in :charge
        #   # ...
        # in :commit
        #   # ...
        # in :contract_credit
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Entity < MetronomeSDK::Enum
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

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end
    end
  end
end
