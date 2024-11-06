# frozen_string_literal: true

module Metronome
  module Models
    class CustomFieldListKeysResponse < Metronome::BaseModel
      # @!attribute [rw] data
      #   @return [Array<Metronome::Models::CustomFieldListKeysResponse::Data>]
      required :data, Metronome::ArrayOf.new(-> { Metronome::Models::CustomFieldListKeysResponse::Data })

      # @!attribute [rw] next_page
      #   @return [String]
      required :next_page, String

      class Data < Metronome::BaseModel
        # @!attribute [rw] enforce_uniqueness
        #   @return [Boolean]
        required :enforce_uniqueness, Metronome::BooleanModel

        # @!attribute [rw] entity
        #   @return [Symbol, Metronome::Models::CustomFieldListKeysResponse::Data::Entity]
        required :entity, enum: -> { Metronome::Models::CustomFieldListKeysResponse::Data::Entity }

        # @!attribute [rw] key
        #   @return [String]
        required :key, String

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

        # @!parse
        #   # Create a new instance of Data from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Hash] :enforce_uniqueness
        #   #   @option data [String] :entity
        #   #   @option data [String] :key
        #   def initialize(data = {}) = super
      end

      # @!parse
      #   # Create a new instance of CustomFieldListKeysResponse from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [Array<Object>] :data
      #   #   @option data [String] :next_page
      #   def initialize(data = {}) = super
    end
  end
end
