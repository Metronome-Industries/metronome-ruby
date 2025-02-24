# frozen_string_literal: true

module Metronome
  module Models
    class Commit < Metronome::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute product
      #
      #   @return [Metronome::Models::Commit::Product]
      required :product, -> { Metronome::Models::Commit::Product }

      # @!attribute type
      #
      #   @return [Symbol, Metronome::Models::Commit::Type]
      required :type, enum: -> { Metronome::Models::Commit::Type }

      # @!attribute [r] access_schedule
      #   The schedule that the customer will gain access to the credits purposed with
      #     this commit.
      #
      #   @return [Metronome::Models::ScheduleDuration, nil]
      optional :access_schedule, -> { Metronome::Models::ScheduleDuration }

      # @!parse
      #   # @return [Metronome::Models::ScheduleDuration]
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
      optional :applicable_contract_ids, Metronome::ArrayOf[String]

      # @!parse
      #   # @return [Array<String>]
      #   attr_writer :applicable_contract_ids

      # @!attribute [r] applicable_product_ids
      #
      #   @return [Array<String>, nil]
      optional :applicable_product_ids, Metronome::ArrayOf[String]

      # @!parse
      #   # @return [Array<String>]
      #   attr_writer :applicable_product_ids

      # @!attribute [r] applicable_product_tags
      #
      #   @return [Array<String>, nil]
      optional :applicable_product_tags, Metronome::ArrayOf[String]

      # @!parse
      #   # @return [Array<String>]
      #   attr_writer :applicable_product_tags

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
      #   @return [Metronome::Models::Commit::Contract, nil]
      optional :contract, -> { Metronome::Models::Commit::Contract }

      # @!parse
      #   # @return [Metronome::Models::Commit::Contract]
      #   attr_writer :contract

      # @!attribute [r] custom_fields
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :custom_fields, Metronome::HashOf[String]

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
      #   @return [Metronome::Models::Commit::InvoiceContract, nil]
      optional :invoice_contract, -> { Metronome::Models::Commit::InvoiceContract }

      # @!parse
      #   # @return [Metronome::Models::Commit::InvoiceContract]
      #   attr_writer :invoice_contract

      # @!attribute [r] invoice_schedule
      #   The schedule that the customer will be invoiced for this commit.
      #
      #   @return [Metronome::Models::SchedulePointInTime, nil]
      optional :invoice_schedule, -> { Metronome::Models::SchedulePointInTime }

      # @!parse
      #   # @return [Metronome::Models::SchedulePointInTime]
      #   attr_writer :invoice_schedule

      # @!attribute [r] ledger
      #   A list of ordered events that impact the balance of a commit. For example, an
      #     invoice deduction or a rollover.
      #
      #   @return [Array<Metronome::Models::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry, Metronome::Models::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry, Metronome::Models::Commit::Ledger::PrepaidCommitRolloverLedgerEntry, Metronome::Models::Commit::Ledger::PrepaidCommitExpirationLedgerEntry, Metronome::Models::Commit::Ledger::PrepaidCommitCanceledLedgerEntry, Metronome::Models::Commit::Ledger::PrepaidCommitCreditedLedgerEntry, Metronome::Models::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry, Metronome::Models::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry, Metronome::Models::Commit::Ledger::PostpaidCommitRolloverLedgerEntry, Metronome::Models::Commit::Ledger::PostpaidCommitTrueupLedgerEntry, Metronome::Models::Commit::Ledger::PrepaidCommitManualLedgerEntry, Metronome::Models::Commit::Ledger::PostpaidCommitManualLedgerEntry, Metronome::Models::Commit::Ledger::PostpaidCommitExpirationLedgerEntry>, nil]
      optional :ledger, -> { Metronome::ArrayOf[union: Metronome::Models::Commit::Ledger] }

      # @!parse
      #   # @return [Array<Metronome::Models::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry, Metronome::Models::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry, Metronome::Models::Commit::Ledger::PrepaidCommitRolloverLedgerEntry, Metronome::Models::Commit::Ledger::PrepaidCommitExpirationLedgerEntry, Metronome::Models::Commit::Ledger::PrepaidCommitCanceledLedgerEntry, Metronome::Models::Commit::Ledger::PrepaidCommitCreditedLedgerEntry, Metronome::Models::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry, Metronome::Models::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry, Metronome::Models::Commit::Ledger::PostpaidCommitRolloverLedgerEntry, Metronome::Models::Commit::Ledger::PostpaidCommitTrueupLedgerEntry, Metronome::Models::Commit::Ledger::PrepaidCommitManualLedgerEntry, Metronome::Models::Commit::Ledger::PostpaidCommitManualLedgerEntry, Metronome::Models::Commit::Ledger::PostpaidCommitExpirationLedgerEntry>]
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
      #   @return [Symbol, Metronome::Models::Commit::RateType, nil]
      optional :rate_type, enum: -> { Metronome::Models::Commit::RateType }

      # @!parse
      #   # @return [Symbol, Metronome::Models::Commit::RateType]
      #   attr_writer :rate_type

      # @!attribute [r] rolled_over_from
      #
      #   @return [Metronome::Models::Commit::RolledOverFrom, nil]
      optional :rolled_over_from, -> { Metronome::Models::Commit::RolledOverFrom }

      # @!parse
      #   # @return [Metronome::Models::Commit::RolledOverFrom]
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
      #   # @param product [Metronome::Models::Commit::Product]
      #   # @param type [Symbol, Metronome::Models::Commit::Type]
      #   # @param access_schedule [Metronome::Models::ScheduleDuration]
      #   # @param amount [Float]
      #   # @param applicable_contract_ids [Array<String>]
      #   # @param applicable_product_ids [Array<String>]
      #   # @param applicable_product_tags [Array<String>]
      #   # @param balance [Float]
      #   # @param contract [Metronome::Models::Commit::Contract]
      #   # @param custom_fields [Hash{Symbol=>String}]
      #   # @param description [String]
      #   # @param invoice_contract [Metronome::Models::Commit::InvoiceContract]
      #   # @param invoice_schedule [Metronome::Models::SchedulePointInTime]
      #   # @param ledger [Array<Metronome::Models::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry, Metronome::Models::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry, Metronome::Models::Commit::Ledger::PrepaidCommitRolloverLedgerEntry, Metronome::Models::Commit::Ledger::PrepaidCommitExpirationLedgerEntry, Metronome::Models::Commit::Ledger::PrepaidCommitCanceledLedgerEntry, Metronome::Models::Commit::Ledger::PrepaidCommitCreditedLedgerEntry, Metronome::Models::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry, Metronome::Models::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry, Metronome::Models::Commit::Ledger::PostpaidCommitRolloverLedgerEntry, Metronome::Models::Commit::Ledger::PostpaidCommitTrueupLedgerEntry, Metronome::Models::Commit::Ledger::PrepaidCommitManualLedgerEntry, Metronome::Models::Commit::Ledger::PostpaidCommitManualLedgerEntry, Metronome::Models::Commit::Ledger::PostpaidCommitExpirationLedgerEntry>]
      #   # @param name [String]
      #   # @param netsuite_sales_order_id [String]
      #   # @param priority [Float]
      #   # @param rate_type [Symbol, Metronome::Models::Commit::RateType]
      #   # @param rolled_over_from [Metronome::Models::Commit::RolledOverFrom]
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

      # def initialize: (Hash | Metronome::BaseModel) -> void

      class Product < Metronome::BaseModel
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

        # def initialize: (Hash | Metronome::BaseModel) -> void
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
      class Type < Metronome::Enum
        PREPAID = :PREPAID
        POSTPAID = :POSTPAID

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end

      class Contract < Metronome::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!parse
        #   # @param id [String]
        #   #
        #   def initialize(id:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end

      class InvoiceContract < Metronome::BaseModel
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

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end

      # @abstract
      #
      # @example
      # ```ruby
      # case ledger
      # in Metronome::Models::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry
      #   # ...
      # in Metronome::Models::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry
      #   # ...
      # in Metronome::Models::Commit::Ledger::PrepaidCommitRolloverLedgerEntry
      #   # ...
      # in Metronome::Models::Commit::Ledger::PrepaidCommitExpirationLedgerEntry
      #   # ...
      # in Metronome::Models::Commit::Ledger::PrepaidCommitCanceledLedgerEntry
      #   # ...
      # in Metronome::Models::Commit::Ledger::PrepaidCommitCreditedLedgerEntry
      #   # ...
      # in Metronome::Models::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry
      #   # ...
      # in Metronome::Models::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry
      #   # ...
      # in Metronome::Models::Commit::Ledger::PostpaidCommitRolloverLedgerEntry
      #   # ...
      # in Metronome::Models::Commit::Ledger::PostpaidCommitTrueupLedgerEntry
      #   # ...
      # in Metronome::Models::Commit::Ledger::PrepaidCommitManualLedgerEntry
      #   # ...
      # in Metronome::Models::Commit::Ledger::PostpaidCommitManualLedgerEntry
      #   # ...
      # in Metronome::Models::Commit::Ledger::PostpaidCommitExpirationLedgerEntry
      #   # ...
      # end
      # ```
      class Ledger < Metronome::Union
        variant -> { Metronome::Models::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry }

        variant -> { Metronome::Models::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry }

        variant -> { Metronome::Models::Commit::Ledger::PrepaidCommitRolloverLedgerEntry }

        variant -> { Metronome::Models::Commit::Ledger::PrepaidCommitExpirationLedgerEntry }

        variant -> { Metronome::Models::Commit::Ledger::PrepaidCommitCanceledLedgerEntry }

        variant -> { Metronome::Models::Commit::Ledger::PrepaidCommitCreditedLedgerEntry }

        variant -> { Metronome::Models::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry }

        variant -> { Metronome::Models::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry }

        variant -> { Metronome::Models::Commit::Ledger::PostpaidCommitRolloverLedgerEntry }

        variant -> { Metronome::Models::Commit::Ledger::PostpaidCommitTrueupLedgerEntry }

        variant -> { Metronome::Models::Commit::Ledger::PrepaidCommitManualLedgerEntry }

        variant -> { Metronome::Models::Commit::Ledger::PostpaidCommitManualLedgerEntry }

        variant -> { Metronome::Models::Commit::Ledger::PostpaidCommitExpirationLedgerEntry }

        class PrepaidCommitSegmentStartLedgerEntry < Metronome::BaseModel
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
          #   @return [Symbol, Metronome::Models::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Type]
          required :type, enum: -> { Metronome::Models::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Type }

          # @!parse
          #   # @param amount [Float]
          #   # @param segment_id [String]
          #   # @param timestamp [Time]
          #   # @param type [Symbol, Metronome::Models::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Type]
          #   #
          #   def initialize(amount:, segment_id:, timestamp:, type:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case type
          # in :PREPAID_COMMIT_SEGMENT_START
          #   # ...
          # end
          # ```
          class Type < Metronome::Enum
            PREPAID_COMMIT_SEGMENT_START = :PREPAID_COMMIT_SEGMENT_START

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        class PrepaidCommitAutomatedInvoiceDeductionLedgerEntry < Metronome::BaseModel
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
          #   @return [Symbol, Metronome::Models::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Type]
          required :type,
                   enum: -> { Metronome::Models::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Type }

          # @!parse
          #   # @param amount [Float]
          #   # @param invoice_id [String]
          #   # @param segment_id [String]
          #   # @param timestamp [Time]
          #   # @param type [Symbol, Metronome::Models::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Type]
          #   #
          #   def initialize(amount:, invoice_id:, segment_id:, timestamp:, type:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case type
          # in :PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION
          #   # ...
          # end
          # ```
          class Type < Metronome::Enum
            PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION = :PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        class PrepaidCommitRolloverLedgerEntry < Metronome::BaseModel
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
          #   @return [Symbol, Metronome::Models::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::Type]
          required :type, enum: -> { Metronome::Models::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::Type }

          # @!parse
          #   # @param amount [Float]
          #   # @param new_contract_id [String]
          #   # @param segment_id [String]
          #   # @param timestamp [Time]
          #   # @param type [Symbol, Metronome::Models::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::Type]
          #   #
          #   def initialize(amount:, new_contract_id:, segment_id:, timestamp:, type:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case type
          # in :PREPAID_COMMIT_ROLLOVER
          #   # ...
          # end
          # ```
          class Type < Metronome::Enum
            PREPAID_COMMIT_ROLLOVER = :PREPAID_COMMIT_ROLLOVER

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        class PrepaidCommitExpirationLedgerEntry < Metronome::BaseModel
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
          #   @return [Symbol, Metronome::Models::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Type]
          required :type, enum: -> { Metronome::Models::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Type }

          # @!parse
          #   # @param amount [Float]
          #   # @param segment_id [String]
          #   # @param timestamp [Time]
          #   # @param type [Symbol, Metronome::Models::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Type]
          #   #
          #   def initialize(amount:, segment_id:, timestamp:, type:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case type
          # in :PREPAID_COMMIT_EXPIRATION
          #   # ...
          # end
          # ```
          class Type < Metronome::Enum
            PREPAID_COMMIT_EXPIRATION = :PREPAID_COMMIT_EXPIRATION

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        class PrepaidCommitCanceledLedgerEntry < Metronome::BaseModel
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
          #   @return [Symbol, Metronome::Models::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::Type]
          required :type, enum: -> { Metronome::Models::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::Type }

          # @!parse
          #   # @param amount [Float]
          #   # @param invoice_id [String]
          #   # @param segment_id [String]
          #   # @param timestamp [Time]
          #   # @param type [Symbol, Metronome::Models::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::Type]
          #   #
          #   def initialize(amount:, invoice_id:, segment_id:, timestamp:, type:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case type
          # in :PREPAID_COMMIT_CANCELED
          #   # ...
          # end
          # ```
          class Type < Metronome::Enum
            PREPAID_COMMIT_CANCELED = :PREPAID_COMMIT_CANCELED

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        class PrepaidCommitCreditedLedgerEntry < Metronome::BaseModel
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
          #   @return [Symbol, Metronome::Models::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::Type]
          required :type, enum: -> { Metronome::Models::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::Type }

          # @!parse
          #   # @param amount [Float]
          #   # @param invoice_id [String]
          #   # @param segment_id [String]
          #   # @param timestamp [Time]
          #   # @param type [Symbol, Metronome::Models::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::Type]
          #   #
          #   def initialize(amount:, invoice_id:, segment_id:, timestamp:, type:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case type
          # in :PREPAID_COMMIT_CREDITED
          #   # ...
          # end
          # ```
          class Type < Metronome::Enum
            PREPAID_COMMIT_CREDITED = :PREPAID_COMMIT_CREDITED

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        class PostpaidCommitInitialBalanceLedgerEntry < Metronome::BaseModel
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
          #   @return [Symbol, Metronome::Models::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::Type]
          required :type,
                   enum: -> { Metronome::Models::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::Type }

          # @!parse
          #   # @param amount [Float]
          #   # @param timestamp [Time]
          #   # @param type [Symbol, Metronome::Models::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::Type]
          #   #
          #   def initialize(amount:, timestamp:, type:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case type
          # in :POSTPAID_COMMIT_INITIAL_BALANCE
          #   # ...
          # end
          # ```
          class Type < Metronome::Enum
            POSTPAID_COMMIT_INITIAL_BALANCE = :POSTPAID_COMMIT_INITIAL_BALANCE

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        class PostpaidCommitAutomatedInvoiceDeductionLedgerEntry < Metronome::BaseModel
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
          #   @return [Symbol, Metronome::Models::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Type]
          required :type,
                   enum: -> { Metronome::Models::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Type }

          # @!parse
          #   # @param amount [Float]
          #   # @param invoice_id [String]
          #   # @param segment_id [String]
          #   # @param timestamp [Time]
          #   # @param type [Symbol, Metronome::Models::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Type]
          #   #
          #   def initialize(amount:, invoice_id:, segment_id:, timestamp:, type:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case type
          # in :POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION
          #   # ...
          # end
          # ```
          class Type < Metronome::Enum
            POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION = :POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        class PostpaidCommitRolloverLedgerEntry < Metronome::BaseModel
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
          #   @return [Symbol, Metronome::Models::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Type]
          required :type, enum: -> { Metronome::Models::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Type }

          # @!parse
          #   # @param amount [Float]
          #   # @param new_contract_id [String]
          #   # @param segment_id [String]
          #   # @param timestamp [Time]
          #   # @param type [Symbol, Metronome::Models::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Type]
          #   #
          #   def initialize(amount:, new_contract_id:, segment_id:, timestamp:, type:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case type
          # in :POSTPAID_COMMIT_ROLLOVER
          #   # ...
          # end
          # ```
          class Type < Metronome::Enum
            POSTPAID_COMMIT_ROLLOVER = :POSTPAID_COMMIT_ROLLOVER

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        class PostpaidCommitTrueupLedgerEntry < Metronome::BaseModel
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
          #   @return [Symbol, Metronome::Models::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::Type]
          required :type, enum: -> { Metronome::Models::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::Type }

          # @!parse
          #   # @param amount [Float]
          #   # @param invoice_id [String]
          #   # @param timestamp [Time]
          #   # @param type [Symbol, Metronome::Models::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::Type]
          #   #
          #   def initialize(amount:, invoice_id:, timestamp:, type:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case type
          # in :POSTPAID_COMMIT_TRUEUP
          #   # ...
          # end
          # ```
          class Type < Metronome::Enum
            POSTPAID_COMMIT_TRUEUP = :POSTPAID_COMMIT_TRUEUP

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        class PrepaidCommitManualLedgerEntry < Metronome::BaseModel
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
          #   @return [Symbol, Metronome::Models::Commit::Ledger::PrepaidCommitManualLedgerEntry::Type]
          required :type, enum: -> { Metronome::Models::Commit::Ledger::PrepaidCommitManualLedgerEntry::Type }

          # @!parse
          #   # @param amount [Float]
          #   # @param reason [String]
          #   # @param timestamp [Time]
          #   # @param type [Symbol, Metronome::Models::Commit::Ledger::PrepaidCommitManualLedgerEntry::Type]
          #   #
          #   def initialize(amount:, reason:, timestamp:, type:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case type
          # in :PREPAID_COMMIT_MANUAL
          #   # ...
          # end
          # ```
          class Type < Metronome::Enum
            PREPAID_COMMIT_MANUAL = :PREPAID_COMMIT_MANUAL

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        class PostpaidCommitManualLedgerEntry < Metronome::BaseModel
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
          #   @return [Symbol, Metronome::Models::Commit::Ledger::PostpaidCommitManualLedgerEntry::Type]
          required :type, enum: -> { Metronome::Models::Commit::Ledger::PostpaidCommitManualLedgerEntry::Type }

          # @!parse
          #   # @param amount [Float]
          #   # @param reason [String]
          #   # @param timestamp [Time]
          #   # @param type [Symbol, Metronome::Models::Commit::Ledger::PostpaidCommitManualLedgerEntry::Type]
          #   #
          #   def initialize(amount:, reason:, timestamp:, type:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case type
          # in :POSTPAID_COMMIT_MANUAL
          #   # ...
          # end
          # ```
          class Type < Metronome::Enum
            POSTPAID_COMMIT_MANUAL = :POSTPAID_COMMIT_MANUAL

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        class PostpaidCommitExpirationLedgerEntry < Metronome::BaseModel
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
          #   @return [Symbol, Metronome::Models::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Type]
          required :type, enum: -> { Metronome::Models::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Type }

          # @!parse
          #   # @param amount [Float]
          #   # @param timestamp [Time]
          #   # @param type [Symbol, Metronome::Models::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Type]
          #   #
          #   def initialize(amount:, timestamp:, type:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case type
          # in :POSTPAID_COMMIT_EXPIRATION
          #   # ...
          # end
          # ```
          class Type < Metronome::Enum
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
      class RateType < Metronome::Enum
        COMMIT_RATE = :COMMIT_RATE
        LIST_RATE = :LIST_RATE

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end

      class RolledOverFrom < Metronome::BaseModel
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

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end
