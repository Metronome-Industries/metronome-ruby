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

      # @!attribute access_schedule
      #   The schedule that the customer will gain access to the credits purposed with this commit.
      #
      #   @return [Metronome::Models::ScheduleDuration]
      optional :access_schedule, -> { Metronome::Models::ScheduleDuration }

      # @!attribute amount
      #   (DEPRECATED) Use access_schedule + invoice_schedule instead.
      #
      #   @return [Float]
      optional :amount, Float

      # @!attribute applicable_contract_ids
      #
      #   @return [Array<String>]
      optional :applicable_contract_ids, Metronome::ArrayOf[String]

      # @!attribute applicable_product_ids
      #
      #   @return [Array<String>]
      optional :applicable_product_ids, Metronome::ArrayOf[String]

      # @!attribute applicable_product_tags
      #
      #   @return [Array<String>]
      optional :applicable_product_tags, Metronome::ArrayOf[String]

      # @!attribute contract
      #
      #   @return [Metronome::Models::Commit::Contract]
      optional :contract, -> { Metronome::Models::Commit::Contract }

      # @!attribute custom_fields
      #
      #   @return [Hash{Symbol => String}]
      optional :custom_fields, Metronome::HashOf[String]

      # @!attribute description
      #
      #   @return [String]
      optional :description, String

      # @!attribute invoice_contract
      #   The contract that this commit will be billed on.
      #
      #   @return [Metronome::Models::Commit::InvoiceContract]
      optional :invoice_contract, -> { Metronome::Models::Commit::InvoiceContract }

      # @!attribute invoice_schedule
      #   The schedule that the customer will be invoiced for this commit.
      #
      #   @return [Metronome::Models::SchedulePointInTime]
      optional :invoice_schedule, -> { Metronome::Models::SchedulePointInTime }

      # @!attribute ledger
      #   A list of ordered events that impact the balance of a commit. For example, an invoice deduction or a rollover.
      #
      #   @return [Array<Metronome::Models::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry, Metronome::Models::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry, Metronome::Models::Commit::Ledger::PrepaidCommitRolloverLedgerEntry, Metronome::Models::Commit::Ledger::PrepaidCommitExpirationLedgerEntry, Metronome::Models::Commit::Ledger::PrepaidCommitCanceledLedgerEntry, Metronome::Models::Commit::Ledger::PrepaidCommitCreditedLedgerEntry, Metronome::Models::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry, Metronome::Models::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry, Metronome::Models::Commit::Ledger::PostpaidCommitRolloverLedgerEntry, Metronome::Models::Commit::Ledger::PostpaidCommitTrueupLedgerEntry, Metronome::Models::Commit::Ledger::PrepaidCommitManualLedgerEntry, Metronome::Models::Commit::Ledger::PostpaidCommitManualLedgerEntry, Metronome::Models::Commit::Ledger::PostpaidCommitExpirationLedgerEntry>]
      optional :ledger, Metronome::ArrayOf[union: -> { Metronome::Models::Commit::Ledger }]

      # @!attribute name
      #
      #   @return [String]
      optional :name, String

      # @!attribute netsuite_sales_order_id
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [String]
      optional :netsuite_sales_order_id, String

      # @!attribute priority
      #   If multiple credits or commits are applicable, the one with the lower priority will apply first.
      #
      #   @return [Float]
      optional :priority, Float

      # @!attribute rate_type
      #
      #   @return [Symbol, Metronome::Models::Commit::RateType]
      optional :rate_type, enum: -> { Metronome::Models::Commit::RateType }

      # @!attribute rolled_over_from
      #
      #   @return [Metronome::Models::Commit::RolledOverFrom]
      optional :rolled_over_from, -> { Metronome::Models::Commit::RolledOverFrom }

      # @!attribute rollover_fraction
      #
      #   @return [Float]
      optional :rollover_fraction, Float

      # @!attribute salesforce_opportunity_id
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [String]
      optional :salesforce_opportunity_id, String

      # @!attribute uniqueness_key
      #   Prevents the creation of duplicates. If a request to create a commit or credit is made with a uniqueness key that was previously used to create a commit or credit, a new record will not be created and the request will fail with a 409 error.
      #
      #   @return [String]
      optional :uniqueness_key, String

      # @!parse
      #   # @param id [String]
      #   #
      #   # @param product [Metronome::Models::Commit::Product]
      #   #
      #   # @param type [String]
      #   #
      #   # @param access_schedule [Metronome::Models::ScheduleDuration, nil] The schedule that the customer will gain access to the credits purposed with
      #   #   this commit.
      #   #
      #   # @param amount [Float, nil] (DEPRECATED) Use access_schedule + invoice_schedule instead.
      #   #
      #   # @param applicable_contract_ids [Array<String>, nil]
      #   #
      #   # @param applicable_product_ids [Array<String>, nil]
      #   #
      #   # @param applicable_product_tags [Array<String>, nil]
      #   #
      #   # @param contract [Metronome::Models::Commit::Contract, nil]
      #   #
      #   # @param custom_fields [Hash{Symbol => String}, nil]
      #   #
      #   # @param description [String, nil]
      #   #
      #   # @param invoice_contract [Metronome::Models::Commit::InvoiceContract, nil] The contract that this commit will be billed on.
      #   #
      #   # @param invoice_schedule [Metronome::Models::SchedulePointInTime, nil] The schedule that the customer will be invoiced for this commit.
      #   #
      #   # @param ledger [Array<Metronome::Models::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry, Metronome::Models::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry, Metronome::Models::Commit::Ledger::PrepaidCommitRolloverLedgerEntry, Metronome::Models::Commit::Ledger::PrepaidCommitExpirationLedgerEntry, Metronome::Models::Commit::Ledger::PrepaidCommitCanceledLedgerEntry, Metronome::Models::Commit::Ledger::PrepaidCommitCreditedLedgerEntry, Metronome::Models::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry, Metronome::Models::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry, Metronome::Models::Commit::Ledger::PostpaidCommitRolloverLedgerEntry, Metronome::Models::Commit::Ledger::PostpaidCommitTrueupLedgerEntry, Metronome::Models::Commit::Ledger::PrepaidCommitManualLedgerEntry, Metronome::Models::Commit::Ledger::PostpaidCommitManualLedgerEntry, Metronome::Models::Commit::Ledger::PostpaidCommitExpirationLedgerEntry>, nil] A list of ordered events that impact the balance of a commit. For example, an
      #   #   invoice deduction or a rollover.
      #   #
      #   # @param name [String, nil]
      #   #
      #   # @param netsuite_sales_order_id [String, nil] This field's availability is dependent on your client's configuration.
      #   #
      #   # @param priority [Float, nil] If multiple credits or commits are applicable, the one with the lower priority
      #   #   will apply first.
      #   #
      #   # @param rate_type [String, nil]
      #   #
      #   # @param rolled_over_from [Metronome::Models::Commit::RolledOverFrom, nil]
      #   #
      #   # @param rollover_fraction [Float, nil]
      #   #
      #   # @param salesforce_opportunity_id [String, nil] This field's availability is dependent on your client's configuration.
      #   #
      #   # @param uniqueness_key [String, nil] Prevents the creation of duplicates. If a request to create a commit or credit
      #   #   is made with a uniqueness key that was previously used to create a commit or
      #   #   credit, a new record will not be created and the request will fail with a 409
      #   #   error.
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

      # @example
      #
      # ```ruby
      # case enum
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

      # @example
      #
      # ```ruby
      # case union
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
          required :type,
                   enum: -> {
                     Metronome::Models::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Type
                   }

          # @!parse
          #   # @param amount [Float]
          #   # @param segment_id [String]
          #   # @param timestamp [String]
          #   # @param type [String]
          #   #
          #   def initialize(amount:, segment_id:, timestamp:, type:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @example
          #
          # ```ruby
          # case enum
          # in :PREPAID_COMMIT_SEGMENT_START
          #   # ...
          # end
          # ```
          class Type < Metronome::Enum
            PREPAID_COMMIT_SEGMENT_START = :PREPAID_COMMIT_SEGMENT_START

            finalize!
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
                   enum: -> {
                     Metronome::Models::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Type
                   }

          # @!parse
          #   # @param amount [Float]
          #   # @param invoice_id [String]
          #   # @param segment_id [String]
          #   # @param timestamp [String]
          #   # @param type [String]
          #   #
          #   def initialize(amount:, invoice_id:, segment_id:, timestamp:, type:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @example
          #
          # ```ruby
          # case enum
          # in :PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION
          #   # ...
          # end
          # ```
          class Type < Metronome::Enum
            PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION = :PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION

            finalize!
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
          required :type,
                   enum: -> {
                     Metronome::Models::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::Type
                   }

          # @!parse
          #   # @param amount [Float]
          #   # @param new_contract_id [String]
          #   # @param segment_id [String]
          #   # @param timestamp [String]
          #   # @param type [String]
          #   #
          #   def initialize(amount:, new_contract_id:, segment_id:, timestamp:, type:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @example
          #
          # ```ruby
          # case enum
          # in :PREPAID_COMMIT_ROLLOVER
          #   # ...
          # end
          # ```
          class Type < Metronome::Enum
            PREPAID_COMMIT_ROLLOVER = :PREPAID_COMMIT_ROLLOVER

            finalize!
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
          required :type,
                   enum: -> {
                     Metronome::Models::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Type
                   }

          # @!parse
          #   # @param amount [Float]
          #   # @param segment_id [String]
          #   # @param timestamp [String]
          #   # @param type [String]
          #   #
          #   def initialize(amount:, segment_id:, timestamp:, type:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @example
          #
          # ```ruby
          # case enum
          # in :PREPAID_COMMIT_EXPIRATION
          #   # ...
          # end
          # ```
          class Type < Metronome::Enum
            PREPAID_COMMIT_EXPIRATION = :PREPAID_COMMIT_EXPIRATION

            finalize!
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
          required :type,
                   enum: -> {
                     Metronome::Models::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::Type
                   }

          # @!parse
          #   # @param amount [Float]
          #   # @param invoice_id [String]
          #   # @param segment_id [String]
          #   # @param timestamp [String]
          #   # @param type [String]
          #   #
          #   def initialize(amount:, invoice_id:, segment_id:, timestamp:, type:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @example
          #
          # ```ruby
          # case enum
          # in :PREPAID_COMMIT_CANCELED
          #   # ...
          # end
          # ```
          class Type < Metronome::Enum
            PREPAID_COMMIT_CANCELED = :PREPAID_COMMIT_CANCELED

            finalize!
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
          required :type,
                   enum: -> {
                     Metronome::Models::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::Type
                   }

          # @!parse
          #   # @param amount [Float]
          #   # @param invoice_id [String]
          #   # @param segment_id [String]
          #   # @param timestamp [String]
          #   # @param type [String]
          #   #
          #   def initialize(amount:, invoice_id:, segment_id:, timestamp:, type:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @example
          #
          # ```ruby
          # case enum
          # in :PREPAID_COMMIT_CREDITED
          #   # ...
          # end
          # ```
          class Type < Metronome::Enum
            PREPAID_COMMIT_CREDITED = :PREPAID_COMMIT_CREDITED

            finalize!
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
                   enum: -> {
                     Metronome::Models::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::Type
                   }

          # @!parse
          #   # @param amount [Float]
          #   # @param timestamp [String]
          #   # @param type [String]
          #   #
          #   def initialize(amount:, timestamp:, type:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @example
          #
          # ```ruby
          # case enum
          # in :POSTPAID_COMMIT_INITIAL_BALANCE
          #   # ...
          # end
          # ```
          class Type < Metronome::Enum
            POSTPAID_COMMIT_INITIAL_BALANCE = :POSTPAID_COMMIT_INITIAL_BALANCE

            finalize!
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
                   enum: -> {
                     Metronome::Models::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Type
                   }

          # @!parse
          #   # @param amount [Float]
          #   # @param invoice_id [String]
          #   # @param segment_id [String]
          #   # @param timestamp [String]
          #   # @param type [String]
          #   #
          #   def initialize(amount:, invoice_id:, segment_id:, timestamp:, type:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @example
          #
          # ```ruby
          # case enum
          # in :POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION
          #   # ...
          # end
          # ```
          class Type < Metronome::Enum
            POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION = :POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION

            finalize!
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
          required :type,
                   enum: -> {
                     Metronome::Models::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Type
                   }

          # @!parse
          #   # @param amount [Float]
          #   # @param new_contract_id [String]
          #   # @param segment_id [String]
          #   # @param timestamp [String]
          #   # @param type [String]
          #   #
          #   def initialize(amount:, new_contract_id:, segment_id:, timestamp:, type:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @example
          #
          # ```ruby
          # case enum
          # in :POSTPAID_COMMIT_ROLLOVER
          #   # ...
          # end
          # ```
          class Type < Metronome::Enum
            POSTPAID_COMMIT_ROLLOVER = :POSTPAID_COMMIT_ROLLOVER

            finalize!
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
          required :type,
                   enum: -> {
                     Metronome::Models::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::Type
                   }

          # @!parse
          #   # @param amount [Float]
          #   # @param invoice_id [String]
          #   # @param timestamp [String]
          #   # @param type [String]
          #   #
          #   def initialize(amount:, invoice_id:, timestamp:, type:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @example
          #
          # ```ruby
          # case enum
          # in :POSTPAID_COMMIT_TRUEUP
          #   # ...
          # end
          # ```
          class Type < Metronome::Enum
            POSTPAID_COMMIT_TRUEUP = :POSTPAID_COMMIT_TRUEUP

            finalize!
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
          #   # @param timestamp [String]
          #   # @param type [String]
          #   #
          #   def initialize(amount:, reason:, timestamp:, type:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @example
          #
          # ```ruby
          # case enum
          # in :PREPAID_COMMIT_MANUAL
          #   # ...
          # end
          # ```
          class Type < Metronome::Enum
            PREPAID_COMMIT_MANUAL = :PREPAID_COMMIT_MANUAL

            finalize!
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
          required :type,
                   enum: -> {
                     Metronome::Models::Commit::Ledger::PostpaidCommitManualLedgerEntry::Type
                   }

          # @!parse
          #   # @param amount [Float]
          #   # @param reason [String]
          #   # @param timestamp [String]
          #   # @param type [String]
          #   #
          #   def initialize(amount:, reason:, timestamp:, type:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @example
          #
          # ```ruby
          # case enum
          # in :POSTPAID_COMMIT_MANUAL
          #   # ...
          # end
          # ```
          class Type < Metronome::Enum
            POSTPAID_COMMIT_MANUAL = :POSTPAID_COMMIT_MANUAL

            finalize!
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
          required :type,
                   enum: -> {
                     Metronome::Models::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Type
                   }

          # @!parse
          #   # @param amount [Float]
          #   # @param timestamp [String]
          #   # @param type [String]
          #   #
          #   def initialize(amount:, timestamp:, type:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void

          # @example
          #
          # ```ruby
          # case enum
          # in :POSTPAID_COMMIT_EXPIRATION
          #   # ...
          # end
          # ```
          class Type < Metronome::Enum
            POSTPAID_COMMIT_EXPIRATION = :POSTPAID_COMMIT_EXPIRATION

            finalize!
          end
        end
      end

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
        required :type,
                 enum: -> {
                   Metronome::Models::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Type
                 }

        # @!parse
        #   # @param amount [Float]
        #   # @param segment_id [String]
        #   # @param timestamp [String]
        #   # @param type [String]
        #   #
        #   def initialize(amount:, segment_id:, timestamp:, type:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case enum
        # in :PREPAID_COMMIT_SEGMENT_START
        #   # ...
        # end
        # ```
        class Type < Metronome::Enum
          PREPAID_COMMIT_SEGMENT_START = :PREPAID_COMMIT_SEGMENT_START

          finalize!
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
                 enum: -> {
                   Metronome::Models::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Type
                 }

        # @!parse
        #   # @param amount [Float]
        #   # @param invoice_id [String]
        #   # @param segment_id [String]
        #   # @param timestamp [String]
        #   # @param type [String]
        #   #
        #   def initialize(amount:, invoice_id:, segment_id:, timestamp:, type:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case enum
        # in :PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION
        #   # ...
        # end
        # ```
        class Type < Metronome::Enum
          PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION = :PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION

          finalize!
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
        #   # @param timestamp [String]
        #   # @param type [String]
        #   #
        #   def initialize(amount:, new_contract_id:, segment_id:, timestamp:, type:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case enum
        # in :PREPAID_COMMIT_ROLLOVER
        #   # ...
        # end
        # ```
        class Type < Metronome::Enum
          PREPAID_COMMIT_ROLLOVER = :PREPAID_COMMIT_ROLLOVER

          finalize!
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
        required :type,
                 enum: -> {
                   Metronome::Models::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Type
                 }

        # @!parse
        #   # @param amount [Float]
        #   # @param segment_id [String]
        #   # @param timestamp [String]
        #   # @param type [String]
        #   #
        #   def initialize(amount:, segment_id:, timestamp:, type:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case enum
        # in :PREPAID_COMMIT_EXPIRATION
        #   # ...
        # end
        # ```
        class Type < Metronome::Enum
          PREPAID_COMMIT_EXPIRATION = :PREPAID_COMMIT_EXPIRATION

          finalize!
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
        #   # @param timestamp [String]
        #   # @param type [String]
        #   #
        #   def initialize(amount:, invoice_id:, segment_id:, timestamp:, type:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case enum
        # in :PREPAID_COMMIT_CANCELED
        #   # ...
        # end
        # ```
        class Type < Metronome::Enum
          PREPAID_COMMIT_CANCELED = :PREPAID_COMMIT_CANCELED

          finalize!
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
        #   # @param timestamp [String]
        #   # @param type [String]
        #   #
        #   def initialize(amount:, invoice_id:, segment_id:, timestamp:, type:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case enum
        # in :PREPAID_COMMIT_CREDITED
        #   # ...
        # end
        # ```
        class Type < Metronome::Enum
          PREPAID_COMMIT_CREDITED = :PREPAID_COMMIT_CREDITED

          finalize!
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
        #   # @param timestamp [String]
        #   # @param type [String]
        #   #
        #   def initialize(amount:, timestamp:, type:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case enum
        # in :POSTPAID_COMMIT_INITIAL_BALANCE
        #   # ...
        # end
        # ```
        class Type < Metronome::Enum
          POSTPAID_COMMIT_INITIAL_BALANCE = :POSTPAID_COMMIT_INITIAL_BALANCE

          finalize!
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
                 enum: -> {
                   Metronome::Models::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Type
                 }

        # @!parse
        #   # @param amount [Float]
        #   # @param invoice_id [String]
        #   # @param segment_id [String]
        #   # @param timestamp [String]
        #   # @param type [String]
        #   #
        #   def initialize(amount:, invoice_id:, segment_id:, timestamp:, type:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case enum
        # in :POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION
        #   # ...
        # end
        # ```
        class Type < Metronome::Enum
          POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION = :POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION

          finalize!
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
        required :type,
                 enum: -> {
                   Metronome::Models::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Type
                 }

        # @!parse
        #   # @param amount [Float]
        #   # @param new_contract_id [String]
        #   # @param segment_id [String]
        #   # @param timestamp [String]
        #   # @param type [String]
        #   #
        #   def initialize(amount:, new_contract_id:, segment_id:, timestamp:, type:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case enum
        # in :POSTPAID_COMMIT_ROLLOVER
        #   # ...
        # end
        # ```
        class Type < Metronome::Enum
          POSTPAID_COMMIT_ROLLOVER = :POSTPAID_COMMIT_ROLLOVER

          finalize!
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
        #   # @param timestamp [String]
        #   # @param type [String]
        #   #
        #   def initialize(amount:, invoice_id:, timestamp:, type:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case enum
        # in :POSTPAID_COMMIT_TRUEUP
        #   # ...
        # end
        # ```
        class Type < Metronome::Enum
          POSTPAID_COMMIT_TRUEUP = :POSTPAID_COMMIT_TRUEUP

          finalize!
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
        #   # @param timestamp [String]
        #   # @param type [String]
        #   #
        #   def initialize(amount:, reason:, timestamp:, type:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case enum
        # in :PREPAID_COMMIT_MANUAL
        #   # ...
        # end
        # ```
        class Type < Metronome::Enum
          PREPAID_COMMIT_MANUAL = :PREPAID_COMMIT_MANUAL

          finalize!
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
        #   # @param timestamp [String]
        #   # @param type [String]
        #   #
        #   def initialize(amount:, reason:, timestamp:, type:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case enum
        # in :POSTPAID_COMMIT_MANUAL
        #   # ...
        # end
        # ```
        class Type < Metronome::Enum
          POSTPAID_COMMIT_MANUAL = :POSTPAID_COMMIT_MANUAL

          finalize!
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
        required :type,
                 enum: -> {
                   Metronome::Models::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Type
                 }

        # @!parse
        #   # @param amount [Float]
        #   # @param timestamp [String]
        #   # @param type [String]
        #   #
        #   def initialize(amount:, timestamp:, type:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case enum
        # in :POSTPAID_COMMIT_EXPIRATION
        #   # ...
        # end
        # ```
        class Type < Metronome::Enum
          POSTPAID_COMMIT_EXPIRATION = :POSTPAID_COMMIT_EXPIRATION

          finalize!
        end
      end

      # @example
      #
      # ```ruby
      # case enum
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
