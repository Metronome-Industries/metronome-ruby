# typed: strong

module Metronome
  module Models
    class CreditGrantListResponse < Metronome::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(Metronome::Models::CreditGrantListResponse::Balance) }
      attr_accessor :balance

      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :custom_fields

      sig { returns(String) }
      attr_accessor :customer_id

      sig { returns(T::Array[Metronome::Models::CreditLedgerEntry]) }
      attr_accessor :deductions

      sig { returns(Time) }
      attr_accessor :effective_at

      sig { returns(Time) }
      attr_accessor :expires_at

      sig { returns(Metronome::Models::CreditGrantListResponse::GrantAmount) }
      attr_accessor :grant_amount

      sig { returns(String) }
      attr_accessor :name

      sig { returns(Metronome::Models::CreditGrantListResponse::PaidAmount) }
      attr_accessor :paid_amount

      sig { returns(T::Array[Metronome::Models::CreditLedgerEntry]) }
      attr_accessor :pending_deductions

      sig { returns(Float) }
      attr_accessor :priority

      sig { returns(T.nilable(String)) }
      attr_accessor :credit_grant_type

      sig { returns(T.nilable(String)) }
      attr_accessor :invoice_id

      sig { returns(T.nilable(T::Array[Metronome::Models::CreditGrantListResponse::Product])) }
      attr_reader :products

      sig { params(products: T::Array[Metronome::Models::CreditGrantListResponse::Product]).void }
      attr_writer :products

      sig { returns(T.nilable(String)) }
      attr_accessor :reason

      sig { returns(T.nilable(String)) }
      attr_accessor :uniqueness_key

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
        ).void
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
        override.returns(
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
        attr_accessor :effective_at

        sig { returns(Float) }
        attr_accessor :excluding_pending

        sig { returns(Float) }
        attr_accessor :including_pending

        sig { params(effective_at: Time, excluding_pending: Float, including_pending: Float).void }
        def initialize(effective_at:, excluding_pending:, including_pending:)
        end

        sig { override.returns({effective_at: Time, excluding_pending: Float, including_pending: Float}) }
        def to_hash
        end
      end

      class GrantAmount < Metronome::BaseModel
        sig { returns(Float) }
        attr_accessor :amount

        sig { returns(Metronome::Models::CreditTypeData) }
        attr_accessor :credit_type

        sig { params(amount: Float, credit_type: Metronome::Models::CreditTypeData).void }
        def initialize(amount:, credit_type:)
        end

        sig { override.returns({amount: Float, credit_type: Metronome::Models::CreditTypeData}) }
        def to_hash
        end
      end

      class PaidAmount < Metronome::BaseModel
        sig { returns(Float) }
        attr_accessor :amount

        sig { returns(Metronome::Models::CreditTypeData) }
        attr_accessor :credit_type

        sig { params(amount: Float, credit_type: Metronome::Models::CreditTypeData).void }
        def initialize(amount:, credit_type:)
        end

        sig { override.returns({amount: Float, credit_type: Metronome::Models::CreditTypeData}) }
        def to_hash
        end
      end

      class Product < Metronome::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :name

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
