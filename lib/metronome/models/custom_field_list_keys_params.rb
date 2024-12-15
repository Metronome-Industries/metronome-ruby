# frozen_string_literal: true

module Metronome
  module Models
    class CustomFieldListKeysParams < Metronome::BaseModel
      # @!attribute next_page
      #   Cursor that indicates where the next page of results should start.
      #
      #   @return [String]
      optional :next_page, String

      # @!attribute entities
      #   Optional list of entity types to return keys for
      #
      #   @return [Array<Symbol, Metronome::Models::CustomFieldListKeysParams::Entity>]
      optional :entities,
               Metronome::ArrayOf.new(enum: -> { Metronome::Models::CustomFieldListKeysParams::Entity })

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
