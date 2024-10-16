# frozen_string_literal: true

module Metronome
  module Models
    class CustomFieldListKeysResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Array<Metronome::Models::CustomFieldListKeysResponse::Data>]
      required :data, Metronome::ArrayOf.new(-> { Metronome::Models::CustomFieldListKeysResponse::Data })

      # @!attribute [rw] next_page
      #   @return [String]
      required :next_page, String

      class Data < BaseModel
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

        # Create a new instance of Data from a Hash of raw data.
        #
        # @overload initialize(enforce_uniqueness: nil, entity: nil, key: nil)
        # @param enforce_uniqueness [Hash]
        # @param entity [String]
        # @param key [String]
        def initialize(data = {})
          super
        end
      end

      # Create a new instance of CustomFieldListKeysResponse from a Hash of raw data.
      #
      # @overload initialize(data: nil, next_page: nil)
      # @param data [Array<Object>]
      # @param next_page [String]
      def initialize(data = {})
        super
      end
    end
  end
end
