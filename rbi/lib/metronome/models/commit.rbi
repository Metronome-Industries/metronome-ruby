# typed: strong

module Metronome
  module Models
    class Commit < Metronome::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(Metronome::Models::Commit::Product) }
      def product
      end

      sig { params(_: Metronome::Models::Commit::Product).returns(Metronome::Models::Commit::Product) }
      def product=(_)
      end

      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      sig { returns(T.nilable(Metronome::Models::ScheduleDuration)) }
      def access_schedule
      end

      sig { params(_: Metronome::Models::ScheduleDuration).returns(Metronome::Models::ScheduleDuration) }
      def access_schedule=(_)
      end

      sig { returns(T.nilable(Float)) }
      def amount
      end

      sig { params(_: Float).returns(Float) }
      def amount=(_)
      end

      sig { returns(T.nilable(T::Array[String])) }
      def applicable_contract_ids
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def applicable_contract_ids=(_)
      end

      sig { returns(T.nilable(T::Array[String])) }
      def applicable_product_ids
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def applicable_product_ids=(_)
      end

      sig { returns(T.nilable(T::Array[String])) }
      def applicable_product_tags
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def applicable_product_tags=(_)
      end

      sig { returns(T.nilable(Float)) }
      def balance
      end

      sig { params(_: Float).returns(Float) }
      def balance=(_)
      end

      sig { returns(T.nilable(Metronome::Models::Commit::Contract)) }
      def contract
      end

      sig { params(_: Metronome::Models::Commit::Contract).returns(Metronome::Models::Commit::Contract) }
      def contract=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def custom_fields
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def custom_fields=(_)
      end

      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      sig { returns(T.nilable(Metronome::Models::Commit::InvoiceContract)) }
      def invoice_contract
      end

      sig { params(_: Metronome::Models::Commit::InvoiceContract).returns(Metronome::Models::Commit::InvoiceContract) }
      def invoice_contract=(_)
      end

      sig { returns(T.nilable(Metronome::Models::SchedulePointInTime)) }
      def invoice_schedule
      end

      sig { params(_: Metronome::Models::SchedulePointInTime).returns(Metronome::Models::SchedulePointInTime) }
      def invoice_schedule=(_)
      end

      sig do
        returns(
          T.nilable(
            T::Array[
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
            ]
          )
        )
      end
      def ledger
      end

      sig do
        params(
          _: T::Array[
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
          ]
        )
          .returns(
            T::Array[
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
            ]
          )
      end
      def ledger=(_)
      end

      sig { returns(T.nilable(String)) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig { returns(T.nilable(String)) }
      def netsuite_sales_order_id
      end

      sig { params(_: String).returns(String) }
      def netsuite_sales_order_id=(_)
      end

      sig { returns(T.nilable(Float)) }
      def priority
      end

      sig { params(_: Float).returns(Float) }
      def priority=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def rate_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def rate_type=(_)
      end

      sig { returns(T.nilable(Metronome::Models::Commit::RolledOverFrom)) }
      def rolled_over_from
      end

      sig { params(_: Metronome::Models::Commit::RolledOverFrom).returns(Metronome::Models::Commit::RolledOverFrom) }
      def rolled_over_from=(_)
      end

      sig { returns(T.nilable(Float)) }
      def rollover_fraction
      end

      sig { params(_: Float).returns(Float) }
      def rollover_fraction=(_)
      end

      sig { returns(T.nilable(String)) }
      def salesforce_opportunity_id
      end

      sig { params(_: String).returns(String) }
      def salesforce_opportunity_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def uniqueness_key
      end

      sig { params(_: String).returns(String) }
      def uniqueness_key=(_)
      end

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
          ledger: T::Array[
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
          ],
          name: String,
          netsuite_sales_order_id: String,
          priority: Float,
          rate_type: Symbol,
          rolled_over_from: Metronome::Models::Commit::RolledOverFrom,
          rollover_fraction: Float,
          salesforce_opportunity_id: String,
          uniqueness_key: String
        )
          .void
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
      )
      end

      sig do
        override
          .returns(
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
              ledger: T::Array[
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
              ],
              name: String,
              netsuite_sales_order_id: String,
              priority: Float,
              rate_type: Symbol,
              rolled_over_from: Metronome::Models::Commit::RolledOverFrom,
              rollover_fraction: Float,
              salesforce_opportunity_id: String,
              uniqueness_key: String
            }
          )
      end
      def to_hash
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

      class Type < Metronome::Enum
        abstract!

        PREPAID = :PREPAID
        POSTPAID = :POSTPAID

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Contract < Metronome::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { params(id: String).void }
        def initialize(id:)
        end

        sig { override.returns({id: String}) }
        def to_hash
        end
      end

      class InvoiceContract < Metronome::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { params(id: String).void }
        def initialize(id:)
        end

        sig { override.returns({id: String}) }
        def to_hash
        end
      end

      class Ledger < Metronome::Union
        abstract!

        class PrepaidCommitSegmentStartLedgerEntry < Metronome::BaseModel
          sig { returns(Float) }
          def amount
          end

          sig { params(_: Float).returns(Float) }
          def amount=(_)
          end

          sig { returns(String) }
          def segment_id
          end

          sig { params(_: String).returns(String) }
          def segment_id=(_)
          end

          sig { returns(Time) }
          def timestamp
          end

          sig { params(_: Time).returns(Time) }
          def timestamp=(_)
          end

          sig { returns(Symbol) }
          def type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def type=(_)
          end

          sig { params(amount: Float, segment_id: String, timestamp: Time, type: Symbol).void }
          def initialize(amount:, segment_id:, timestamp:, type:)
          end

          sig { override.returns({amount: Float, segment_id: String, timestamp: Time, type: Symbol}) }
          def to_hash
          end

          class Type < Metronome::Enum
            abstract!

            PREPAID_COMMIT_SEGMENT_START = :PREPAID_COMMIT_SEGMENT_START

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class PrepaidCommitAutomatedInvoiceDeductionLedgerEntry < Metronome::BaseModel
          sig { returns(Float) }
          def amount
          end

          sig { params(_: Float).returns(Float) }
          def amount=(_)
          end

          sig { returns(String) }
          def invoice_id
          end

          sig { params(_: String).returns(String) }
          def invoice_id=(_)
          end

          sig { returns(String) }
          def segment_id
          end

          sig { params(_: String).returns(String) }
          def segment_id=(_)
          end

          sig { returns(Time) }
          def timestamp
          end

          sig { params(_: Time).returns(Time) }
          def timestamp=(_)
          end

          sig { returns(Symbol) }
          def type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def type=(_)
          end

          sig do
            params(amount: Float, invoice_id: String, segment_id: String, timestamp: Time, type: Symbol).void
          end
          def initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
          end

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
          def to_hash
          end

          class Type < Metronome::Enum
            abstract!

            PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION = :PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class PrepaidCommitRolloverLedgerEntry < Metronome::BaseModel
          sig { returns(Float) }
          def amount
          end

          sig { params(_: Float).returns(Float) }
          def amount=(_)
          end

          sig { returns(String) }
          def new_contract_id
          end

          sig { params(_: String).returns(String) }
          def new_contract_id=(_)
          end

          sig { returns(String) }
          def segment_id
          end

          sig { params(_: String).returns(String) }
          def segment_id=(_)
          end

          sig { returns(Time) }
          def timestamp
          end

          sig { params(_: Time).returns(Time) }
          def timestamp=(_)
          end

          sig { returns(Symbol) }
          def type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def type=(_)
          end

          sig do
            params(
              amount: Float,
              new_contract_id: String,
              segment_id: String,
              timestamp: Time,
              type: Symbol
            ).void
          end
          def initialize(amount:, new_contract_id:, segment_id:, timestamp:, type:)
          end

          sig do
            override
              .returns({
                         amount: Float,
                         new_contract_id: String,
                         segment_id: String,
                         timestamp: Time,
                         type: Symbol
                       })
          end
          def to_hash
          end

          class Type < Metronome::Enum
            abstract!

            PREPAID_COMMIT_ROLLOVER = :PREPAID_COMMIT_ROLLOVER

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class PrepaidCommitExpirationLedgerEntry < Metronome::BaseModel
          sig { returns(Float) }
          def amount
          end

          sig { params(_: Float).returns(Float) }
          def amount=(_)
          end

          sig { returns(String) }
          def segment_id
          end

          sig { params(_: String).returns(String) }
          def segment_id=(_)
          end

          sig { returns(Time) }
          def timestamp
          end

          sig { params(_: Time).returns(Time) }
          def timestamp=(_)
          end

          sig { returns(Symbol) }
          def type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def type=(_)
          end

          sig { params(amount: Float, segment_id: String, timestamp: Time, type: Symbol).void }
          def initialize(amount:, segment_id:, timestamp:, type:)
          end

          sig { override.returns({amount: Float, segment_id: String, timestamp: Time, type: Symbol}) }
          def to_hash
          end

          class Type < Metronome::Enum
            abstract!

            PREPAID_COMMIT_EXPIRATION = :PREPAID_COMMIT_EXPIRATION

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class PrepaidCommitCanceledLedgerEntry < Metronome::BaseModel
          sig { returns(Float) }
          def amount
          end

          sig { params(_: Float).returns(Float) }
          def amount=(_)
          end

          sig { returns(String) }
          def invoice_id
          end

          sig { params(_: String).returns(String) }
          def invoice_id=(_)
          end

          sig { returns(String) }
          def segment_id
          end

          sig { params(_: String).returns(String) }
          def segment_id=(_)
          end

          sig { returns(Time) }
          def timestamp
          end

          sig { params(_: Time).returns(Time) }
          def timestamp=(_)
          end

          sig { returns(Symbol) }
          def type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def type=(_)
          end

          sig do
            params(amount: Float, invoice_id: String, segment_id: String, timestamp: Time, type: Symbol).void
          end
          def initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
          end

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
          def to_hash
          end

          class Type < Metronome::Enum
            abstract!

            PREPAID_COMMIT_CANCELED = :PREPAID_COMMIT_CANCELED

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class PrepaidCommitCreditedLedgerEntry < Metronome::BaseModel
          sig { returns(Float) }
          def amount
          end

          sig { params(_: Float).returns(Float) }
          def amount=(_)
          end

          sig { returns(String) }
          def invoice_id
          end

          sig { params(_: String).returns(String) }
          def invoice_id=(_)
          end

          sig { returns(String) }
          def segment_id
          end

          sig { params(_: String).returns(String) }
          def segment_id=(_)
          end

          sig { returns(Time) }
          def timestamp
          end

          sig { params(_: Time).returns(Time) }
          def timestamp=(_)
          end

          sig { returns(Symbol) }
          def type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def type=(_)
          end

          sig do
            params(amount: Float, invoice_id: String, segment_id: String, timestamp: Time, type: Symbol).void
          end
          def initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
          end

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
          def to_hash
          end

          class Type < Metronome::Enum
            abstract!

            PREPAID_COMMIT_CREDITED = :PREPAID_COMMIT_CREDITED

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class PostpaidCommitInitialBalanceLedgerEntry < Metronome::BaseModel
          sig { returns(Float) }
          def amount
          end

          sig { params(_: Float).returns(Float) }
          def amount=(_)
          end

          sig { returns(Time) }
          def timestamp
          end

          sig { params(_: Time).returns(Time) }
          def timestamp=(_)
          end

          sig { returns(Symbol) }
          def type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def type=(_)
          end

          sig { params(amount: Float, timestamp: Time, type: Symbol).void }
          def initialize(amount:, timestamp:, type:)
          end

          sig { override.returns({amount: Float, timestamp: Time, type: Symbol}) }
          def to_hash
          end

          class Type < Metronome::Enum
            abstract!

            POSTPAID_COMMIT_INITIAL_BALANCE = :POSTPAID_COMMIT_INITIAL_BALANCE

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class PostpaidCommitAutomatedInvoiceDeductionLedgerEntry < Metronome::BaseModel
          sig { returns(Float) }
          def amount
          end

          sig { params(_: Float).returns(Float) }
          def amount=(_)
          end

          sig { returns(String) }
          def invoice_id
          end

          sig { params(_: String).returns(String) }
          def invoice_id=(_)
          end

          sig { returns(String) }
          def segment_id
          end

          sig { params(_: String).returns(String) }
          def segment_id=(_)
          end

          sig { returns(Time) }
          def timestamp
          end

          sig { params(_: Time).returns(Time) }
          def timestamp=(_)
          end

          sig { returns(Symbol) }
          def type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def type=(_)
          end

          sig do
            params(amount: Float, invoice_id: String, segment_id: String, timestamp: Time, type: Symbol).void
          end
          def initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
          end

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
          def to_hash
          end

          class Type < Metronome::Enum
            abstract!

            POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION = :POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class PostpaidCommitRolloverLedgerEntry < Metronome::BaseModel
          sig { returns(Float) }
          def amount
          end

          sig { params(_: Float).returns(Float) }
          def amount=(_)
          end

          sig { returns(String) }
          def new_contract_id
          end

          sig { params(_: String).returns(String) }
          def new_contract_id=(_)
          end

          sig { returns(String) }
          def segment_id
          end

          sig { params(_: String).returns(String) }
          def segment_id=(_)
          end

          sig { returns(Time) }
          def timestamp
          end

          sig { params(_: Time).returns(Time) }
          def timestamp=(_)
          end

          sig { returns(Symbol) }
          def type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def type=(_)
          end

          sig do
            params(
              amount: Float,
              new_contract_id: String,
              segment_id: String,
              timestamp: Time,
              type: Symbol
            ).void
          end
          def initialize(amount:, new_contract_id:, segment_id:, timestamp:, type:)
          end

          sig do
            override
              .returns({
                         amount: Float,
                         new_contract_id: String,
                         segment_id: String,
                         timestamp: Time,
                         type: Symbol
                       })
          end
          def to_hash
          end

          class Type < Metronome::Enum
            abstract!

            POSTPAID_COMMIT_ROLLOVER = :POSTPAID_COMMIT_ROLLOVER

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class PostpaidCommitTrueupLedgerEntry < Metronome::BaseModel
          sig { returns(Float) }
          def amount
          end

          sig { params(_: Float).returns(Float) }
          def amount=(_)
          end

          sig { returns(String) }
          def invoice_id
          end

          sig { params(_: String).returns(String) }
          def invoice_id=(_)
          end

          sig { returns(Time) }
          def timestamp
          end

          sig { params(_: Time).returns(Time) }
          def timestamp=(_)
          end

          sig { returns(Symbol) }
          def type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def type=(_)
          end

          sig { params(amount: Float, invoice_id: String, timestamp: Time, type: Symbol).void }
          def initialize(amount:, invoice_id:, timestamp:, type:)
          end

          sig { override.returns({amount: Float, invoice_id: String, timestamp: Time, type: Symbol}) }
          def to_hash
          end

          class Type < Metronome::Enum
            abstract!

            POSTPAID_COMMIT_TRUEUP = :POSTPAID_COMMIT_TRUEUP

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class PrepaidCommitManualLedgerEntry < Metronome::BaseModel
          sig { returns(Float) }
          def amount
          end

          sig { params(_: Float).returns(Float) }
          def amount=(_)
          end

          sig { returns(String) }
          def reason
          end

          sig { params(_: String).returns(String) }
          def reason=(_)
          end

          sig { returns(Time) }
          def timestamp
          end

          sig { params(_: Time).returns(Time) }
          def timestamp=(_)
          end

          sig { returns(Symbol) }
          def type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def type=(_)
          end

          sig { params(amount: Float, reason: String, timestamp: Time, type: Symbol).void }
          def initialize(amount:, reason:, timestamp:, type:)
          end

          sig { override.returns({amount: Float, reason: String, timestamp: Time, type: Symbol}) }
          def to_hash
          end

          class Type < Metronome::Enum
            abstract!

            PREPAID_COMMIT_MANUAL = :PREPAID_COMMIT_MANUAL

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class PostpaidCommitManualLedgerEntry < Metronome::BaseModel
          sig { returns(Float) }
          def amount
          end

          sig { params(_: Float).returns(Float) }
          def amount=(_)
          end

          sig { returns(String) }
          def reason
          end

          sig { params(_: String).returns(String) }
          def reason=(_)
          end

          sig { returns(Time) }
          def timestamp
          end

          sig { params(_: Time).returns(Time) }
          def timestamp=(_)
          end

          sig { returns(Symbol) }
          def type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def type=(_)
          end

          sig { params(amount: Float, reason: String, timestamp: Time, type: Symbol).void }
          def initialize(amount:, reason:, timestamp:, type:)
          end

          sig { override.returns({amount: Float, reason: String, timestamp: Time, type: Symbol}) }
          def to_hash
          end

          class Type < Metronome::Enum
            abstract!

            POSTPAID_COMMIT_MANUAL = :POSTPAID_COMMIT_MANUAL

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class PostpaidCommitExpirationLedgerEntry < Metronome::BaseModel
          sig { returns(Float) }
          def amount
          end

          sig { params(_: Float).returns(Float) }
          def amount=(_)
          end

          sig { returns(Time) }
          def timestamp
          end

          sig { params(_: Time).returns(Time) }
          def timestamp=(_)
          end

          sig { returns(Symbol) }
          def type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def type=(_)
          end

          sig { params(amount: Float, timestamp: Time, type: Symbol).void }
          def initialize(amount:, timestamp:, type:)
          end

          sig { override.returns({amount: Float, timestamp: Time, type: Symbol}) }
          def to_hash
          end

          class Type < Metronome::Enum
            abstract!

            POSTPAID_COMMIT_EXPIRATION = :POSTPAID_COMMIT_EXPIRATION

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        sig do
          override
            .returns(
              [[NilClass, Metronome::Models::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry], [NilClass, Metronome::Models::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry], [NilClass, Metronome::Models::Commit::Ledger::PrepaidCommitRolloverLedgerEntry], [NilClass, Metronome::Models::Commit::Ledger::PrepaidCommitExpirationLedgerEntry], [NilClass, Metronome::Models::Commit::Ledger::PrepaidCommitCanceledLedgerEntry], [NilClass, Metronome::Models::Commit::Ledger::PrepaidCommitCreditedLedgerEntry], [NilClass, Metronome::Models::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry], [NilClass, Metronome::Models::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry], [NilClass, Metronome::Models::Commit::Ledger::PostpaidCommitRolloverLedgerEntry], [NilClass, Metronome::Models::Commit::Ledger::PostpaidCommitTrueupLedgerEntry], [NilClass, Metronome::Models::Commit::Ledger::PrepaidCommitManualLedgerEntry], [NilClass, Metronome::Models::Commit::Ledger::PostpaidCommitManualLedgerEntry], [NilClass, Metronome::Models::Commit::Ledger::PostpaidCommitExpirationLedgerEntry]]
            )
        end
        private_class_method def self.variants
        end
      end

      class RateType < Metronome::Enum
        abstract!

        COMMIT_RATE = :COMMIT_RATE
        LIST_RATE = :LIST_RATE

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class RolledOverFrom < Metronome::BaseModel
        sig { returns(String) }
        def commit_id
        end

        sig { params(_: String).returns(String) }
        def commit_id=(_)
        end

        sig { returns(String) }
        def contract_id
        end

        sig { params(_: String).returns(String) }
        def contract_id=(_)
        end

        sig { params(commit_id: String, contract_id: String).void }
        def initialize(commit_id:, contract_id:)
        end

        sig { override.returns({commit_id: String, contract_id: String}) }
        def to_hash
        end
      end
    end
  end
end
