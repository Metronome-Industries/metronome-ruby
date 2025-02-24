# typed: strong

module Metronome
  module Models
    class CreditGrantListResponse < Metronome::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(Metronome::Models::CreditGrantListResponse::Balance) }
      def balance
      end

      sig do
        params(_: Metronome::Models::CreditGrantListResponse::Balance)
          .returns(Metronome::Models::CreditGrantListResponse::Balance)
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

      sig { returns(T::Array[Metronome::Models::CreditLedgerEntry]) }
      def deductions
      end

      sig do
        params(_: T::Array[Metronome::Models::CreditLedgerEntry])
          .returns(T::Array[Metronome::Models::CreditLedgerEntry])
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

      sig { returns(Metronome::Models::CreditGrantListResponse::GrantAmount) }
      def grant_amount
      end

      sig do
        params(_: Metronome::Models::CreditGrantListResponse::GrantAmount)
          .returns(Metronome::Models::CreditGrantListResponse::GrantAmount)
      end
      def grant_amount=(_)
      end

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig { returns(Metronome::Models::CreditGrantListResponse::PaidAmount) }
      def paid_amount
      end

      sig do
        params(_: Metronome::Models::CreditGrantListResponse::PaidAmount)
          .returns(Metronome::Models::CreditGrantListResponse::PaidAmount)
      end
      def paid_amount=(_)
      end

      sig { returns(T::Array[Metronome::Models::CreditLedgerEntry]) }
      def pending_deductions
      end

      sig do
        params(_: T::Array[Metronome::Models::CreditLedgerEntry])
          .returns(T::Array[Metronome::Models::CreditLedgerEntry])
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

      sig { returns(T.nilable(T::Array[Metronome::Models::CreditGrantListResponse::Product])) }
      def products
      end

      sig do
        params(_: T::Array[Metronome::Models::CreditGrantListResponse::Product])
          .returns(T::Array[Metronome::Models::CreditGrantListResponse::Product])
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
          balance: Metronome::Models::CreditGrantListResponse::Balance,
          custom_fields: T::Hash[Symbol, String],
          customer_id: String,
          deductions: T::Array[Metronome::Models::CreditLedgerEntry],
          effective_at: Time,
          expires_at: Time,
          grant_amount: Metronome::Models::CreditGrantListResponse::GrantAmount,
          name: String,
          paid_amount: Metronome::Models::CreditGrantListResponse::PaidAmount,
          pending_deductions: T::Array[Metronome::Models::CreditLedgerEntry],
          priority: Float,
          credit_grant_type: T.nilable(String),
          invoice_id: T.nilable(String),
          products: T::Array[Metronome::Models::CreditGrantListResponse::Product],
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
              balance: Metronome::Models::CreditGrantListResponse::Balance,
              custom_fields: T::Hash[Symbol, String],
              customer_id: String,
              deductions: T::Array[Metronome::Models::CreditLedgerEntry],
              effective_at: Time,
              expires_at: Time,
              grant_amount: Metronome::Models::CreditGrantListResponse::GrantAmount,
              name: String,
              paid_amount: Metronome::Models::CreditGrantListResponse::PaidAmount,
              pending_deductions: T::Array[Metronome::Models::CreditLedgerEntry],
              priority: Float,
              credit_grant_type: T.nilable(String),
              invoice_id: T.nilable(String),
              products: T::Array[Metronome::Models::CreditGrantListResponse::Product],
              reason: T.nilable(String),
              uniqueness_key: T.nilable(String)
            }
          )
      end
      def to_hash
      end

      class Balance < Metronome::BaseModel
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

      class GrantAmount < Metronome::BaseModel
        sig { returns(Float) }
        def amount
        end

        sig { params(_: Float).returns(Float) }
        def amount=(_)
        end

        sig { returns(Metronome::Models::CreditTypeData) }
        def credit_type
        end

        sig { params(_: Metronome::Models::CreditTypeData).returns(Metronome::Models::CreditTypeData) }
        def credit_type=(_)
        end

        sig { params(amount: Float, credit_type: Metronome::Models::CreditTypeData).void }
        def initialize(amount:, credit_type:)
        end

        sig { override.returns({amount: Float, credit_type: Metronome::Models::CreditTypeData}) }
        def to_hash
        end
      end

      class PaidAmount < Metronome::BaseModel
        sig { returns(Float) }
        def amount
        end

        sig { params(_: Float).returns(Float) }
        def amount=(_)
        end

        sig { returns(Metronome::Models::CreditTypeData) }
        def credit_type
        end

        sig { params(_: Metronome::Models::CreditTypeData).returns(Metronome::Models::CreditTypeData) }
        def credit_type=(_)
        end

        sig { params(amount: Float, credit_type: Metronome::Models::CreditTypeData).void }
        def initialize(amount:, credit_type:)
        end

        sig { override.returns({amount: Float, credit_type: Metronome::Models::CreditTypeData}) }
        def to_hash
        end
      end

      class Product < Metronome::BaseModel
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
