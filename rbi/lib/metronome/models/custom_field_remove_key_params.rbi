# typed: strong

module Metronome
  module Models
    class CustomFieldRemoveKeyParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      sig { returns(Symbol) }
      attr_accessor :entity

      sig { returns(String) }
      attr_accessor :key

      sig do
        params(
          entity: Symbol,
          key: String,
          request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(entity:, key:, request_options: {}); end

      sig { override.returns({entity: Symbol, key: String, request_options: Metronome::RequestOptions}) }
      def to_hash; end

      class Entity < Metronome::Enum
        abstract!

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

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
