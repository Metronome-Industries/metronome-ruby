# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CustomFieldListKeysResponse < MetronomeSDK::BaseModel
        sig { returns(T::Array[MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data]) }
        def data
        end

        sig do
          params(_: T::Array[MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data])
            .returns(T::Array[MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data])
        end
        def data=(_)
        end

        sig { returns(T.nilable(String)) }
        def next_page
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def next_page=(_)
        end

        sig do
          params(
            data: T::Array[MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data],
            next_page: T.nilable(String)
          )
            .void
        end
        def initialize(data:, next_page:)
        end

        sig do
          override
            .returns(
              {data: T::Array[MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data], next_page: T.nilable(String)}
            )
        end
        def to_hash
        end

        class Data < MetronomeSDK::BaseModel
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

          sig { params(enforce_uniqueness: T::Boolean, entity: Symbol, key: String).void }
          def initialize(enforce_uniqueness:, entity:, key:)
          end

          sig { override.returns({enforce_uniqueness: T::Boolean, entity: Symbol, key: String}) }
          def to_hash
          end

          class Entity < MetronomeSDK::Enum
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
            SUBSCRIPTION = :subscription

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end
      end
    end
  end
end
