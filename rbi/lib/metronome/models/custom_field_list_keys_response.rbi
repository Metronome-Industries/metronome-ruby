# typed: strong

module Metronome
  module Models
    class CustomFieldListKeysResponse < Metronome::BaseModel
      sig { returns(T::Array[Metronome::Models::CustomFieldListKeysResponse::Data]) }
      attr_accessor :data

      sig { returns(T.nilable(String)) }
      attr_accessor :next_page

      sig do
        params(
          data: T::Array[Metronome::Models::CustomFieldListKeysResponse::Data],
          next_page: T.nilable(String)
        ).void
      end
      def initialize(data:, next_page:)
      end

      sig do
        override.returns(
          {
            data: T::Array[Metronome::Models::CustomFieldListKeysResponse::Data],
            next_page: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      class Data < Metronome::BaseModel
        sig { returns(T::Boolean) }
        attr_accessor :enforce_uniqueness

        sig { returns(Symbol) }
        attr_accessor :entity

        sig { returns(String) }
        attr_accessor :key

        sig { params(enforce_uniqueness: T::Boolean, entity: Symbol, key: String).void }
        def initialize(enforce_uniqueness:, entity:, key:)
        end

        sig { override.returns({enforce_uniqueness: T::Boolean, entity: Symbol, key: String}) }
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
end
