# typed: strong

module MetronomeSDK
  module Models
    class Credit < MetronomeSDK::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(MetronomeSDK::Models::Credit::Product) }
      def product
      end

      sig { params(_: MetronomeSDK::Models::Credit::Product).returns(MetronomeSDK::Models::Credit::Product) }
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

      sig { returns(T.nilable(MetronomeSDK::Models::Credit::Contract)) }
      def contract
      end

      sig { params(_: MetronomeSDK::Models::Credit::Contract).returns(MetronomeSDK::Models::Credit::Contract) }
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

      sig do
        returns(
          T.nilable(
            T::Array[
            T.any(
              MetronomeSDK::Models::Credit::Ledger::CreditSegmentStartLedgerEntry,
              MetronomeSDK::Models::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry,
              MetronomeSDK::Models::Credit::Ledger::CreditExpirationLedgerEntry,
              MetronomeSDK::Models::Credit::Ledger::CreditCanceledLedgerEntry,
              MetronomeSDK::Models::Credit::Ledger::CreditCreditedLedgerEntry,
              MetronomeSDK::Models::Credit::Ledger::CreditManualLedgerEntry
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
            MetronomeSDK::Models::Credit::Ledger::CreditSegmentStartLedgerEntry,
            MetronomeSDK::Models::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry,
            MetronomeSDK::Models::Credit::Ledger::CreditExpirationLedgerEntry,
            MetronomeSDK::Models::Credit::Ledger::CreditCanceledLedgerEntry,
            MetronomeSDK::Models::Credit::Ledger::CreditCreditedLedgerEntry,
            MetronomeSDK::Models::Credit::Ledger::CreditManualLedgerEntry
          )
          ]
        )
          .returns(
            T::Array[
            T.any(
              MetronomeSDK::Models::Credit::Ledger::CreditSegmentStartLedgerEntry,
              MetronomeSDK::Models::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry,
              MetronomeSDK::Models::Credit::Ledger::CreditExpirationLedgerEntry,
              MetronomeSDK::Models::Credit::Ledger::CreditCanceledLedgerEntry,
              MetronomeSDK::Models::Credit::Ledger::CreditCreditedLedgerEntry,
              MetronomeSDK::Models::Credit::Ledger::CreditManualLedgerEntry
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
          product: MetronomeSDK::Models::Credit::Product,
          type: Symbol,
          access_schedule: MetronomeSDK::Models::ScheduleDuration,
          applicable_contract_ids: T::Array[String],
          applicable_product_ids: T::Array[String],
          applicable_product_tags: T::Array[String],
          balance: Float,
          contract: MetronomeSDK::Models::Credit::Contract,
          custom_fields: T::Hash[Symbol, String],
          description: String,
          ledger: T::Array[
          T.any(
            MetronomeSDK::Models::Credit::Ledger::CreditSegmentStartLedgerEntry,
            MetronomeSDK::Models::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry,
            MetronomeSDK::Models::Credit::Ledger::CreditExpirationLedgerEntry,
            MetronomeSDK::Models::Credit::Ledger::CreditCanceledLedgerEntry,
            MetronomeSDK::Models::Credit::Ledger::CreditCreditedLedgerEntry,
            MetronomeSDK::Models::Credit::Ledger::CreditManualLedgerEntry
          )
          ],
          name: String,
          netsuite_sales_order_id: String,
          priority: Float,
          rate_type: Symbol,
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
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              product: MetronomeSDK::Models::Credit::Product,
              type: Symbol,
              access_schedule: MetronomeSDK::Models::ScheduleDuration,
              applicable_contract_ids: T::Array[String],
              applicable_product_ids: T::Array[String],
              applicable_product_tags: T::Array[String],
              balance: Float,
              contract: MetronomeSDK::Models::Credit::Contract,
              custom_fields: T::Hash[Symbol, String],
              description: String,
              ledger: T::Array[
              T.any(
                MetronomeSDK::Models::Credit::Ledger::CreditSegmentStartLedgerEntry,
                MetronomeSDK::Models::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry,
                MetronomeSDK::Models::Credit::Ledger::CreditExpirationLedgerEntry,
                MetronomeSDK::Models::Credit::Ledger::CreditCanceledLedgerEntry,
                MetronomeSDK::Models::Credit::Ledger::CreditCreditedLedgerEntry,
                MetronomeSDK::Models::Credit::Ledger::CreditManualLedgerEntry
              )
              ],
              name: String,
              netsuite_sales_order_id: String,
              priority: Float,
              rate_type: Symbol,
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

        CREDIT = :CREDIT

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

      class Ledger < MetronomeSDK::Union
        abstract!

        class CreditSegmentStartLedgerEntry < MetronomeSDK::BaseModel
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

            CREDIT_SEGMENT_START = :CREDIT_SEGMENT_START

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class CreditAutomatedInvoiceDeductionLedgerEntry < MetronomeSDK::BaseModel
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

            CREDIT_AUTOMATED_INVOICE_DEDUCTION = :CREDIT_AUTOMATED_INVOICE_DEDUCTION

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class CreditExpirationLedgerEntry < MetronomeSDK::BaseModel
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

            CREDIT_EXPIRATION = :CREDIT_EXPIRATION

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class CreditCanceledLedgerEntry < MetronomeSDK::BaseModel
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

            CREDIT_CANCELED = :CREDIT_CANCELED

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class CreditCreditedLedgerEntry < MetronomeSDK::BaseModel
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

            CREDIT_CREDITED = :CREDIT_CREDITED

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        class CreditManualLedgerEntry < MetronomeSDK::BaseModel
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

            CREDIT_MANUAL = :CREDIT_MANUAL

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end

        sig do
          override
            .returns(
              [[NilClass, MetronomeSDK::Models::Credit::Ledger::CreditSegmentStartLedgerEntry], [NilClass, MetronomeSDK::Models::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry], [NilClass, MetronomeSDK::Models::Credit::Ledger::CreditExpirationLedgerEntry], [NilClass, MetronomeSDK::Models::Credit::Ledger::CreditCanceledLedgerEntry], [NilClass, MetronomeSDK::Models::Credit::Ledger::CreditCreditedLedgerEntry], [NilClass, MetronomeSDK::Models::Credit::Ledger::CreditManualLedgerEntry]]
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
    end
  end
end
