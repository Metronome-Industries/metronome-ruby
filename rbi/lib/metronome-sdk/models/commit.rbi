# typed: strong

module MetronomeSDK
  module Models
    class Commit < MetronomeSDK::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(MetronomeSDK::Models::Commit::Product) }
      def product
      end

      sig { params(_: MetronomeSDK::Models::Commit::Product).returns(MetronomeSDK::Models::Commit::Product) }
      def product=(_)
      end

      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      sig { returns(T.nilable(MetronomeSDK::Models::ScheduleDuration)) }
      def access_schedule
      end

      sig { params(_: MetronomeSDK::Models::ScheduleDuration).returns(MetronomeSDK::Models::ScheduleDuration) }
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

      sig { returns(T.nilable(Time)) }
      def archived_at
      end

      sig { params(_: Time).returns(Time) }
      def archived_at=(_)
      end

      sig { returns(T.nilable(Float)) }
      def balance
      end

      sig { params(_: Float).returns(Float) }
      def balance=(_)
      end

      sig { returns(T.nilable(MetronomeSDK::Models::Commit::Contract)) }
      def contract
      end

      sig { params(_: MetronomeSDK::Models::Commit::Contract).returns(MetronomeSDK::Models::Commit::Contract) }
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

      sig { returns(T.nilable(MetronomeSDK::Models::Commit::InvoiceContract)) }
      def invoice_contract
      end

      sig do
        params(_: MetronomeSDK::Models::Commit::InvoiceContract)
          .returns(MetronomeSDK::Models::Commit::InvoiceContract)
      end
      def invoice_contract=(_)
      end

      sig { returns(T.nilable(MetronomeSDK::Models::SchedulePointInTime)) }
      def invoice_schedule
      end

      sig { params(_: MetronomeSDK::Models::SchedulePointInTime).returns(MetronomeSDK::Models::SchedulePointInTime) }
      def invoice_schedule=(_)
      end

      sig do
        returns(
          T.nilable(
            T::Array[
            T.any(
              MetronomeSDK::Models::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry,
              MetronomeSDK::Models::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry,
              MetronomeSDK::Models::Commit::Ledger::PrepaidCommitRolloverLedgerEntry,
              MetronomeSDK::Models::Commit::Ledger::PrepaidCommitExpirationLedgerEntry,
              MetronomeSDK::Models::Commit::Ledger::PrepaidCommitCanceledLedgerEntry,
              MetronomeSDK::Models::Commit::Ledger::PrepaidCommitCreditedLedgerEntry,
              MetronomeSDK::Models::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry,
              MetronomeSDK::Models::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry,
              MetronomeSDK::Models::Commit::Ledger::PostpaidCommitRolloverLedgerEntry,
              MetronomeSDK::Models::Commit::Ledger::PostpaidCommitTrueupLedgerEntry,
              MetronomeSDK::Models::Commit::Ledger::PrepaidCommitManualLedgerEntry,
              MetronomeSDK::Models::Commit::Ledger::PostpaidCommitManualLedgerEntry,
              MetronomeSDK::Models::Commit::Ledger::PostpaidCommitExpirationLedgerEntry
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
            MetronomeSDK::Models::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry,
            MetronomeSDK::Models::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry,
            MetronomeSDK::Models::Commit::Ledger::PrepaidCommitRolloverLedgerEntry,
            MetronomeSDK::Models::Commit::Ledger::PrepaidCommitExpirationLedgerEntry,
            MetronomeSDK::Models::Commit::Ledger::PrepaidCommitCanceledLedgerEntry,
            MetronomeSDK::Models::Commit::Ledger::PrepaidCommitCreditedLedgerEntry,
            MetronomeSDK::Models::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry,
            MetronomeSDK::Models::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry,
            MetronomeSDK::Models::Commit::Ledger::PostpaidCommitRolloverLedgerEntry,
            MetronomeSDK::Models::Commit::Ledger::PostpaidCommitTrueupLedgerEntry,
            MetronomeSDK::Models::Commit::Ledger::PrepaidCommitManualLedgerEntry,
            MetronomeSDK::Models::Commit::Ledger::PostpaidCommitManualLedgerEntry,
            MetronomeSDK::Models::Commit::Ledger::PostpaidCommitExpirationLedgerEntry
          )
          ]
        )
          .returns(
            T::Array[
            T.any(
              MetronomeSDK::Models::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry,
              MetronomeSDK::Models::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry,
              MetronomeSDK::Models::Commit::Ledger::PrepaidCommitRolloverLedgerEntry,
              MetronomeSDK::Models::Commit::Ledger::PrepaidCommitExpirationLedgerEntry,
              MetronomeSDK::Models::Commit::Ledger::PrepaidCommitCanceledLedgerEntry,
              MetronomeSDK::Models::Commit::Ledger::PrepaidCommitCreditedLedgerEntry,
              MetronomeSDK::Models::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry,
              MetronomeSDK::Models::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry,
              MetronomeSDK::Models::Commit::Ledger::PostpaidCommitRolloverLedgerEntry,
              MetronomeSDK::Models::Commit::Ledger::PostpaidCommitTrueupLedgerEntry,
              MetronomeSDK::Models::Commit::Ledger::PrepaidCommitManualLedgerEntry,
              MetronomeSDK::Models::Commit::Ledger::PostpaidCommitManualLedgerEntry,
              MetronomeSDK::Models::Commit::Ledger::PostpaidCommitExpirationLedgerEntry
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

      sig { returns(T.nilable(MetronomeSDK::Models::Commit::RolledOverFrom)) }
      def rolled_over_from
      end

      sig do
        params(_: MetronomeSDK::Models::Commit::RolledOverFrom)
          .returns(MetronomeSDK::Models::Commit::RolledOverFrom)
      end
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
          product: MetronomeSDK::Models::Commit::Product,
          type: Symbol,
          access_schedule: MetronomeSDK::Models::ScheduleDuration,
          amount: Float,
          applicable_contract_ids: T::Array[String],
          applicable_product_ids: T::Array[String],
          applicable_product_tags: T::Array[String],
          archived_at: Time,
          balance: Float,
          contract: MetronomeSDK::Models::Commit::Contract,
          custom_fields: T::Hash[Symbol, String],
          description: String,
          invoice_contract: MetronomeSDK::Models::Commit::InvoiceContract,
          invoice_schedule: MetronomeSDK::Models::SchedulePointInTime,
          ledger: T::Array[
          T.any(
            MetronomeSDK::Models::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry,
            MetronomeSDK::Models::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry,
            MetronomeSDK::Models::Commit::Ledger::PrepaidCommitRolloverLedgerEntry,
            MetronomeSDK::Models::Commit::Ledger::PrepaidCommitExpirationLedgerEntry,
            MetronomeSDK::Models::Commit::Ledger::PrepaidCommitCanceledLedgerEntry,
            MetronomeSDK::Models::Commit::Ledger::PrepaidCommitCreditedLedgerEntry,
            MetronomeSDK::Models::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry,
            MetronomeSDK::Models::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry,
            MetronomeSDK::Models::Commit::Ledger::PostpaidCommitRolloverLedgerEntry,
            MetronomeSDK::Models::Commit::Ledger::PostpaidCommitTrueupLedgerEntry,
            MetronomeSDK::Models::Commit::Ledger::PrepaidCommitManualLedgerEntry,
            MetronomeSDK::Models::Commit::Ledger::PostpaidCommitManualLedgerEntry,
            MetronomeSDK::Models::Commit::Ledger::PostpaidCommitExpirationLedgerEntry
          )
          ],
          name: String,
          netsuite_sales_order_id: String,
          priority: Float,
          rate_type: Symbol,
          rolled_over_from: MetronomeSDK::Models::Commit::RolledOverFrom,
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
        archived_at: nil,
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
              product: MetronomeSDK::Models::Commit::Product,
              type: Symbol,
              access_schedule: MetronomeSDK::Models::ScheduleDuration,
              amount: Float,
              applicable_contract_ids: T::Array[String],
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              archived_at: Time,
              balance: Float,
              contract: MetronomeSDK::Models::Commit::Contract,
              custom_fields: T::Hash[Symbol, String],
              description: String,
              invoice_contract: MetronomeSDK::Models::Commit::InvoiceContract,
              invoice_schedule: MetronomeSDK::Models::SchedulePointInTime,
              ledger: T::Array[
              T.any(
                MetronomeSDK::Models::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry,
                MetronomeSDK::Models::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry,
                MetronomeSDK::Models::Commit::Ledger::PrepaidCommitRolloverLedgerEntry,
                MetronomeSDK::Models::Commit::Ledger::PrepaidCommitExpirationLedgerEntry,
                MetronomeSDK::Models::Commit::Ledger::PrepaidCommitCanceledLedgerEntry,
                MetronomeSDK::Models::Commit::Ledger::PrepaidCommitCreditedLedgerEntry,
                MetronomeSDK::Models::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry,
                MetronomeSDK::Models::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry,
                MetronomeSDK::Models::Commit::Ledger::PostpaidCommitRolloverLedgerEntry,
                MetronomeSDK::Models::Commit::Ledger::PostpaidCommitTrueupLedgerEntry,
                MetronomeSDK::Models::Commit::Ledger::PrepaidCommitManualLedgerEntry,
                MetronomeSDK::Models::Commit::Ledger::PostpaidCommitManualLedgerEntry,
                MetronomeSDK::Models::Commit::Ledger::PostpaidCommitExpirationLedgerEntry
              )
              ],
              name: String,
              netsuite_sales_order_id: String,
              priority: Float,
              rate_type: Symbol,
              rolled_over_from: MetronomeSDK::Models::Commit::RolledOverFrom,
              rollover_fraction: Float,
              salesforce_opportunity_id: String,
              uniqueness_key: String
            }
          )
      end
      def to_hash
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

      class Type < MetronomeSDK::Enum
        abstract!

        PREPAID = :PREPAID
        POSTPAID = :POSTPAID

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Contract < MetronomeSDK::BaseModel
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

      class InvoiceContract < MetronomeSDK::BaseModel
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

      class Ledger < MetronomeSDK::Union
        abstract!

        class PrepaidCommitSegmentStartLedgerEntry < MetronomeSDK::BaseModel
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

          class Type < MetronomeSDK::Enum
            abstract!

            PREPAID_COMMIT_SEGMENT_START = :PREPAID_COMMIT_SEGMENT_START

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class PrepaidCommitAutomatedInvoiceDeductionLedgerEntry < MetronomeSDK::BaseModel
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

          class Type < MetronomeSDK::Enum
            abstract!

            PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION = :PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class PrepaidCommitRolloverLedgerEntry < MetronomeSDK::BaseModel
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

          class Type < MetronomeSDK::Enum
            abstract!

            PREPAID_COMMIT_ROLLOVER = :PREPAID_COMMIT_ROLLOVER

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class PrepaidCommitExpirationLedgerEntry < MetronomeSDK::BaseModel
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

          class Type < MetronomeSDK::Enum
            abstract!

            PREPAID_COMMIT_EXPIRATION = :PREPAID_COMMIT_EXPIRATION

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class PrepaidCommitCanceledLedgerEntry < MetronomeSDK::BaseModel
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

          class Type < MetronomeSDK::Enum
            abstract!

            PREPAID_COMMIT_CANCELED = :PREPAID_COMMIT_CANCELED

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class PrepaidCommitCreditedLedgerEntry < MetronomeSDK::BaseModel
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

          class Type < MetronomeSDK::Enum
            abstract!

            PREPAID_COMMIT_CREDITED = :PREPAID_COMMIT_CREDITED

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class PostpaidCommitInitialBalanceLedgerEntry < MetronomeSDK::BaseModel
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

          class Type < MetronomeSDK::Enum
            abstract!

            POSTPAID_COMMIT_INITIAL_BALANCE = :POSTPAID_COMMIT_INITIAL_BALANCE

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class PostpaidCommitAutomatedInvoiceDeductionLedgerEntry < MetronomeSDK::BaseModel
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

          class Type < MetronomeSDK::Enum
            abstract!

            POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION = :POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class PostpaidCommitRolloverLedgerEntry < MetronomeSDK::BaseModel
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

          class Type < MetronomeSDK::Enum
            abstract!

            POSTPAID_COMMIT_ROLLOVER = :POSTPAID_COMMIT_ROLLOVER

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class PostpaidCommitTrueupLedgerEntry < MetronomeSDK::BaseModel
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

          class Type < MetronomeSDK::Enum
            abstract!

            POSTPAID_COMMIT_TRUEUP = :POSTPAID_COMMIT_TRUEUP

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class PrepaidCommitManualLedgerEntry < MetronomeSDK::BaseModel
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

          class Type < MetronomeSDK::Enum
            abstract!

            PREPAID_COMMIT_MANUAL = :PREPAID_COMMIT_MANUAL

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class PostpaidCommitManualLedgerEntry < MetronomeSDK::BaseModel
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

          class Type < MetronomeSDK::Enum
            abstract!

            POSTPAID_COMMIT_MANUAL = :POSTPAID_COMMIT_MANUAL

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class PostpaidCommitExpirationLedgerEntry < MetronomeSDK::BaseModel
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

          class Type < MetronomeSDK::Enum
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
              [[NilClass, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry], [NilClass, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry], [NilClass, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitRolloverLedgerEntry], [NilClass, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitExpirationLedgerEntry], [NilClass, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitCanceledLedgerEntry], [NilClass, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitCreditedLedgerEntry], [NilClass, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry], [NilClass, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry], [NilClass, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitRolloverLedgerEntry], [NilClass, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitTrueupLedgerEntry], [NilClass, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitManualLedgerEntry], [NilClass, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitManualLedgerEntry], [NilClass, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitExpirationLedgerEntry]]
            )
        end
        private_class_method def self.variants
        end
      end

      class RateType < MetronomeSDK::Enum
        abstract!

        COMMIT_RATE = :COMMIT_RATE
        LIST_RATE = :LIST_RATE

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class RolledOverFrom < MetronomeSDK::BaseModel
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
