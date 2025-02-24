# frozen_string_literal: true

module Metronome
  module Models
    class CustomFieldListKeysResponse < Metronome::BaseModel
      # @!attribute data
      #
      #   @return [Array<Metronome::Models::CustomFieldListKeysResponse::Data>]
      required :data, -> { Metronome::ArrayOf[Metronome::Models::CustomFieldListKeysResponse::Data] }

      # @!attribute next_page
      #
      #   @return [String, nil]
      required :next_page, String, nil?: true

      # @!parse
      #   # @param data [Array<Metronome::Models::CustomFieldListKeysResponse::Data>]
      #   # @param next_page [String, nil]
      #   #
      #   def initialize(data:, next_page:, **) = super

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
        #   # @param entity [Symbol, Metronome::Models::CustomFieldListKeysResponse::Data::Entity]
        #   # @param key [String]
        #   #
        #   def initialize(enforce_uniqueness:, entity:, key:, **) = super

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
end
