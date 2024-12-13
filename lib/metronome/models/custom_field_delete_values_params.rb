# frozen_string_literal: true

module Metronome
  module Models
    class CustomFieldDeleteValuesParams < Metronome::BaseModel
      # @!attribute entity
      #   @return [Symbol, Metronome::Models::CustomFieldDeleteValuesParams::Entity]
      required :entity, enum: -> { Metronome::Models::CustomFieldDeleteValuesParams::Entity }

      # @!attribute entity_id
      #   @return [String]
      required :entity_id, String

      # @!attribute keys
      #   @return [Array<String>]
      required :keys, Metronome::ArrayOf.new(String)

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
