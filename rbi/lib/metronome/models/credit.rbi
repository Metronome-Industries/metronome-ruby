# typed: strong

module Metronome
  module Models
    class Credit < Metronome::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(Metronome::Models::Credit::Product) }
      attr_accessor :product

      sig { returns(Symbol) }
      attr_accessor :type

      sig { returns(T.nilable(Metronome::Models::ScheduleDuration)) }
      attr_reader :access_schedule

      sig { params(access_schedule: Metronome::Models::ScheduleDuration).void }
      attr_writer :access_schedule

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :applicable_contract_ids

      sig { params(applicable_contract_ids: T::Array[String]).void }
      attr_writer :applicable_contract_ids

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :applicable_product_ids

      sig { params(applicable_product_ids: T::Array[String]).void }
      attr_writer :applicable_product_ids

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :applicable_product_tags

      sig { params(applicable_product_tags: T::Array[String]).void }
      attr_writer :applicable_product_tags

      sig { returns(T.nilable(Float)) }
      attr_reader :balance

      sig { params(balance: Float).void }
      attr_writer :balance

      sig { returns(T.nilable(Metronome::Models::Credit::Contract)) }
      attr_reader :contract

      sig { params(contract: Metronome::Models::Credit::Contract).void }
      attr_writer :contract

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :custom_fields

      sig { params(custom_fields: T::Hash[Symbol, String]).void }
      attr_writer :custom_fields

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      sig do
        returns(
          T.nilable(
            T::Array[T.any(
              Metronome::Models::Credit::Ledger::CreditSegmentStartLedgerEntry,
              Metronome::Models::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry,
              Metronome::Models::Credit::Ledger::CreditExpirationLedgerEntry,
              Metronome::Models::Credit::Ledger::CreditCanceledLedgerEntry,
              Metronome::Models::Credit::Ledger::CreditCreditedLedgerEntry,
              Metronome::Models::Credit::Ledger::CreditManualLedgerEntry
            )]
          )
        )
      end
      attr_reader :ledger

      sig do
        params(
          ledger: T::Array[T.any(
            Metronome::Models::Credit::Ledger::CreditSegmentStartLedgerEntry,
            Metronome::Models::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry,
            Metronome::Models::Credit::Ledger::CreditExpirationLedgerEntry,
            Metronome::Models::Credit::Ledger::CreditCanceledLedgerEntry,
            Metronome::Models::Credit::Ledger::CreditCreditedLedgerEntry,
            Metronome::Models::Credit::Ledger::CreditManualLedgerEntry
          )]
        ).void
      end
      attr_writer :ledger

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig { returns(T.nilable(String)) }
      attr_reader :netsuite_sales_order_id

      sig { params(netsuite_sales_order_id: String).void }
      attr_writer :netsuite_sales_order_id

      sig { returns(T.nilable(Float)) }
      attr_reader :priority

      sig { params(priority: Float).void }
      attr_writer :priority

      sig { returns(T.nilable(Symbol)) }
      attr_reader :rate_type

      sig { params(rate_type: Symbol).void }
      attr_writer :rate_type

      sig { returns(T.nilable(String)) }
      attr_reader :salesforce_opportunity_id

      sig { params(salesforce_opportunity_id: String).void }
      attr_writer :salesforce_opportunity_id

      sig { returns(T.nilable(String)) }
      attr_reader :uniqueness_key

      sig { params(uniqueness_key: String).void }
      attr_writer :uniqueness_key

      sig do
        params(
          id: String,
          product: Metronome::Models::Credit::Product,
          type: Symbol,
          access_schedule: Metronome::Models::ScheduleDuration,
          applicable_contract_ids: T::Array[String],
          applicable_product_ids: T::Array[String],
          applicable_product_tags: T::Array[String],
          balance: Float,
          contract: Metronome::Models::Credit::Contract,
          custom_fields: T::Hash[Symbol, String],
          description: String,
          ledger: T::Array[T.any(
            Metronome::Models::Credit::Ledger::CreditSegmentStartLedgerEntry,
            Metronome::Models::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry,
            Metronome::Models::Credit::Ledger::CreditExpirationLedgerEntry,
            Metronome::Models::Credit::Ledger::CreditCanceledLedgerEntry,
            Metronome::Models::Credit::Ledger::CreditCreditedLedgerEntry,
            Metronome::Models::Credit::Ledger::CreditManualLedgerEntry
          )],
          name: String,
          netsuite_sales_order_id: String,
          priority: Float,
          rate_type: Symbol,
          salesforce_opportunity_id: String,
          uniqueness_key: String
        ).void
      end
      def initialize(
        id:,
        product:,
        type:,
        access_schedule: nil,
        applicable_contract_ids: nil,
        applicable_product_ids: nil,
        applicable_product_tags: nil,
        balance: nil,
        contract: nil,
        custom_fields: nil,
        description: nil,
        ledger: nil,
        name: nil,
        netsuite_sales_order_id: nil,
        priority: nil,
        rate_type: nil,
        salesforce_opportunity_id: nil,
        uniqueness_key: nil
      ); end

      sig do
        override.returns(
          {
            id: String,
            product: Metronome::Models::Credit::Product,
            type: Symbol,
            access_schedule: Metronome::Models::ScheduleDuration,
            applicable_contract_ids: T::Array[String],
            applicable_product_ids: T::Array[String],
            applicable_product_tags: T::Array[String],
            balance: Float,
            contract: Metronome::Models::Credit::Contract,
            custom_fields: T::Hash[Symbol, String],
            description: String,
            ledger: T::Array[T.any(
              Metronome::Models::Credit::Ledger::CreditSegmentStartLedgerEntry,
              Metronome::Models::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry,
              Metronome::Models::Credit::Ledger::CreditExpirationLedgerEntry,
              Metronome::Models::Credit::Ledger::CreditCanceledLedgerEntry,
              Metronome::Models::Credit::Ledger::CreditCreditedLedgerEntry,
              Metronome::Models::Credit::Ledger::CreditManualLedgerEntry
            )],
            name: String,
            netsuite_sales_order_id: String,
            priority: Float,
            rate_type: Symbol,
            salesforce_opportunity_id: String,
            uniqueness_key: String
          }
        )
      end
      def to_hash; end

      class Product < Metronome::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :name

        sig { params(id: String, name: String).void }
        def initialize(id:, name:); end

        sig { override.returns({id: String, name: String}) }
        def to_hash; end
      end

      class Type < Metronome::Enum
        abstract!

        CREDIT = :CREDIT

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class Contract < Metronome::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { params(id: String).void }
        def initialize(id:); end

        sig { override.returns({id: String}) }
        def to_hash; end
      end

      class Ledger < Metronome::Union
        abstract!

        class CreditSegmentStartLedgerEntry < Metronome::BaseModel
          sig { returns(Float) }
          attr_accessor :amount

          sig { returns(String) }
          attr_accessor :segment_id

          sig { returns(Time) }
          attr_accessor :timestamp

          sig { returns(Symbol) }
          attr_accessor :type

          sig { params(amount: Float, segment_id: String, timestamp: Time, type: Symbol).void }
          def initialize(amount:, segment_id:, timestamp:, type:); end

          sig { override.returns({amount: Float, segment_id: String, timestamp: Time, type: Symbol}) }
          def to_hash; end

          class Type < Metronome::Enum
            abstract!

            CREDIT_SEGMENT_START = :CREDIT_SEGMENT_START

            sig { override.returns(T::Array[Symbol]) }
            def self.values; end
          end
        end

        class CreditAutomatedInvoiceDeductionLedgerEntry < Metronome::BaseModel
          sig { returns(Float) }
          attr_accessor :amount

          sig { returns(String) }
          attr_accessor :invoice_id

          sig { returns(String) }
          attr_accessor :segment_id

          sig { returns(Time) }
          attr_accessor :timestamp

          sig { returns(Symbol) }
          attr_accessor :type

          sig do
            params(amount: Float, invoice_id: String, segment_id: String, timestamp: Time, type: Symbol).void
          end
          def initialize(amount:, invoice_id:, segment_id:, timestamp:, type:); end

          sig do
            override.returns(
              {
                amount: Float,
                invoice_id: String,
                segment_id: String,
                timestamp: Time,
                type: Symbol
              }
            )
          end
          def to_hash; end

          class Type < Metronome::Enum
            abstract!

            CREDIT_AUTOMATED_INVOICE_DEDUCTION = :CREDIT_AUTOMATED_INVOICE_DEDUCTION

            sig { override.returns(T::Array[Symbol]) }
            def self.values; end
          end
        end

        class CreditExpirationLedgerEntry < Metronome::BaseModel
          sig { returns(Float) }
          attr_accessor :amount

          sig { returns(String) }
          attr_accessor :segment_id

          sig { returns(Time) }
          attr_accessor :timestamp

          sig { returns(Symbol) }
          attr_accessor :type

          sig { params(amount: Float, segment_id: String, timestamp: Time, type: Symbol).void }
          def initialize(amount:, segment_id:, timestamp:, type:); end

          sig { override.returns({amount: Float, segment_id: String, timestamp: Time, type: Symbol}) }
          def to_hash; end

          class Type < Metronome::Enum
            abstract!

            CREDIT_EXPIRATION = :CREDIT_EXPIRATION

            sig { override.returns(T::Array[Symbol]) }
            def self.values; end
          end
        end

        class CreditCanceledLedgerEntry < Metronome::BaseModel
          sig { returns(Float) }
          attr_accessor :amount

          sig { returns(String) }
          attr_accessor :invoice_id

          sig { returns(String) }
          attr_accessor :segment_id

          sig { returns(Time) }
          attr_accessor :timestamp

          sig { returns(Symbol) }
          attr_accessor :type

          sig do
            params(amount: Float, invoice_id: String, segment_id: String, timestamp: Time, type: Symbol).void
          end
          def initialize(amount:, invoice_id:, segment_id:, timestamp:, type:); end

          sig do
            override.returns(
              {
                amount: Float,
                invoice_id: String,
                segment_id: String,
                timestamp: Time,
                type: Symbol
              }
            )
          end
          def to_hash; end

          class Type < Metronome::Enum
            abstract!

            CREDIT_CANCELED = :CREDIT_CANCELED

            sig { override.returns(T::Array[Symbol]) }
            def self.values; end
          end
        end

        class CreditCreditedLedgerEntry < Metronome::BaseModel
          sig { returns(Float) }
          attr_accessor :amount

          sig { returns(String) }
          attr_accessor :invoice_id

          sig { returns(String) }
          attr_accessor :segment_id

          sig { returns(Time) }
          attr_accessor :timestamp

          sig { returns(Symbol) }
          attr_accessor :type

          sig do
            params(amount: Float, invoice_id: String, segment_id: String, timestamp: Time, type: Symbol).void
          end
          def initialize(amount:, invoice_id:, segment_id:, timestamp:, type:); end

          sig do
            override.returns(
              {
                amount: Float,
                invoice_id: String,
                segment_id: String,
                timestamp: Time,
                type: Symbol
              }
            )
          end
          def to_hash; end

          class Type < Metronome::Enum
            abstract!

            CREDIT_CREDITED = :CREDIT_CREDITED

            sig { override.returns(T::Array[Symbol]) }
            def self.values; end
          end
        end

        class CreditManualLedgerEntry < Metronome::BaseModel
          sig { returns(Float) }
          attr_accessor :amount

          sig { returns(String) }
          attr_accessor :reason

          sig { returns(Time) }
          attr_accessor :timestamp

          sig { returns(Symbol) }
          attr_accessor :type

          sig { params(amount: Float, reason: String, timestamp: Time, type: Symbol).void }
          def initialize(amount:, reason:, timestamp:, type:); end

          sig { override.returns({amount: Float, reason: String, timestamp: Time, type: Symbol}) }
          def to_hash; end

          class Type < Metronome::Enum
            abstract!

            CREDIT_MANUAL = :CREDIT_MANUAL

            sig { override.returns(T::Array[Symbol]) }
            def self.values; end
          end
        end

        sig do
          override.returns(
            [
              [NilClass, Metronome::Models::Credit::Ledger::CreditSegmentStartLedgerEntry],
              [
                NilClass,
                Metronome::Models::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry
              ],
              [NilClass, Metronome::Models::Credit::Ledger::CreditExpirationLedgerEntry],
              [NilClass, Metronome::Models::Credit::Ledger::CreditCanceledLedgerEntry],
              [NilClass, Metronome::Models::Credit::Ledger::CreditCreditedLedgerEntry],
              [NilClass, Metronome::Models::Credit::Ledger::CreditManualLedgerEntry]
            ]
          )
        end
        private_class_method def self.variants; end
      end

      class RateType < Metronome::Enum
        abstract!

        COMMIT_RATE = :COMMIT_RATE
        LIST_RATE = :LIST_RATE

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
