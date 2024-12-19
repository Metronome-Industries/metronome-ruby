# frozen_string_literal: true

module Metronome
  module Models
    class CustomFieldSetValuesParams < Metronome::BaseModel
      # @!attribute custom_fields
      #
      #   @return [Hash{Symbol => String}]
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
      #   # @param custom_fields [Hash{Symbol => String}]
      #   # @param entity [String]
      #   # @param entity_id [String]
      #   #
      #   def initialize(custom_fields:, entity:, entity_id:) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void

      # @example
      #
      # ```ruby
      # case enum
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
        INVOICE = :invoice
        PLAN = :plan
        PROFESSIONAL_SERVICE = :professional_service
        PRODUCT = :product
        RATE_CARD = :rate_card
        SCHEDULED_CHARGE = :scheduled_charge
      end
    end
  end
end
