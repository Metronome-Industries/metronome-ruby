# frozen_string_literal: true

module Metronome
  module Models
    class CustomFieldAddKeyParams < Metronome::BaseModel
      # @!attribute enforce_uniqueness
      #
      #   @return [Boolean]
      required :enforce_uniqueness, Metronome::BooleanModel

      # @!attribute entity
      #
      #   @return [Symbol, Metronome::Models::CustomFieldAddKeyParams::Entity]
      required :entity, enum: -> { Metronome::Models::CustomFieldAddKeyParams::Entity }

      # @!attribute key
      #
      #   @return [String]
      required :key, String

      # @!parse
      #   # @param enforce_uniqueness [Boolean]
      #   # @param entity [String]
      #   # @param key [String]
      #   #
      #   def initialize(enforce_uniqueness:, entity:, key:) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void

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
