# frozen_string_literal: true

module Metronome
  module Models
    class CustomFieldDeleteValuesParams < Metronome::BaseModel
      # @!attribute entity
      #
      #   @return [Symbol, Metronome::Models::CustomFieldDeleteValuesParams::Entity]
      required :entity, enum: -> { Metronome::Models::CustomFieldDeleteValuesParams::Entity }

      # @!attribute entity_id
      #
      #   @return [String]
      required :entity_id, String

      # @!attribute keys
      #
      #   @return [Array<String>]
      required :keys, Metronome::ArrayOf[String]

      # @!parse
      #   # @param entity [String]
      #   # @param entity_id [String]
      #   # @param keys [Array<String>]
      #   #
      #   def initialize(entity:, entity_id:, keys:, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void

      # @example
      #
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
