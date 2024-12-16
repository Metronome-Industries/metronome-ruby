# frozen_string_literal: true

module Metronome
  module Models
    class CustomFieldListKeysResponse < Metronome::BaseModel
      # @!attribute data
      #
      #   @return [Array<Metronome::Models::CustomFieldListKeysResponse::Data>]
      required :data, Metronome::ArrayOf.new(-> { Metronome::Models::CustomFieldListKeysResponse::Data })

      # @!attribute next_page
      #
      #   @return [String]
      required :next_page, String

      # @!parse
      #   # @param data [Array<Metronome::Models::CustomFieldListKeysResponse::Data>]
      #   # @param next_page [String]
      #   #
      #   def initialize(data:, next_page:) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void

      class Data < Metronome::BaseModel
        # @!attribute enforce_uniqueness
        #
        #   @return [Boolean]
        required :enforce_uniqueness, Metronome::BooleanModel

        # @!attribute entity
        #
        #   @return [Symbol, Metronome::Models::CustomFieldListKeysResponse::Data::Entity]
        required :entity, enum: -> { Metronome::Models::CustomFieldListKeysResponse::Data::Entity }

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
end
