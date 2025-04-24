# frozen_string_literal: true

module MetronomeSDK
  module Models
    class Commit < MetronomeSDK::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute product
      #
      #   @return [MetronomeSDK::Models::Commit::Product]
      required :product, -> { MetronomeSDK::Models::Commit::Product }

      # @!attribute type
      #
      #   @return [Symbol, MetronomeSDK::Models::Commit::Type]
      required :type, enum: -> { MetronomeSDK::Models::Commit::Type }

      # @!attribute [r] access_schedule
      #   The schedule that the customer will gain access to the credits purposed with
      #     this commit.
      #
      #   @return [MetronomeSDK::Models::ScheduleDuration, nil]
      optional :access_schedule, -> { MetronomeSDK::Models::ScheduleDuration }

      # @!parse
      #   # @return [MetronomeSDK::Models::ScheduleDuration]
      #   attr_writer :access_schedule

      # @!attribute [r] amount
      #   (DEPRECATED) Use access_schedule + invoice_schedule instead.
      #
      #   @return [Float, nil]
      optional :amount, Float

      # @!parse
      #   # @return [Float]
      #   attr_writer :amount

      # @!attribute [r] applicable_contract_ids
      #
      #   @return [Array<String>, nil]
      optional :applicable_contract_ids, MetronomeSDK::ArrayOf[String]

      # @!parse
      #   # @return [Array<String>]
      #   attr_writer :applicable_contract_ids

      # @!attribute [r] applicable_product_ids
      #
      #   @return [Array<String>, nil]
      optional :applicable_product_ids, MetronomeSDK::ArrayOf[String]

      # @!parse
      #   # @return [Array<String>]
      #   attr_writer :applicable_product_ids

      # @!attribute [r] applicable_product_tags
      #
      #   @return [Array<String>, nil]
      optional :applicable_product_tags, MetronomeSDK::ArrayOf[String]

      # @!parse
      #   # @return [Array<String>]
      #   attr_writer :applicable_product_tags

      # @!attribute [r] archived_at
      #   RFC 3339 timestamp indicating when the commit was archived. If not provided, the
      #     commit is not archived.
      #
      #   @return [Time, nil]
      optional :archived_at, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :archived_at

      # @!attribute [r] balance
      #   The current balance of the credit or commit. This balance reflects the amount of
      #     credit or commit that the customer has access to use at this moment - thus,
      #     expired and upcoming credit or commit segments contribute 0 to the balance. The
      #     balance will match the sum of all ledger entries with the exception of the case
      #     where the sum of negative manual ledger entries exceeds the positive amount
      #     remaining on the credit or commit - in that case, the balance will be 0. All
      #     manual ledger entries associated with active credit or commit segments are
      #     included in the balance, including future-dated manual ledger entries.
      #
      #   @return [Float, nil]
      optional :balance, Float

      # @!parse
      #   # @return [Float]
      #   attr_writer :balance

      # @!attribute [r] contract
      #
      #   @return [MetronomeSDK::Models::Commit::Contract, nil]
      optional :contract, -> { MetronomeSDK::Models::Commit::Contract }

      # @!parse
      #   # @return [MetronomeSDK::Models::Commit::Contract]
      #   attr_writer :contract

      # @!attribute [r] custom_fields
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :custom_fields, MetronomeSDK::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :custom_fields

      # @!attribute [r] description
      #
      #   @return [String, nil]
      optional :description, String

      # @!parse
      #   # @return [String]
      #   attr_writer :description

      # @!attribute [r] invoice_contract
      #   The contract that this commit will be billed on.
      #
      #   @return [MetronomeSDK::Models::Commit::InvoiceContract, nil]
      optional :invoice_contract, -> { MetronomeSDK::Models::Commit::InvoiceContract }

      # @!parse
      #   # @return [MetronomeSDK::Models::Commit::InvoiceContract]
      #   attr_writer :invoice_contract

      # @!attribute [r] invoice_schedule
      #   The schedule that the customer will be invoiced for this commit.
      #
      #   @return [MetronomeSDK::Models::SchedulePointInTime, nil]
      optional :invoice_schedule, -> { MetronomeSDK::Models::SchedulePointInTime }

      # @!parse
      #   # @return [MetronomeSDK::Models::SchedulePointInTime]
      #   attr_writer :invoice_schedule

      # @!attribute [r] ledger
      #   A list of ordered events that impact the balance of a commit. For example, an
      #     invoice deduction or a rollover.
      #
      #   @return [Array<MetronomeSDK::Models::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitRolloverLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitExpirationLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitCanceledLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitCreditedLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitRolloverLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitTrueupLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitManualLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitManualLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitExpirationLedgerEntry>, nil]
      optional :ledger, -> { MetronomeSDK::ArrayOf[union: MetronomeSDK::Models::Commit::Ledger] }

      # @!parse
      #   # @return [Array<MetronomeSDK::Models::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitRolloverLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitExpirationLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitCanceledLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitCreditedLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitRolloverLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitTrueupLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitManualLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitManualLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitExpirationLedgerEntry>]
      #   attr_writer :ledger

      # @!attribute [r] name
      #
      #   @return [String, nil]
      optional :name, String

      # @!parse
      #   # @return [String]
      #   attr_writer :name

      # @!attribute [r] netsuite_sales_order_id
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [String, nil]
      optional :netsuite_sales_order_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :netsuite_sales_order_id

      # @!attribute [r] priority
      #   If multiple credits or commits are applicable, the one with the lower priority
      #     will apply first.
      #
      #   @return [Float, nil]
      optional :priority, Float

      # @!parse
      #   # @return [Float]
      #   attr_writer :priority

      # @!attribute [r] rate_type
      #
      #   @return [Symbol, MetronomeSDK::Models::Commit::RateType, nil]
      optional :rate_type, enum: -> { MetronomeSDK::Models::Commit::RateType }

      # @!parse
      #   # @return [Symbol, MetronomeSDK::Models::Commit::RateType]
      #   attr_writer :rate_type

      # @!attribute [r] rolled_over_from
      #
      #   @return [MetronomeSDK::Models::Commit::RolledOverFrom, nil]
      optional :rolled_over_from, -> { MetronomeSDK::Models::Commit::RolledOverFrom }

      # @!parse
      #   # @return [MetronomeSDK::Models::Commit::RolledOverFrom]
      #   attr_writer :rolled_over_from

      # @!attribute [r] rollover_fraction
      #
      #   @return [Float, nil]
      optional :rollover_fraction, Float

      # @!parse
      #   # @return [Float]
      #   attr_writer :rollover_fraction

      # @!attribute [r] salesforce_opportunity_id
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [String, nil]
      optional :salesforce_opportunity_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :salesforce_opportunity_id

      # @!attribute [r] uniqueness_key
      #   Prevents the creation of duplicates. If a request to create a commit or credit
      #     is made with a uniqueness key that was previously used to create a commit or
      #     credit, a new record will not be created and the request will fail with a 409
      #     error.
      #
      #   @return [String, nil]
      optional :uniqueness_key, String

      # @!parse
      #   # @return [String]
      #   attr_writer :uniqueness_key

      # @!parse
      #   # @param id [String]
      #   # @param product [MetronomeSDK::Models::Commit::Product]
      #   # @param type [Symbol, MetronomeSDK::Models::Commit::Type]
      #   # @param access_schedule [MetronomeSDK::Models::ScheduleDuration]
      #   # @param amount [Float]
      #   # @param applicable_contract_ids [Array<String>]
      #   # @param applicable_product_ids [Array<String>]
      #   # @param applicable_product_tags [Array<String>]
      #   # @param archived_at [Time]
      #   # @param balance [Float]
      #   # @param contract [MetronomeSDK::Models::Commit::Contract]
      #   # @param custom_fields [Hash{Symbol=>String}]
      #   # @param description [String]
      #   # @param invoice_contract [MetronomeSDK::Models::Commit::InvoiceContract]
      #   # @param invoice_schedule [MetronomeSDK::Models::SchedulePointInTime]
      #   # @param ledger [Array<MetronomeSDK::Models::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitRolloverLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitExpirationLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitCanceledLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitCreditedLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitRolloverLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitTrueupLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitManualLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitManualLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitExpirationLedgerEntry>]
      #   # @param name [String]
      #   # @param netsuite_sales_order_id [String]
      #   # @param priority [Float]
      #   # @param rate_type [Symbol, MetronomeSDK::Models::Commit::RateType]
      #   # @param rolled_over_from [MetronomeSDK::Models::Commit::RolledOverFrom]
      #   # @param rollover_fraction [Float]
      #   # @param salesforce_opportunity_id [String]
      #   # @param uniqueness_key [String]
      #   #
      #   def initialize(
      #     id:,
      #     product:,
      #     type:,
      #     access_schedule: nil,
      #     amount: nil,
      #     applicable_contract_ids: nil,
      #     applicable_product_ids: nil,
      #     applicable_product_tags: nil,
      #     archived_at: nil,
      #     balance: nil,
      #     contract: nil,
      #     custom_fields: nil,
      #     description: nil,
      #     invoice_contract: nil,
      #     invoice_schedule: nil,
      #     ledger: nil,
      #     name: nil,
      #     netsuite_sales_order_id: nil,
      #     priority: nil,
      #     rate_type: nil,
      #     rolled_over_from: nil,
      #     rollover_fraction: nil,
      #     salesforce_opportunity_id: nil,
      #     uniqueness_key: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

      class Product < MetronomeSDK::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!parse
        #   # @param id [String]
        #   # @param name [String]
        #   #
        #   def initialize(id:, name:, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
      end

      # @abstract
      #
      # @example
      # ```ruby
      # case type
      # in :PREPAID
      #   # ...
      # in :POSTPAID
      #   # ...
      # end
      # ```
      class Type < MetronomeSDK::Enum
        PREPAID = :PREPAID
        POSTPAID = :POSTPAID

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end

      class Contract < MetronomeSDK::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!parse
        #   # @param id [String]
        #   #
        #   def initialize(id:, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
      end

      class InvoiceContract < MetronomeSDK::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!parse
        #   # The contract that this commit will be billed on.
        #   #
        #   # @param id [String]
        #   #
        #   def initialize(id:, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
      end

      # @abstract
      #
      # @example
      # ```ruby
      # case ledger
      # in MetronomeSDK::Models::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry
      #   # ...
      # in MetronomeSDK::Models::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry
      #   # ...
      # in MetronomeSDK::Models::Commit::Ledger::PrepaidCommitRolloverLedgerEntry
      #   # ...
      # in MetronomeSDK::Models::Commit::Ledger::PrepaidCommitExpirationLedgerEntry
      #   # ...
      # in MetronomeSDK::Models::Commit::Ledger::PrepaidCommitCanceledLedgerEntry
      #   # ...
      # in MetronomeSDK::Models::Commit::Ledger::PrepaidCommitCreditedLedgerEntry
      #   # ...
      # in MetronomeSDK::Models::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry
      #   # ...
      # in MetronomeSDK::Models::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry
      #   # ...
      # in MetronomeSDK::Models::Commit::Ledger::PostpaidCommitRolloverLedgerEntry
      #   # ...
      # in MetronomeSDK::Models::Commit::Ledger::PostpaidCommitTrueupLedgerEntry
      #   # ...
      # in MetronomeSDK::Models::Commit::Ledger::PrepaidCommitManualLedgerEntry
      #   # ...
      # in MetronomeSDK::Models::Commit::Ledger::PostpaidCommitManualLedgerEntry
      #   # ...
      # in MetronomeSDK::Models::Commit::Ledger::PostpaidCommitExpirationLedgerEntry
      #   # ...
      # end
      # ```
      class Ledger < MetronomeSDK::Union
        variant -> { MetronomeSDK::Models::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry }

        variant -> { MetronomeSDK::Models::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry }

        variant -> { MetronomeSDK::Models::Commit::Ledger::PrepaidCommitRolloverLedgerEntry }

        variant -> { MetronomeSDK::Models::Commit::Ledger::PrepaidCommitExpirationLedgerEntry }

        variant -> { MetronomeSDK::Models::Commit::Ledger::PrepaidCommitCanceledLedgerEntry }

        variant -> { MetronomeSDK::Models::Commit::Ledger::PrepaidCommitCreditedLedgerEntry }

        variant -> { MetronomeSDK::Models::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry }

        variant -> { MetronomeSDK::Models::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry }

        variant -> { MetronomeSDK::Models::Commit::Ledger::PostpaidCommitRolloverLedgerEntry }

        variant -> { MetronomeSDK::Models::Commit::Ledger::PostpaidCommitTrueupLedgerEntry }

        variant -> { MetronomeSDK::Models::Commit::Ledger::PrepaidCommitManualLedgerEntry }

        variant -> { MetronomeSDK::Models::Commit::Ledger::PostpaidCommitManualLedgerEntry }

        variant -> { MetronomeSDK::Models::Commit::Ledger::PostpaidCommitExpirationLedgerEntry }

        class PrepaidCommitSegmentStartLedgerEntry < MetronomeSDK::BaseModel
          # @!attribute amount
          #
          #   @return [Float]
          required :amount, Float

          # @!attribute segment_id
          #
          #   @return [String]
          required :segment_id, String

          # @!attribute timestamp
          #
          #   @return [Time]
          required :timestamp, Time

          # @!attribute type
          #
          #   @return [Symbol, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Type]
          required :type,
                   enum: -> { MetronomeSDK::Models::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Type }

          # @!parse
          #   # @param amount [Float]
          #   # @param segment_id [String]
          #   # @param timestamp [Time]
          #   # @param type [Symbol, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Type]
          #   #
          #   def initialize(amount:, segment_id:, timestamp:, type:, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case type
          # in :PREPAID_COMMIT_SEGMENT_START
          #   # ...
          # end
          # ```
          class Type < MetronomeSDK::Enum
            PREPAID_COMMIT_SEGMENT_START = :PREPAID_COMMIT_SEGMENT_START

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        class PrepaidCommitAutomatedInvoiceDeductionLedgerEntry < MetronomeSDK::BaseModel
          # @!attribute amount
          #
          #   @return [Float]
          required :amount, Float

          # @!attribute invoice_id
          #
          #   @return [String]
          required :invoice_id, String

          # @!attribute segment_id
          #
          #   @return [String]
          required :segment_id, String

          # @!attribute timestamp
          #
          #   @return [Time]
          required :timestamp, Time

          # @!attribute type
          #
          #   @return [Symbol, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Type]
          required :type,
                   enum: -> { MetronomeSDK::Models::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Type }

          # @!parse
          #   # @param amount [Float]
          #   # @param invoice_id [String]
          #   # @param segment_id [String]
          #   # @param timestamp [Time]
          #   # @param type [Symbol, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Type]
          #   #
          #   def initialize(amount:, invoice_id:, segment_id:, timestamp:, type:, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case type
          # in :PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION
          #   # ...
          # end
          # ```
          class Type < MetronomeSDK::Enum
            PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION = :PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        class PrepaidCommitRolloverLedgerEntry < MetronomeSDK::BaseModel
          # @!attribute amount
          #
          #   @return [Float]
          required :amount, Float

          # @!attribute new_contract_id
          #
          #   @return [String]
          required :new_contract_id, String

          # @!attribute segment_id
          #
          #   @return [String]
          required :segment_id, String

          # @!attribute timestamp
          #
          #   @return [Time]
          required :timestamp, Time

          # @!attribute type
          #
          #   @return [Symbol, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::Type]
          required :type, enum: -> { MetronomeSDK::Models::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::Type }

          # @!parse
          #   # @param amount [Float]
          #   # @param new_contract_id [String]
          #   # @param segment_id [String]
          #   # @param timestamp [Time]
          #   # @param type [Symbol, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::Type]
          #   #
          #   def initialize(amount:, new_contract_id:, segment_id:, timestamp:, type:, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case type
          # in :PREPAID_COMMIT_ROLLOVER
          #   # ...
          # end
          # ```
          class Type < MetronomeSDK::Enum
            PREPAID_COMMIT_ROLLOVER = :PREPAID_COMMIT_ROLLOVER

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        class PrepaidCommitExpirationLedgerEntry < MetronomeSDK::BaseModel
          # @!attribute amount
          #
          #   @return [Float]
          required :amount, Float

          # @!attribute segment_id
          #
          #   @return [String]
          required :segment_id, String

          # @!attribute timestamp
          #
          #   @return [Time]
          required :timestamp, Time

          # @!attribute type
          #
          #   @return [Symbol, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Type]
          required :type,
                   enum: -> { MetronomeSDK::Models::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Type }

          # @!parse
          #   # @param amount [Float]
          #   # @param segment_id [String]
          #   # @param timestamp [Time]
          #   # @param type [Symbol, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Type]
          #   #
          #   def initialize(amount:, segment_id:, timestamp:, type:, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case type
          # in :PREPAID_COMMIT_EXPIRATION
          #   # ...
          # end
          # ```
          class Type < MetronomeSDK::Enum
            PREPAID_COMMIT_EXPIRATION = :PREPAID_COMMIT_EXPIRATION

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        class PrepaidCommitCanceledLedgerEntry < MetronomeSDK::BaseModel
          # @!attribute amount
          #
          #   @return [Float]
          required :amount, Float

          # @!attribute invoice_id
          #
          #   @return [String]
          required :invoice_id, String

          # @!attribute segment_id
          #
          #   @return [String]
          required :segment_id, String

          # @!attribute timestamp
          #
          #   @return [Time]
          required :timestamp, Time

          # @!attribute type
          #
          #   @return [Symbol, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::Type]
          required :type, enum: -> { MetronomeSDK::Models::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::Type }

          # @!parse
          #   # @param amount [Float]
          #   # @param invoice_id [String]
          #   # @param segment_id [String]
          #   # @param timestamp [Time]
          #   # @param type [Symbol, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::Type]
          #   #
          #   def initialize(amount:, invoice_id:, segment_id:, timestamp:, type:, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case type
          # in :PREPAID_COMMIT_CANCELED
          #   # ...
          # end
          # ```
          class Type < MetronomeSDK::Enum
            PREPAID_COMMIT_CANCELED = :PREPAID_COMMIT_CANCELED

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        class PrepaidCommitCreditedLedgerEntry < MetronomeSDK::BaseModel
          # @!attribute amount
          #
          #   @return [Float]
          required :amount, Float

          # @!attribute invoice_id
          #
          #   @return [String]
          required :invoice_id, String

          # @!attribute segment_id
          #
          #   @return [String]
          required :segment_id, String

          # @!attribute timestamp
          #
          #   @return [Time]
          required :timestamp, Time

          # @!attribute type
          #
          #   @return [Symbol, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::Type]
          required :type, enum: -> { MetronomeSDK::Models::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::Type }

          # @!parse
          #   # @param amount [Float]
          #   # @param invoice_id [String]
          #   # @param segment_id [String]
          #   # @param timestamp [Time]
          #   # @param type [Symbol, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::Type]
          #   #
          #   def initialize(amount:, invoice_id:, segment_id:, timestamp:, type:, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case type
          # in :PREPAID_COMMIT_CREDITED
          #   # ...
          # end
          # ```
          class Type < MetronomeSDK::Enum
            PREPAID_COMMIT_CREDITED = :PREPAID_COMMIT_CREDITED

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        class PostpaidCommitInitialBalanceLedgerEntry < MetronomeSDK::BaseModel
          # @!attribute amount
          #
          #   @return [Float]
          required :amount, Float

          # @!attribute timestamp
          #
          #   @return [Time]
          required :timestamp, Time

          # @!attribute type
          #
          #   @return [Symbol, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::Type]
          required :type,
                   enum: -> { MetronomeSDK::Models::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::Type }

          # @!parse
          #   # @param amount [Float]
          #   # @param timestamp [Time]
          #   # @param type [Symbol, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::Type]
          #   #
          #   def initialize(amount:, timestamp:, type:, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case type
          # in :POSTPAID_COMMIT_INITIAL_BALANCE
          #   # ...
          # end
          # ```
          class Type < MetronomeSDK::Enum
            POSTPAID_COMMIT_INITIAL_BALANCE = :POSTPAID_COMMIT_INITIAL_BALANCE

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        class PostpaidCommitAutomatedInvoiceDeductionLedgerEntry < MetronomeSDK::BaseModel
          # @!attribute amount
          #
          #   @return [Float]
          required :amount, Float

          # @!attribute invoice_id
          #
          #   @return [String]
          required :invoice_id, String

          # @!attribute segment_id
          #
          #   @return [String]
          required :segment_id, String

          # @!attribute timestamp
          #
          #   @return [Time]
          required :timestamp, Time

          # @!attribute type
          #
          #   @return [Symbol, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Type]
          required :type,
                   enum: -> { MetronomeSDK::Models::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Type }

          # @!parse
          #   # @param amount [Float]
          #   # @param invoice_id [String]
          #   # @param segment_id [String]
          #   # @param timestamp [Time]
          #   # @param type [Symbol, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Type]
          #   #
          #   def initialize(amount:, invoice_id:, segment_id:, timestamp:, type:, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case type
          # in :POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION
          #   # ...
          # end
          # ```
          class Type < MetronomeSDK::Enum
            POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION = :POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        class PostpaidCommitRolloverLedgerEntry < MetronomeSDK::BaseModel
          # @!attribute amount
          #
          #   @return [Float]
          required :amount, Float

          # @!attribute new_contract_id
          #
          #   @return [String]
          required :new_contract_id, String

          # @!attribute segment_id
          #
          #   @return [String]
          required :segment_id, String

          # @!attribute timestamp
          #
          #   @return [Time]
          required :timestamp, Time

          # @!attribute type
          #
          #   @return [Symbol, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Type]
          required :type, enum: -> { MetronomeSDK::Models::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Type }

          # @!parse
          #   # @param amount [Float]
          #   # @param new_contract_id [String]
          #   # @param segment_id [String]
          #   # @param timestamp [Time]
          #   # @param type [Symbol, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Type]
          #   #
          #   def initialize(amount:, new_contract_id:, segment_id:, timestamp:, type:, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case type
          # in :POSTPAID_COMMIT_ROLLOVER
          #   # ...
          # end
          # ```
          class Type < MetronomeSDK::Enum
            POSTPAID_COMMIT_ROLLOVER = :POSTPAID_COMMIT_ROLLOVER

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        class PostpaidCommitTrueupLedgerEntry < MetronomeSDK::BaseModel
          # @!attribute amount
          #
          #   @return [Float]
          required :amount, Float

          # @!attribute invoice_id
          #
          #   @return [String]
          required :invoice_id, String

          # @!attribute timestamp
          #
          #   @return [Time]
          required :timestamp, Time

          # @!attribute type
          #
          #   @return [Symbol, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::Type]
          required :type, enum: -> { MetronomeSDK::Models::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::Type }

          # @!parse
          #   # @param amount [Float]
          #   # @param invoice_id [String]
          #   # @param timestamp [Time]
          #   # @param type [Symbol, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::Type]
          #   #
          #   def initialize(amount:, invoice_id:, timestamp:, type:, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case type
          # in :POSTPAID_COMMIT_TRUEUP
          #   # ...
          # end
          # ```
          class Type < MetronomeSDK::Enum
            POSTPAID_COMMIT_TRUEUP = :POSTPAID_COMMIT_TRUEUP

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        class PrepaidCommitManualLedgerEntry < MetronomeSDK::BaseModel
          # @!attribute amount
          #
          #   @return [Float]
          required :amount, Float

          # @!attribute reason
          #
          #   @return [String]
          required :reason, String

          # @!attribute timestamp
          #
          #   @return [Time]
          required :timestamp, Time

          # @!attribute type
          #
          #   @return [Symbol, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitManualLedgerEntry::Type]
          required :type, enum: -> { MetronomeSDK::Models::Commit::Ledger::PrepaidCommitManualLedgerEntry::Type }

          # @!parse
          #   # @param amount [Float]
          #   # @param reason [String]
          #   # @param timestamp [Time]
          #   # @param type [Symbol, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitManualLedgerEntry::Type]
          #   #
          #   def initialize(amount:, reason:, timestamp:, type:, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case type
          # in :PREPAID_COMMIT_MANUAL
          #   # ...
          # end
          # ```
          class Type < MetronomeSDK::Enum
            PREPAID_COMMIT_MANUAL = :PREPAID_COMMIT_MANUAL

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        class PostpaidCommitManualLedgerEntry < MetronomeSDK::BaseModel
          # @!attribute amount
          #
          #   @return [Float]
          required :amount, Float

          # @!attribute reason
          #
          #   @return [String]
          required :reason, String

          # @!attribute timestamp
          #
          #   @return [Time]
          required :timestamp, Time

          # @!attribute type
          #
          #   @return [Symbol, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitManualLedgerEntry::Type]
          required :type, enum: -> { MetronomeSDK::Models::Commit::Ledger::PostpaidCommitManualLedgerEntry::Type }

          # @!parse
          #   # @param amount [Float]
          #   # @param reason [String]
          #   # @param timestamp [Time]
          #   # @param type [Symbol, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitManualLedgerEntry::Type]
          #   #
          #   def initialize(amount:, reason:, timestamp:, type:, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case type
          # in :POSTPAID_COMMIT_MANUAL
          #   # ...
          # end
          # ```
          class Type < MetronomeSDK::Enum
            POSTPAID_COMMIT_MANUAL = :POSTPAID_COMMIT_MANUAL

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        class PostpaidCommitExpirationLedgerEntry < MetronomeSDK::BaseModel
          # @!attribute amount
          #
          #   @return [Float]
          required :amount, Float

          # @!attribute timestamp
          #
          #   @return [Time]
          required :timestamp, Time

          # @!attribute type
          #
          #   @return [Symbol, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Type]
          required :type,
                   enum: -> { MetronomeSDK::Models::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Type }

          # @!parse
          #   # @param amount [Float]
          #   # @param timestamp [Time]
          #   # @param type [Symbol, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Type]
          #   #
          #   def initialize(amount:, timestamp:, type:, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case type
          # in :POSTPAID_COMMIT_EXPIRATION
          #   # ...
          # end
          # ```
          class Type < MetronomeSDK::Enum
            POSTPAID_COMMIT_EXPIRATION = :POSTPAID_COMMIT_EXPIRATION

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end
      end

      # @abstract
      #
      # @example
      # ```ruby
      # case rate_type
      # in :COMMIT_RATE
      #   # ...
      # in :LIST_RATE
      #   # ...
      # end
      # ```
      class RateType < MetronomeSDK::Enum
        COMMIT_RATE = :COMMIT_RATE
        LIST_RATE = :LIST_RATE

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end

      class RolledOverFrom < MetronomeSDK::BaseModel
        # @!attribute commit_id
        #
        #   @return [String]
        required :commit_id, String

        # @!attribute contract_id
        #
        #   @return [String]
        required :contract_id, String

        # @!parse
        #   # @param commit_id [String]
        #   # @param contract_id [String]
        #   #
        #   def initialize(commit_id:, contract_id:, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
      end
    end
  end
end
