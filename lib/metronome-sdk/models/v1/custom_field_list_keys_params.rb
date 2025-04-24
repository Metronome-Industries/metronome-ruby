# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class CustomFieldListKeysParams < MetronomeSDK::BaseModel
        # @!parse
        #   extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

        # @!attribute [r] next_page
        #   Cursor that indicates where the next page of results should start.
        #
        #   @return [String, nil]
        optional :next_page, String

        # @!parse
        #   # @return [String]
        #   attr_writer :next_page

        # @!attribute [r] entities
        #   Optional list of entity types to return keys for
        #
        #   @return [Array<Symbol, MetronomeSDK::Models::V1::CustomFieldListKeysParams::Entity>, nil]
        optional :entities,
                 -> { MetronomeSDK::ArrayOf[enum: MetronomeSDK::Models::V1::CustomFieldListKeysParams::Entity] }

        # @!parse
        #   # @return [Array<Symbol, MetronomeSDK::Models::V1::CustomFieldListKeysParams::Entity>]
        #   attr_writer :entities

        # @!parse
        #   # @param next_page [String]
        #   # @param entities [Array<Symbol, MetronomeSDK::Models::V1::CustomFieldListKeysParams::Entity>]
        #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(next_page: nil, entities: nil, request_options: {}, **) = super

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
