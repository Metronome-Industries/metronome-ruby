# frozen_string_literal: true

module Metronome
  module Models
    class CustomFieldListKeysParams < Metronome::BaseModel
      # @!parse
      #   extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

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
      #   @return [Array<Symbol, Metronome::Models::CustomFieldListKeysParams::Entity>, nil]
      optional :entities,
               -> {
                 Metronome::ArrayOf[enum: Metronome::Models::CustomFieldListKeysParams::Entity]
               }

      # @!parse
      #   # @return [Array<Symbol, Metronome::Models::CustomFieldListKeysParams::Entity>]
      #   attr_writer :entities

      # @!parse
      #   # @param next_page [String]
      #   # @param entities [Array<Symbol, Metronome::Models::CustomFieldListKeysParams::Entity>]
      #   # @param request_options [Metronome::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(next_page: nil, entities: nil, request_options: {}, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void

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
      class Entity < Metronome::Enum
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

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
