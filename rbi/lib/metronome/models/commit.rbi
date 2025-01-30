# typed: strong

module Metronome
  module Models
    class Commit < Metronome::BaseModel
      Shape = T.type_alias do
        {
          id: String,
          product: Metronome::Models::Commit::Product,
          type: Symbol,
          access_schedule: Metronome::Models::ScheduleDuration,
          amount: Float,
          applicable_contract_ids: T::Array[String],
          applicable_product_ids: T::Array[String],
          applicable_product_tags: T::Array[String],
          balance: Float,
          contract: Metronome::Models::Commit::Contract,
          custom_fields: T::Hash[Symbol, String],
          description: String,
          invoice_contract: Metronome::Models::Commit::InvoiceContract,
          invoice_schedule: Metronome::Models::SchedulePointInTime,
          ledger: T::Array[Metronome::Models::Commit::Ledger::Variants],
          name: String,
          netsuite_sales_order_id: String,
          priority: Float,
          rate_type: Symbol,
          rolled_over_from: Metronome::Models::Commit::RolledOverFrom,
          rollover_fraction: Float,
          salesforce_opportunity_id: String,
          uniqueness_key: String
        }
      end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Metronome::Models::Commit::Product) }
      attr_accessor :product

      sig { returns(Symbol) }
      attr_accessor :type

      sig { returns(T.nilable(Metronome::Models::ScheduleDuration)) }
      attr_reader :access_schedule

      sig { params(access_schedule: Metronome::Models::ScheduleDuration).void }
      attr_writer :access_schedule

      sig { returns(T.nilable(Float)) }
      attr_reader :amount

      sig { params(amount: Float).void }
      attr_writer :amount

      sig { returns(T::Array[String]) }
      attr_reader :applicable_contract_ids

      sig { params(applicable_contract_ids: T::Array[String]).void }
      attr_writer :applicable_contract_ids

      sig { returns(T::Array[String]) }
      attr_reader :applicable_product_ids

      sig { params(applicable_product_ids: T::Array[String]).void }
      attr_writer :applicable_product_ids

      sig { returns(T::Array[String]) }
      attr_reader :applicable_product_tags

      sig { params(applicable_product_tags: T::Array[String]).void }
      attr_writer :applicable_product_tags

      sig { returns(T.nilable(Float)) }
      attr_reader :balance

      sig { params(balance: Float).void }
      attr_writer :balance

      sig { returns(T.nilable(Metronome::Models::Commit::Contract)) }
      attr_reader :contract

      sig { params(contract: Metronome::Models::Commit::Contract).void }
      attr_writer :contract

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :custom_fields

      sig { params(custom_fields: T::Hash[Symbol, String]).void }
      attr_writer :custom_fields

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      sig { returns(T.nilable(Metronome::Models::Commit::InvoiceContract)) }
      attr_reader :invoice_contract

      sig { params(invoice_contract: Metronome::Models::Commit::InvoiceContract).void }
      attr_writer :invoice_contract

      sig { returns(T.nilable(Metronome::Models::SchedulePointInTime)) }
      attr_reader :invoice_schedule

      sig { params(invoice_schedule: Metronome::Models::SchedulePointInTime).void }
      attr_writer :invoice_schedule

      sig { returns(T::Array[Metronome::Models::Commit::Ledger::Variants]) }
      attr_reader :ledger

      sig { params(ledger: T::Array[Metronome::Models::Commit::Ledger::Variants]).void }
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

      sig { returns(T.nilable(Metronome::Models::Commit::RolledOverFrom)) }
      attr_reader :rolled_over_from

      sig { params(rolled_over_from: Metronome::Models::Commit::RolledOverFrom).void }
      attr_writer :rolled_over_from

      sig { returns(T.nilable(Float)) }
      attr_reader :rollover_fraction

      sig { params(rollover_fraction: Float).void }
      attr_writer :rollover_fraction

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
          product: Metronome::Models::Commit::Product,
          type: Symbol,
          access_schedule: Metronome::Models::ScheduleDuration,
          amount: Float,
          applicable_contract_ids: T::Array[String],
          applicable_product_ids: T::Array[String],
          applicable_product_tags: T::Array[String],
          balance: Float,
          contract: Metronome::Models::Commit::Contract,
          custom_fields: T::Hash[Symbol, String],
          description: String,
          invoice_contract: Metronome::Models::Commit::InvoiceContract,
          invoice_schedule: Metronome::Models::SchedulePointInTime,
          ledger: T::Array[Metronome::Models::Commit::Ledger::Variants],
          name: String,
          netsuite_sales_order_id: String,
          priority: Float,
          rate_type: Symbol,
          rolled_over_from: Metronome::Models::Commit::RolledOverFrom,
          rollover_fraction: Float,
          salesforce_opportunity_id: String,
          uniqueness_key: String
        ).void
      end
      def initialize(
        id:,
        product:,
        type:,
        access_schedule: nil,
        amount: nil,
        applicable_contract_ids: nil,
        applicable_product_ids: nil,
        applicable_product_tags: nil,
        balance: nil,
        contract: nil,
        custom_fields: nil,
        description: nil,
        invoice_contract: nil,
        invoice_schedule: nil,
        ledger: nil,
        name: nil,
        netsuite_sales_order_id: nil,
        priority: nil,
        rate_type: nil,
        rolled_over_from: nil,
        rollover_fraction: nil,
        salesforce_opportunity_id: nil,
        uniqueness_key: nil
      ); end

      sig { returns(Metronome::Models::Commit::Shape) }
      def to_h; end

      class Product < Metronome::BaseModel
        Shape = T.type_alias { {id: String, name: String} }

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :name

        sig { params(id: String, name: String).void }
        def initialize(id:, name:); end

        sig { returns(Metronome::Models::Commit::Product::Shape) }
        def to_h; end
      end

      class Type < Metronome::Enum
        abstract!

        PREPAID = :PREPAID
        POSTPAID = :POSTPAID

        sig { returns(T::Array[Symbol]) }
        def self.values; end
      end

      class Contract < Metronome::BaseModel
        Shape = T.type_alias { {id: String} }

        sig { returns(String) }
        attr_accessor :id

        sig { params(id: String).void }
        def initialize(id:); end

        sig { returns(Metronome::Models::Commit::Contract::Shape) }
        def to_h; end
      end

      class InvoiceContract < Metronome::BaseModel
        Shape = T.type_alias { {id: String} }

        sig { returns(String) }
        attr_accessor :id

        sig { params(id: String).void }
        def initialize(id:); end

        sig { returns(Metronome::Models::Commit::InvoiceContract::Shape) }
        def to_h; end
      end

      class Ledger < Metronome::Union
        abstract!

        Variants = T.type_alias do
          T.any(
            Metronome::Models::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry,
            Metronome::Models::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry,
            Metronome::Models::Commit::Ledger::PrepaidCommitRolloverLedgerEntry,
            Metronome::Models::Commit::Ledger::PrepaidCommitExpirationLedgerEntry,
            Metronome::Models::Commit::Ledger::PrepaidCommitCanceledLedgerEntry,
            Metronome::Models::Commit::Ledger::PrepaidCommitCreditedLedgerEntry,
            Metronome::Models::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry,
            Metronome::Models::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry,
            Metronome::Models::Commit::Ledger::PostpaidCommitRolloverLedgerEntry,
            Metronome::Models::Commit::Ledger::PostpaidCommitTrueupLedgerEntry,
            Metronome::Models::Commit::Ledger::PrepaidCommitManualLedgerEntry,
            Metronome::Models::Commit::Ledger::PostpaidCommitManualLedgerEntry,
            Metronome::Models::Commit::Ledger::PostpaidCommitExpirationLedgerEntry
          )
        end

        class PrepaidCommitSegmentStartLedgerEntry < Metronome::BaseModel
          Shape = T.type_alias { {amount: Float, segment_id: String, timestamp: Time, type: Symbol} }

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

          sig { returns(Metronome::Models::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Shape) }
          def to_h; end

          class Type < Metronome::Enum
            abstract!

            PREPAID_COMMIT_SEGMENT_START = :PREPAID_COMMIT_SEGMENT_START

            sig { returns(T::Array[Symbol]) }
            def self.values; end
          end
        end

        class PrepaidCommitAutomatedInvoiceDeductionLedgerEntry < Metronome::BaseModel
          Shape = T.type_alias do
            {amount: Float, invoice_id: String, segment_id: String, timestamp: Time, type: Symbol}
          end

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
            returns(Metronome::Models::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Shape)
          end
          def to_h; end

          class Type < Metronome::Enum
            abstract!

            PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION = :PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION

            sig { returns(T::Array[Symbol]) }
            def self.values; end
          end
        end

        class PrepaidCommitRolloverLedgerEntry < Metronome::BaseModel
          Shape = T.type_alias do
            {amount: Float, new_contract_id: String, segment_id: String, timestamp: Time, type: Symbol}
          end

          sig { returns(Float) }
          attr_accessor :amount

          sig { returns(String) }
          attr_accessor :new_contract_id

          sig { returns(String) }
          attr_accessor :segment_id

          sig { returns(Time) }
          attr_accessor :timestamp

          sig { returns(Symbol) }
          attr_accessor :type

          sig do
            params(
              amount: Float,
              new_contract_id: String,
              segment_id: String,
              timestamp: Time,
              type: Symbol
            ).void
          end
          def initialize(amount:, new_contract_id:, segment_id:, timestamp:, type:); end

          sig { returns(Metronome::Models::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::Shape) }
          def to_h; end

          class Type < Metronome::Enum
            abstract!

            PREPAID_COMMIT_ROLLOVER = :PREPAID_COMMIT_ROLLOVER

            sig { returns(T::Array[Symbol]) }
            def self.values; end
          end
        end

        class PrepaidCommitExpirationLedgerEntry < Metronome::BaseModel
          Shape = T.type_alias { {amount: Float, segment_id: String, timestamp: Time, type: Symbol} }

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

          sig { returns(Metronome::Models::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Shape) }
          def to_h; end

          class Type < Metronome::Enum
            abstract!

            PREPAID_COMMIT_EXPIRATION = :PREPAID_COMMIT_EXPIRATION

            sig { returns(T::Array[Symbol]) }
            def self.values; end
          end
        end

        class PrepaidCommitCanceledLedgerEntry < Metronome::BaseModel
          Shape = T.type_alias do
            {amount: Float, invoice_id: String, segment_id: String, timestamp: Time, type: Symbol}
          end

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

          sig { returns(Metronome::Models::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::Shape) }
          def to_h; end

          class Type < Metronome::Enum
            abstract!

            PREPAID_COMMIT_CANCELED = :PREPAID_COMMIT_CANCELED

            sig { returns(T::Array[Symbol]) }
            def self.values; end
          end
        end

        class PrepaidCommitCreditedLedgerEntry < Metronome::BaseModel
          Shape = T.type_alias do
            {amount: Float, invoice_id: String, segment_id: String, timestamp: Time, type: Symbol}
          end

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

          sig { returns(Metronome::Models::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::Shape) }
          def to_h; end

          class Type < Metronome::Enum
            abstract!

            PREPAID_COMMIT_CREDITED = :PREPAID_COMMIT_CREDITED

            sig { returns(T::Array[Symbol]) }
            def self.values; end
          end
        end

        class PostpaidCommitInitialBalanceLedgerEntry < Metronome::BaseModel
          Shape = T.type_alias { {amount: Float, timestamp: Time, type: Symbol} }

          sig { returns(Float) }
          attr_accessor :amount

          sig { returns(Time) }
          attr_accessor :timestamp

          sig { returns(Symbol) }
          attr_accessor :type

          sig { params(amount: Float, timestamp: Time, type: Symbol).void }
          def initialize(amount:, timestamp:, type:); end

          sig { returns(Metronome::Models::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::Shape) }
          def to_h; end

          class Type < Metronome::Enum
            abstract!

            POSTPAID_COMMIT_INITIAL_BALANCE = :POSTPAID_COMMIT_INITIAL_BALANCE

            sig { returns(T::Array[Symbol]) }
            def self.values; end
          end
        end

        class PostpaidCommitAutomatedInvoiceDeductionLedgerEntry < Metronome::BaseModel
          Shape = T.type_alias do
            {amount: Float, invoice_id: String, segment_id: String, timestamp: Time, type: Symbol}
          end

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
            returns(Metronome::Models::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Shape)
          end
          def to_h; end

          class Type < Metronome::Enum
            abstract!

            POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION = :POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION

            sig { returns(T::Array[Symbol]) }
            def self.values; end
          end
        end

        class PostpaidCommitRolloverLedgerEntry < Metronome::BaseModel
          Shape = T.type_alias do
            {amount: Float, new_contract_id: String, segment_id: String, timestamp: Time, type: Symbol}
          end

          sig { returns(Float) }
          attr_accessor :amount

          sig { returns(String) }
          attr_accessor :new_contract_id

          sig { returns(String) }
          attr_accessor :segment_id

          sig { returns(Time) }
          attr_accessor :timestamp

          sig { returns(Symbol) }
          attr_accessor :type

          sig do
            params(
              amount: Float,
              new_contract_id: String,
              segment_id: String,
              timestamp: Time,
              type: Symbol
            ).void
          end
          def initialize(amount:, new_contract_id:, segment_id:, timestamp:, type:); end

          sig { returns(Metronome::Models::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Shape) }
          def to_h; end

          class Type < Metronome::Enum
            abstract!

            POSTPAID_COMMIT_ROLLOVER = :POSTPAID_COMMIT_ROLLOVER

            sig { returns(T::Array[Symbol]) }
            def self.values; end
          end
        end

        class PostpaidCommitTrueupLedgerEntry < Metronome::BaseModel
          Shape = T.type_alias { {amount: Float, invoice_id: String, timestamp: Time, type: Symbol} }

          sig { returns(Float) }
          attr_accessor :amount

          sig { returns(String) }
          attr_accessor :invoice_id

          sig { returns(Time) }
          attr_accessor :timestamp

          sig { returns(Symbol) }
          attr_accessor :type

          sig { params(amount: Float, invoice_id: String, timestamp: Time, type: Symbol).void }
          def initialize(amount:, invoice_id:, timestamp:, type:); end

          sig { returns(Metronome::Models::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::Shape) }
          def to_h; end

          class Type < Metronome::Enum
            abstract!

            POSTPAID_COMMIT_TRUEUP = :POSTPAID_COMMIT_TRUEUP

            sig { returns(T::Array[Symbol]) }
            def self.values; end
          end
        end

        class PrepaidCommitManualLedgerEntry < Metronome::BaseModel
          Shape = T.type_alias { {amount: Float, reason: String, timestamp: Time, type: Symbol} }

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

          sig { returns(Metronome::Models::Commit::Ledger::PrepaidCommitManualLedgerEntry::Shape) }
          def to_h; end

          class Type < Metronome::Enum
            abstract!

            PREPAID_COMMIT_MANUAL = :PREPAID_COMMIT_MANUAL

            sig { returns(T::Array[Symbol]) }
            def self.values; end
          end
        end

        class PostpaidCommitManualLedgerEntry < Metronome::BaseModel
          Shape = T.type_alias { {amount: Float, reason: String, timestamp: Time, type: Symbol} }

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

          sig { returns(Metronome::Models::Commit::Ledger::PostpaidCommitManualLedgerEntry::Shape) }
          def to_h; end

          class Type < Metronome::Enum
            abstract!

            POSTPAID_COMMIT_MANUAL = :POSTPAID_COMMIT_MANUAL

            sig { returns(T::Array[Symbol]) }
            def self.values; end
          end
        end

        class PostpaidCommitExpirationLedgerEntry < Metronome::BaseModel
          Shape = T.type_alias { {amount: Float, timestamp: Time, type: Symbol} }

          sig { returns(Float) }
          attr_accessor :amount

          sig { returns(Time) }
          attr_accessor :timestamp

          sig { returns(Symbol) }
          attr_accessor :type

          sig { params(amount: Float, timestamp: Time, type: Symbol).void }
          def initialize(amount:, timestamp:, type:); end

          sig { returns(Metronome::Models::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Shape) }
          def to_h; end

          class Type < Metronome::Enum
            abstract!

            POSTPAID_COMMIT_EXPIRATION = :POSTPAID_COMMIT_EXPIRATION

            sig { returns(T::Array[Symbol]) }
            def self.values; end
          end
        end

        sig do
          returns(
            [
              [NilClass, Metronome::Models::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry],
              [
                NilClass,
                Metronome::Models::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry
              ],
              [NilClass, Metronome::Models::Commit::Ledger::PrepaidCommitRolloverLedgerEntry],
              [NilClass, Metronome::Models::Commit::Ledger::PrepaidCommitExpirationLedgerEntry],
              [NilClass, Metronome::Models::Commit::Ledger::PrepaidCommitCanceledLedgerEntry],
              [NilClass, Metronome::Models::Commit::Ledger::PrepaidCommitCreditedLedgerEntry],
              [NilClass, Metronome::Models::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry],
              [
                NilClass,
                Metronome::Models::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry
              ],
              [NilClass, Metronome::Models::Commit::Ledger::PostpaidCommitRolloverLedgerEntry],
              [NilClass, Metronome::Models::Commit::Ledger::PostpaidCommitTrueupLedgerEntry],
              [NilClass, Metronome::Models::Commit::Ledger::PrepaidCommitManualLedgerEntry],
              [NilClass, Metronome::Models::Commit::Ledger::PostpaidCommitManualLedgerEntry],
              [NilClass, Metronome::Models::Commit::Ledger::PostpaidCommitExpirationLedgerEntry]
            ]
          )
        end
        private_class_method def self.variants; end
      end

      class RateType < Metronome::Enum
        abstract!

        COMMIT_RATE = :COMMIT_RATE
        LIST_RATE = :LIST_RATE

        sig { returns(T::Array[Symbol]) }
        def self.values; end
      end

      class RolledOverFrom < Metronome::BaseModel
        Shape = T.type_alias { {commit_id: String, contract_id: String} }

        sig { returns(String) }
        attr_accessor :commit_id

        sig { returns(String) }
        attr_accessor :contract_id

        sig { params(commit_id: String, contract_id: String).void }
        def initialize(commit_id:, contract_id:); end

        sig { returns(Metronome::Models::Commit::RolledOverFrom::Shape) }
        def to_h; end
      end
    end
  end
end
