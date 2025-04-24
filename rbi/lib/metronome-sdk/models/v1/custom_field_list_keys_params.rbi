# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CustomFieldListKeysParams < MetronomeSDK::BaseModel
        extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

        sig { returns(T.nilable(String)) }
        def next_page
        end

        sig { params(_: String).returns(String) }
        def next_page=(_)
        end

        sig { returns(T.nilable(T::Array[Symbol])) }
        def entities
        end

        sig { params(_: T::Array[Symbol]).returns(T::Array[Symbol]) }
        def entities=(_)
        end

        sig do
          params(
            next_page: String,
            entities: T::Array[Symbol],
            request_options: T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .void
        end
        def initialize(next_page: nil, entities: nil, request_options: {})
        end

        sig do
          override
            .returns({
                       next_page: String,
                       entities: T::Array[Symbol],
                       request_options: MetronomeSDK::RequestOptions
                     })
        end
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
