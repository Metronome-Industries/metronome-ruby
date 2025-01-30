# typed: strong

module Metronome
  module Models
    class CustomFieldDeleteValuesParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      Shape = T.type_alias do
        T.all(
          {entity: Symbol, entity_id: String, keys: T::Array[String]},
          Metronome::RequestParameters::Shape
        )
      end

      sig { returns(Symbol) }
      attr_accessor :entity

      sig { returns(String) }
      attr_accessor :entity_id

      sig { returns(T::Array[String]) }
      attr_accessor :keys

      sig do
        params(
          entity: Symbol,
          entity_id: String,
          keys: T::Array[String],
          request_options: Metronome::RequestOpts
        ).void
      end
      def initialize(entity:, entity_id:, keys:, request_options: {}); end

      sig { returns(Metronome::Models::CustomFieldDeleteValuesParams::Shape) }
      def to_h; end

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

        sig { returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
