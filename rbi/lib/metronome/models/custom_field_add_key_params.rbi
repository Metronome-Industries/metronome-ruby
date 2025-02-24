# typed: strong

module Metronome
  module Models
    class CustomFieldAddKeyParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      sig { returns(T::Boolean) }
      def enforce_uniqueness
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def enforce_uniqueness=(_)
      end

      sig { returns(Symbol) }
      def entity
      end

      sig { params(_: Symbol).returns(Symbol) }
      def entity=(_)
      end

      sig { returns(String) }
      def key
      end

      sig { params(_: String).returns(String) }
      def key=(_)
      end

      sig do
        params(
          enforce_uniqueness: T::Boolean,
          entity: Symbol,
          key: String,
          request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(enforce_uniqueness:, entity:, key:, request_options: {})
      end

      sig do
        override.returns(
          {
            enforce_uniqueness: T::Boolean,
            entity: Symbol,
            key: String,
            request_options: Metronome::RequestOptions
          }
        )
      end
      def to_hash
      end

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
        def self.values
        end
      end
    end
  end
end
