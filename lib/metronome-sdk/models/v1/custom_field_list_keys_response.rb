# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class CustomFieldListKeysResponse < MetronomeSDK::BaseModel
        # @!attribute data
        #
        #   @return [Array<MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data>]
        required :data, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data] }

        # @!attribute next_page
        #
        #   @return [String, nil]
        required :next_page, String, nil?: true

        # @!parse
        #   # @param data [Array<MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data>]
        #   # @param next_page [String, nil]
        #   #
        #   def initialize(data:, next_page:, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

        class Data < MetronomeSDK::BaseModel
          # @!attribute enforce_uniqueness
          #
          #   @return [Boolean]
          required :enforce_uniqueness, MetronomeSDK::BooleanModel

          # @!attribute entity
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data::Entity]
          required :entity, enum: -> { MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data::Entity }

          # @!attribute key
          #
          #   @return [String]
          required :key, String

          # @!parse
          #   # @param enforce_uniqueness [Boolean]
          #   # @param entity [Symbol, MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data::Entity]
          #   # @param key [String]
          #   #
          #   def initialize(enforce_uniqueness:, entity:, key:, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

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
          class Entity < MetronomeSDK::Enum
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
            SUBSCRIPTION = :subscription

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
end
