# typed: strong

module Metronome
  module Models
    class CustomFieldSetValuesParams < Metronome::BaseModel
      extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      sig { returns(T::Hash[Symbol, String]) }
      def custom_fields
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def custom_fields=(_)
      end

      sig { returns(Symbol) }
      def entity
      end

      sig { params(_: Symbol).returns(Symbol) }
      def entity=(_)
      end

      sig { returns(String) }
      def entity_id
      end

      sig { params(_: String).returns(String) }
      def entity_id=(_)
      end

      sig do
        params(
          custom_fields: T::Hash[Symbol, String],
          entity: Symbol,
          entity_id: String,
          request_options: T.any(Metronome::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(custom_fields:, entity:, entity_id:, request_options: {})
      end

      sig do
        override
          .returns(
            {
              custom_fields: T::Hash[Symbol, String],
              entity: Symbol,
              entity_id: String,
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
