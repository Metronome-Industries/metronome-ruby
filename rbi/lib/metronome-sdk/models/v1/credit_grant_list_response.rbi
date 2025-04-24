# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CreditGrantListResponse < MetronomeSDK::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(MetronomeSDK::Models::V1::CreditGrantListResponse::Balance) }
        def balance
        end

        sig do
          params(_: MetronomeSDK::Models::V1::CreditGrantListResponse::Balance)
            .returns(MetronomeSDK::Models::V1::CreditGrantListResponse::Balance)
        end
        def balance=(_)
        end

        sig { returns(T::Hash[Symbol, String]) }
        def custom_fields
        end

        sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
        def custom_fields=(_)
        end

        sig { returns(String) }
        def customer_id
        end

        sig { params(_: String).returns(String) }
        def customer_id=(_)
        end

        sig { returns(T::Array[MetronomeSDK::Models::V1::CreditLedgerEntry]) }
        def deductions
        end

        sig do
          params(_: T::Array[MetronomeSDK::Models::V1::CreditLedgerEntry])
            .returns(T::Array[MetronomeSDK::Models::V1::CreditLedgerEntry])
        end
        def deductions=(_)
        end

        sig { returns(Time) }
        def effective_at
        end

        sig { params(_: Time).returns(Time) }
        def effective_at=(_)
        end

        sig { returns(Time) }
        def expires_at
        end

        sig { params(_: Time).returns(Time) }
        def expires_at=(_)
        end

        sig { returns(MetronomeSDK::Models::V1::CreditGrantListResponse::GrantAmount) }
        def grant_amount
        end

        sig do
          params(_: MetronomeSDK::Models::V1::CreditGrantListResponse::GrantAmount)
            .returns(MetronomeSDK::Models::V1::CreditGrantListResponse::GrantAmount)
        end
        def grant_amount=(_)
        end

        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        sig { returns(MetronomeSDK::Models::V1::CreditGrantListResponse::PaidAmount) }
        def paid_amount
        end

        sig do
          params(_: MetronomeSDK::Models::V1::CreditGrantListResponse::PaidAmount)
            .returns(MetronomeSDK::Models::V1::CreditGrantListResponse::PaidAmount)
        end
        def paid_amount=(_)
        end

        sig { returns(T::Array[MetronomeSDK::Models::V1::CreditLedgerEntry]) }
        def pending_deductions
        end

        sig do
          params(_: T::Array[MetronomeSDK::Models::V1::CreditLedgerEntry])
            .returns(T::Array[MetronomeSDK::Models::V1::CreditLedgerEntry])
        end
        def pending_deductions=(_)
        end

        sig { returns(Float) }
        def priority
        end

        sig { params(_: Float).returns(Float) }
        def priority=(_)
        end

        sig { returns(T.nilable(String)) }
        def credit_grant_type
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def credit_grant_type=(_)
        end

        sig { returns(T.nilable(String)) }
        def invoice_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def invoice_id=(_)
        end

        sig { returns(T.nilable(T::Array[MetronomeSDK::Models::V1::CreditGrantListResponse::Product])) }
        def products
        end

        sig do
          params(_: T::Array[MetronomeSDK::Models::V1::CreditGrantListResponse::Product])
            .returns(T::Array[MetronomeSDK::Models::V1::CreditGrantListResponse::Product])
        end
        def products=(_)
        end

        sig { returns(T.nilable(String)) }
        def reason
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def reason=(_)
        end

        sig { returns(T.nilable(String)) }
        def uniqueness_key
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def uniqueness_key=(_)
        end

        sig do
          params(
            id: String,
            balance: MetronomeSDK::Models::V1::CreditGrantListResponse::Balance,
            custom_fields: T::Hash[Symbol, String],
            customer_id: String,
            deductions: T::Array[MetronomeSDK::Models::V1::CreditLedgerEntry],
            effective_at: Time,
            expires_at: Time,
            grant_amount: MetronomeSDK::Models::V1::CreditGrantListResponse::GrantAmount,
            name: String,
            paid_amount: MetronomeSDK::Models::V1::CreditGrantListResponse::PaidAmount,
            pending_deductions: T::Array[MetronomeSDK::Models::V1::CreditLedgerEntry],
            priority: Float,
            credit_grant_type: T.nilable(String),
            invoice_id: T.nilable(String),
            products: T::Array[MetronomeSDK::Models::V1::CreditGrantListResponse::Product],
            reason: T.nilable(String),
            uniqueness_key: T.nilable(String)
          )
            .void
        end
        def initialize(
          id:,
          balance:,
          custom_fields:,
          customer_id:,
          deductions:,
          effective_at:,
          expires_at:,
          grant_amount:,
          name:,
          paid_amount:,
          pending_deductions:,
          priority:,
          credit_grant_type: nil,
          invoice_id: nil,
          products: nil,
          reason: nil,
          uniqueness_key: nil
        )
        end

        sig do
          override
            .returns(
              {
                id: String,
                balance: MetronomeSDK::Models::V1::CreditGrantListResponse::Balance,
                custom_fields: T::Hash[Symbol, String],
                customer_id: String,
                deductions: T::Array[MetronomeSDK::Models::V1::CreditLedgerEntry],
                effective_at: Time,
                expires_at: Time,
                grant_amount: MetronomeSDK::Models::V1::CreditGrantListResponse::GrantAmount,
                name: String,
                paid_amount: MetronomeSDK::Models::V1::CreditGrantListResponse::PaidAmount,
                pending_deductions: T::Array[MetronomeSDK::Models::V1::CreditLedgerEntry],
                priority: Float,
                credit_grant_type: T.nilable(String),
                invoice_id: T.nilable(String),
                products: T::Array[MetronomeSDK::Models::V1::CreditGrantListResponse::Product],
                reason: T.nilable(String),
                uniqueness_key: T.nilable(String)
              }
            )
        end
        def to_hash
        end

        class Balance < MetronomeSDK::BaseModel
          sig { returns(Time) }
          def effective_at
          end

          sig { params(_: Time).returns(Time) }
          def effective_at=(_)
          end

          sig { returns(Float) }
          def excluding_pending
          end

          sig { params(_: Float).returns(Float) }
          def excluding_pending=(_)
          end

          sig { returns(Float) }
          def including_pending
          end

          sig { params(_: Float).returns(Float) }
          def including_pending=(_)
          end

          sig { params(effective_at: Time, excluding_pending: Float, including_pending: Float).void }
          def initialize(effective_at:, excluding_pending:, including_pending:)
          end

          sig { override.returns({effective_at: Time, excluding_pending: Float, including_pending: Float}) }
          def to_hash
          end
        end

        class GrantAmount < MetronomeSDK::BaseModel
          sig { returns(Float) }
          def amount
          end

          sig { params(_: Float).returns(Float) }
          def amount=(_)
          end

          sig { returns(MetronomeSDK::Models::CreditTypeData) }
          def credit_type
          end

          sig { params(_: MetronomeSDK::Models::CreditTypeData).returns(MetronomeSDK::Models::CreditTypeData) }
          def credit_type=(_)
          end

          sig { params(amount: Float, credit_type: MetronomeSDK::Models::CreditTypeData).void }
          def initialize(amount:, credit_type:)
          end

          sig { override.returns({amount: Float, credit_type: MetronomeSDK::Models::CreditTypeData}) }
          def to_hash
          end
        end

        class PaidAmount < MetronomeSDK::BaseModel
          sig { returns(Float) }
          def amount
          end

          sig { params(_: Float).returns(Float) }
          def amount=(_)
          end

          sig { returns(MetronomeSDK::Models::CreditTypeData) }
          def credit_type
          end

          sig { params(_: MetronomeSDK::Models::CreditTypeData).returns(MetronomeSDK::Models::CreditTypeData) }
          def credit_type=(_)
          end

          sig { params(amount: Float, credit_type: MetronomeSDK::Models::CreditTypeData).void }
          def initialize(amount:, credit_type:)
          end

          sig { override.returns({amount: Float, credit_type: MetronomeSDK::Models::CreditTypeData}) }
          def to_hash
          end
        end

        class Product < MetronomeSDK::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { params(id: String, name: String).void }
          def initialize(id:, name:)
          end

          sig { override.returns({id: String, name: String}) }
          def to_hash
          end
        end
      end
    end
  end
end
