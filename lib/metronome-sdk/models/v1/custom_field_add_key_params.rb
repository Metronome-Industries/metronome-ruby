# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class CustomFieldAddKeyParams < MetronomeSDK::BaseModel
        # @!parse
        #   extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

        # @!attribute enforce_uniqueness
        #
        #   @return [Boolean]
        required :enforce_uniqueness, MetronomeSDK::BooleanModel

        # @!attribute entity
        #
        #   @return [Symbol, MetronomeSDK::Models::V1::CustomFieldAddKeyParams::Entity]
        required :entity, enum: -> { MetronomeSDK::Models::V1::CustomFieldAddKeyParams::Entity }

        # @!attribute key
        #
        #   @return [String]
        required :key, String

        # @!parse
        #   # @param enforce_uniqueness [Boolean]
        #   # @param entity [Symbol, MetronomeSDK::Models::V1::CustomFieldAddKeyParams::Entity]
        #   # @param key [String]
        #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(enforce_uniqueness:, entity:, key:, request_options: {}, **) = super

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
