# frozen_string_literal: true

module Metronome
  module Models
    class CustomFieldSetValuesParams < Metronome::BaseModel
      # @!parse
      #   extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      # @!attribute custom_fields
      #
      #   @return [Hash{Symbol=>String}]
      required :custom_fields, Metronome::HashOf[String]

      # @!attribute entity
      #
      #   @return [Symbol, Metronome::Models::CustomFieldSetValuesParams::Entity]
      required :entity, enum: -> { Metronome::Models::CustomFieldSetValuesParams::Entity }

      # @!attribute entity_id
      #
      #   @return [String]
      required :entity_id, String

      # @!parse
      #   # @param custom_fields [Hash{Symbol=>String}]
      #   # @param entity [Symbol, Metronome::Models::CustomFieldSetValuesParams::Entity]
      #   # @param entity_id [String]
      #   # @param request_options [Metronome::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(custom_fields:, entity:, entity_id:, request_options: {}, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void

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
      end
    end
  end
end
