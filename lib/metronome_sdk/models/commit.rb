# frozen_string_literal: true

module MetronomeSDK
  module Models
    class Commit < MetronomeSDK::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute product
      #
      #   @return [MetronomeSDK::Commit::Product]
      required :product, -> { MetronomeSDK::Commit::Product }

      # @!attribute type
      #
      #   @return [Symbol, MetronomeSDK::Commit::Type]
      required :type, enum: -> { MetronomeSDK::Commit::Type }

      # @!attribute access_schedule
      #   The schedule that the customer will gain access to the credits purposed with
      #   this commit.
      #
      #   @return [MetronomeSDK::ScheduleDuration, nil]
      optional :access_schedule, -> { MetronomeSDK::ScheduleDuration }

      # @!attribute amount
      #   (DEPRECATED) Use access_schedule + invoice_schedule instead.
      #
      #   @return [Float, nil]
      optional :amount, Float

      # @!attribute applicable_contract_ids
      #
      #   @return [Array<String>, nil]
      optional :applicable_contract_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

      # @!attribute applicable_product_ids
      #
      #   @return [Array<String>, nil]
      optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

      # @!attribute applicable_product_tags
      #
      #   @return [Array<String>, nil]
      optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

      # @!attribute archived_at
      #   RFC 3339 timestamp indicating when the commit was archived. If not provided, the
      #   commit is not archived.
      #
      #   @return [Time, nil]
      optional :archived_at, Time

      # @!attribute balance
      #   The current balance of the credit or commit. This balance reflects the amount of
      #   credit or commit that the customer has access to use at this moment - thus,
      #   expired and upcoming credit or commit segments contribute 0 to the balance. The
      #   balance will match the sum of all ledger entries with the exception of the case
      #   where the sum of negative manual ledger entries exceeds the positive amount
      #   remaining on the credit or commit - in that case, the balance will be 0. All
      #   manual ledger entries associated with active credit or commit segments are
      #   included in the balance, including future-dated manual ledger entries.
      #
      #   @return [Float, nil]
      optional :balance, Float

      # @!attribute contract
      #
      #   @return [MetronomeSDK::Commit::Contract, nil]
      optional :contract, -> { MetronomeSDK::Commit::Contract }

      # @!attribute custom_fields
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

      # @!attribute description
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute invoice_contract
      #   The contract that this commit will be billed on.
      #
      #   @return [MetronomeSDK::Commit::InvoiceContract, nil]
      optional :invoice_contract, -> { MetronomeSDK::Commit::InvoiceContract }

      # @!attribute invoice_schedule
      #   The schedule that the customer will be invoiced for this commit.
      #
      #   @return [MetronomeSDK::SchedulePointInTime, nil]
      optional :invoice_schedule, -> { MetronomeSDK::SchedulePointInTime }

      # @!attribute ledger
      #   A list of ordered events that impact the balance of a commit. For example, an
      #   invoice deduction or a rollover.
      #
      #   @return [Array<MetronomeSDK::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry, MetronomeSDK::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Commit::Ledger::PrepaidCommitRolloverLedgerEntry, MetronomeSDK::Commit::Ledger::PrepaidCommitExpirationLedgerEntry, MetronomeSDK::Commit::Ledger::PrepaidCommitCanceledLedgerEntry, MetronomeSDK::Commit::Ledger::PrepaidCommitCreditedLedgerEntry, MetronomeSDK::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry, MetronomeSDK::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Commit::Ledger::PostpaidCommitRolloverLedgerEntry, MetronomeSDK::Commit::Ledger::PostpaidCommitTrueupLedgerEntry, MetronomeSDK::Commit::Ledger::PrepaidCommitManualLedgerEntry, MetronomeSDK::Commit::Ledger::PostpaidCommitManualLedgerEntry, MetronomeSDK::Commit::Ledger::PostpaidCommitExpirationLedgerEntry>, nil]
      optional :ledger, -> { MetronomeSDK::Internal::Type::ArrayOf[union: MetronomeSDK::Commit::Ledger] }

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute netsuite_sales_order_id
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [String, nil]
      optional :netsuite_sales_order_id, String

      # @!attribute priority
      #   If multiple credits or commits are applicable, the one with the lower priority
      #   will apply first.
      #
      #   @return [Float, nil]
      optional :priority, Float

      # @!attribute rate_type
      #
      #   @return [Symbol, MetronomeSDK::Commit::RateType, nil]
      optional :rate_type, enum: -> { MetronomeSDK::Commit::RateType }

      # @!attribute rolled_over_from
      #
      #   @return [MetronomeSDK::Commit::RolledOverFrom, nil]
      optional :rolled_over_from, -> { MetronomeSDK::Commit::RolledOverFrom }

      # @!attribute rollover_fraction
      #
      #   @return [Float, nil]
      optional :rollover_fraction, Float

      # @!attribute salesforce_opportunity_id
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [String, nil]
      optional :salesforce_opportunity_id, String

      # @!attribute uniqueness_key
      #   Prevents the creation of duplicates. If a request to create a commit or credit
      #   is made with a uniqueness key that was previously used to create a commit or
      #   credit, a new record will not be created and the request will fail with a 409
      #   error.
      #
      #   @return [String, nil]
      optional :uniqueness_key, String

      # @!method initialize(id:, product:, type:, access_schedule: nil, amount: nil, applicable_contract_ids: nil, applicable_product_ids: nil, applicable_product_tags: nil, archived_at: nil, balance: nil, contract: nil, custom_fields: nil, description: nil, invoice_contract: nil, invoice_schedule: nil, ledger: nil, name: nil, netsuite_sales_order_id: nil, priority: nil, rate_type: nil, rolled_over_from: nil, rollover_fraction: nil, salesforce_opportunity_id: nil, uniqueness_key: nil)
      #   Some parameter documentations has been truncated, see {MetronomeSDK::Commit} for
      #   more details.
      #
      #   @param id [String]
      #
      #   @param product [MetronomeSDK::Commit::Product]
      #
      #   @param type [Symbol, MetronomeSDK::Commit::Type]
      #
      #   @param access_schedule [MetronomeSDK::ScheduleDuration] The schedule that the customer will gain access to the credits purposed with thi
      #
      #   @param amount [Float] (DEPRECATED) Use access_schedule + invoice_schedule instead.
      #
      #   @param applicable_contract_ids [Array<String>]
      #
      #   @param applicable_product_ids [Array<String>]
      #
      #   @param applicable_product_tags [Array<String>]
      #
      #   @param archived_at [Time] RFC 3339 timestamp indicating when the commit was archived. If not provided, the
      #
      #   @param balance [Float] The current balance of the credit or commit. This balance reflects the amount of
      #
      #   @param contract [MetronomeSDK::Commit::Contract]
      #
      #   @param custom_fields [Hash{Symbol=>String}]
      #
      #   @param description [String]
      #
      #   @param invoice_contract [MetronomeSDK::Commit::InvoiceContract] The contract that this commit will be billed on.
      #
      #   @param invoice_schedule [MetronomeSDK::SchedulePointInTime] The schedule that the customer will be invoiced for this commit.
      #
      #   @param ledger [Array<MetronomeSDK::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry, MetronomeSDK::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Commit::Ledger::PrepaidCommitRolloverLedgerEntry, MetronomeSDK::Commit::Ledger::PrepaidCommitExpirationLedgerEntry, MetronomeSDK::Commit::Ledger::PrepaidCommitCanceledLedgerEntry, MetronomeSDK::Commit::Ledger::PrepaidCommitCreditedLedgerEntry, MetronomeSDK::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry, MetronomeSDK::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Commit::Ledger::PostpaidCommitRolloverLedgerEntry, MetronomeSDK::Commit::Ledger::PostpaidCommitTrueupLedgerEntry, MetronomeSDK::Commit::Ledger::PrepaidCommitManualLedgerEntry, MetronomeSDK::Commit::Ledger::PostpaidCommitManualLedgerEntry, MetronomeSDK::Commit::Ledger::PostpaidCommitExpirationLedgerEntry>] A list of ordered events that impact the balance of a commit. For example, an in
      #
      #   @param name [String]
      #
      #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
      #
      #   @param priority [Float] If multiple credits or commits are applicable, the one with the lower priority w
      #
      #   @param rate_type [Symbol, MetronomeSDK::Commit::RateType]
      #
      #   @param rolled_over_from [MetronomeSDK::Commit::RolledOverFrom]
      #
      #   @param rollover_fraction [Float]
      #
      #   @param salesforce_opportunity_id [String] This field's availability is dependent on your client's configuration.
      #
      #   @param uniqueness_key [String] Prevents the creation of duplicates. If a request to create a commit or credit i

      # @see MetronomeSDK::Commit#product
      class Product < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!method initialize(id:, name:)
        #   @param id [String]
        #   @param name [String]
      end

      # @see MetronomeSDK::Commit#type
      module Type
        extend MetronomeSDK::Internal::Type::Enum

        PREPAID = :PREPAID
        POSTPAID = :POSTPAID

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see MetronomeSDK::Commit#contract
      class Contract < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   @param id [String]
      end

      # @see MetronomeSDK::Commit#invoice_contract
      class InvoiceContract < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The contract that this commit will be billed on.
        #
        #   @param id [String]
      end

      module Ledger
        extend MetronomeSDK::Internal::Type::Union

        variant -> { MetronomeSDK::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry }

        variant -> { MetronomeSDK::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry }

        variant -> { MetronomeSDK::Commit::Ledger::PrepaidCommitRolloverLedgerEntry }

        variant -> { MetronomeSDK::Commit::Ledger::PrepaidCommitExpirationLedgerEntry }

        variant -> { MetronomeSDK::Commit::Ledger::PrepaidCommitCanceledLedgerEntry }

        variant -> { MetronomeSDK::Commit::Ledger::PrepaidCommitCreditedLedgerEntry }

        variant -> { MetronomeSDK::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry }

        variant -> { MetronomeSDK::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry }

        variant -> { MetronomeSDK::Commit::Ledger::PostpaidCommitRolloverLedgerEntry }

        variant -> { MetronomeSDK::Commit::Ledger::PostpaidCommitTrueupLedgerEntry }

        variant -> { MetronomeSDK::Commit::Ledger::PrepaidCommitManualLedgerEntry }

        variant -> { MetronomeSDK::Commit::Ledger::PostpaidCommitManualLedgerEntry }

        variant -> { MetronomeSDK::Commit::Ledger::PostpaidCommitExpirationLedgerEntry }

        class PrepaidCommitSegmentStartLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
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
          #   @return [Symbol, MetronomeSDK::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Type]
          required :type,
                   enum: -> {
                     MetronomeSDK::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Type
                   }

          # @!method initialize(amount:, segment_id:, timestamp:, type:)
          #   @param amount [Float]
          #   @param segment_id [String]
          #   @param timestamp [Time]
          #   @param type [Symbol, MetronomeSDK::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Type]

          # @see MetronomeSDK::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry#type
          module Type
            extend MetronomeSDK::Internal::Type::Enum

            PREPAID_COMMIT_SEGMENT_START = :PREPAID_COMMIT_SEGMENT_START

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class PrepaidCommitAutomatedInvoiceDeductionLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
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
          #   @return [Symbol, MetronomeSDK::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Type]
          required :type,
                   enum: -> {
                     MetronomeSDK::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Type
                   }

          # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
          #   @param amount [Float]
          #   @param invoice_id [String]
          #   @param segment_id [String]
          #   @param timestamp [Time]
          #   @param type [Symbol, MetronomeSDK::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Type]

          # @see MetronomeSDK::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry#type
          module Type
            extend MetronomeSDK::Internal::Type::Enum

            PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION = :PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class PrepaidCommitRolloverLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
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
          #   @return [Symbol, MetronomeSDK::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::Type]
          required :type, enum: -> { MetronomeSDK::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::Type }

          # @!method initialize(amount:, new_contract_id:, segment_id:, timestamp:, type:)
          #   @param amount [Float]
          #   @param new_contract_id [String]
          #   @param segment_id [String]
          #   @param timestamp [Time]
          #   @param type [Symbol, MetronomeSDK::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::Type]

          # @see MetronomeSDK::Commit::Ledger::PrepaidCommitRolloverLedgerEntry#type
          module Type
            extend MetronomeSDK::Internal::Type::Enum

            PREPAID_COMMIT_ROLLOVER = :PREPAID_COMMIT_ROLLOVER

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class PrepaidCommitExpirationLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
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
          #   @return [Symbol, MetronomeSDK::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Type]
          required :type, enum: -> { MetronomeSDK::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Type }

          # @!method initialize(amount:, segment_id:, timestamp:, type:)
          #   @param amount [Float]
          #   @param segment_id [String]
          #   @param timestamp [Time]
          #   @param type [Symbol, MetronomeSDK::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Type]

          # @see MetronomeSDK::Commit::Ledger::PrepaidCommitExpirationLedgerEntry#type
          module Type
            extend MetronomeSDK::Internal::Type::Enum

            PREPAID_COMMIT_EXPIRATION = :PREPAID_COMMIT_EXPIRATION

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class PrepaidCommitCanceledLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
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
          #   @return [Symbol, MetronomeSDK::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::Type]
          required :type, enum: -> { MetronomeSDK::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::Type }

          # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
          #   @param amount [Float]
          #   @param invoice_id [String]
          #   @param segment_id [String]
          #   @param timestamp [Time]
          #   @param type [Symbol, MetronomeSDK::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::Type]

          # @see MetronomeSDK::Commit::Ledger::PrepaidCommitCanceledLedgerEntry#type
          module Type
            extend MetronomeSDK::Internal::Type::Enum

            PREPAID_COMMIT_CANCELED = :PREPAID_COMMIT_CANCELED

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class PrepaidCommitCreditedLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
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
          #   @return [Symbol, MetronomeSDK::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::Type]
          required :type, enum: -> { MetronomeSDK::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::Type }

          # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
          #   @param amount [Float]
          #   @param invoice_id [String]
          #   @param segment_id [String]
          #   @param timestamp [Time]
          #   @param type [Symbol, MetronomeSDK::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::Type]

          # @see MetronomeSDK::Commit::Ledger::PrepaidCommitCreditedLedgerEntry#type
          module Type
            extend MetronomeSDK::Internal::Type::Enum

            PREPAID_COMMIT_CREDITED = :PREPAID_COMMIT_CREDITED

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class PostpaidCommitInitialBalanceLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
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
          #   @return [Symbol, MetronomeSDK::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::Type]
          required :type,
                   enum: -> {
                     MetronomeSDK::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::Type
                   }

          # @!method initialize(amount:, timestamp:, type:)
          #   @param amount [Float]
          #   @param timestamp [Time]
          #   @param type [Symbol, MetronomeSDK::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::Type]

          # @see MetronomeSDK::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry#type
          module Type
            extend MetronomeSDK::Internal::Type::Enum

            POSTPAID_COMMIT_INITIAL_BALANCE = :POSTPAID_COMMIT_INITIAL_BALANCE

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class PostpaidCommitAutomatedInvoiceDeductionLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
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
          #   @return [Symbol, MetronomeSDK::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Type]
          required :type,
                   enum: -> {
                     MetronomeSDK::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Type
                   }

          # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
          #   @param amount [Float]
          #   @param invoice_id [String]
          #   @param segment_id [String]
          #   @param timestamp [Time]
          #   @param type [Symbol, MetronomeSDK::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Type]

          # @see MetronomeSDK::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry#type
          module Type
            extend MetronomeSDK::Internal::Type::Enum

            POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION = :POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class PostpaidCommitRolloverLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
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
          #   @return [Symbol, MetronomeSDK::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Type]
          required :type, enum: -> { MetronomeSDK::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Type }

          # @!method initialize(amount:, new_contract_id:, segment_id:, timestamp:, type:)
          #   @param amount [Float]
          #   @param new_contract_id [String]
          #   @param segment_id [String]
          #   @param timestamp [Time]
          #   @param type [Symbol, MetronomeSDK::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Type]

          # @see MetronomeSDK::Commit::Ledger::PostpaidCommitRolloverLedgerEntry#type
          module Type
            extend MetronomeSDK::Internal::Type::Enum

            POSTPAID_COMMIT_ROLLOVER = :POSTPAID_COMMIT_ROLLOVER

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class PostpaidCommitTrueupLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
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
          #   @return [Symbol, MetronomeSDK::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::Type]
          required :type, enum: -> { MetronomeSDK::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::Type }

          # @!method initialize(amount:, invoice_id:, timestamp:, type:)
          #   @param amount [Float]
          #   @param invoice_id [String]
          #   @param timestamp [Time]
          #   @param type [Symbol, MetronomeSDK::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::Type]

          # @see MetronomeSDK::Commit::Ledger::PostpaidCommitTrueupLedgerEntry#type
          module Type
            extend MetronomeSDK::Internal::Type::Enum

            POSTPAID_COMMIT_TRUEUP = :POSTPAID_COMMIT_TRUEUP

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class PrepaidCommitManualLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
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
          #   @return [Symbol, MetronomeSDK::Commit::Ledger::PrepaidCommitManualLedgerEntry::Type]
          required :type, enum: -> { MetronomeSDK::Commit::Ledger::PrepaidCommitManualLedgerEntry::Type }

          # @!method initialize(amount:, reason:, timestamp:, type:)
          #   @param amount [Float]
          #   @param reason [String]
          #   @param timestamp [Time]
          #   @param type [Symbol, MetronomeSDK::Commit::Ledger::PrepaidCommitManualLedgerEntry::Type]

          # @see MetronomeSDK::Commit::Ledger::PrepaidCommitManualLedgerEntry#type
          module Type
            extend MetronomeSDK::Internal::Type::Enum

            PREPAID_COMMIT_MANUAL = :PREPAID_COMMIT_MANUAL

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class PostpaidCommitManualLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
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
          #   @return [Symbol, MetronomeSDK::Commit::Ledger::PostpaidCommitManualLedgerEntry::Type]
          required :type, enum: -> { MetronomeSDK::Commit::Ledger::PostpaidCommitManualLedgerEntry::Type }

          # @!method initialize(amount:, reason:, timestamp:, type:)
          #   @param amount [Float]
          #   @param reason [String]
          #   @param timestamp [Time]
          #   @param type [Symbol, MetronomeSDK::Commit::Ledger::PostpaidCommitManualLedgerEntry::Type]

          # @see MetronomeSDK::Commit::Ledger::PostpaidCommitManualLedgerEntry#type
          module Type
            extend MetronomeSDK::Internal::Type::Enum

            POSTPAID_COMMIT_MANUAL = :POSTPAID_COMMIT_MANUAL

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class PostpaidCommitExpirationLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
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
          #   @return [Symbol, MetronomeSDK::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Type]
          required :type, enum: -> { MetronomeSDK::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Type }

          # @!method initialize(amount:, timestamp:, type:)
          #   @param amount [Float]
          #   @param timestamp [Time]
          #   @param type [Symbol, MetronomeSDK::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Type]

          # @see MetronomeSDK::Commit::Ledger::PostpaidCommitExpirationLedgerEntry#type
          module Type
            extend MetronomeSDK::Internal::Type::Enum

            POSTPAID_COMMIT_EXPIRATION = :POSTPAID_COMMIT_EXPIRATION

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @!method self.variants
        #   @return [Array(MetronomeSDK::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry, MetronomeSDK::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Commit::Ledger::PrepaidCommitRolloverLedgerEntry, MetronomeSDK::Commit::Ledger::PrepaidCommitExpirationLedgerEntry, MetronomeSDK::Commit::Ledger::PrepaidCommitCanceledLedgerEntry, MetronomeSDK::Commit::Ledger::PrepaidCommitCreditedLedgerEntry, MetronomeSDK::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry, MetronomeSDK::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Commit::Ledger::PostpaidCommitRolloverLedgerEntry, MetronomeSDK::Commit::Ledger::PostpaidCommitTrueupLedgerEntry, MetronomeSDK::Commit::Ledger::PrepaidCommitManualLedgerEntry, MetronomeSDK::Commit::Ledger::PostpaidCommitManualLedgerEntry, MetronomeSDK::Commit::Ledger::PostpaidCommitExpirationLedgerEntry)]

        define_sorbet_constant!(:Variants) do
          T.type_alias do
            T.any(
              MetronomeSDK::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry,
              MetronomeSDK::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry,
              MetronomeSDK::Commit::Ledger::PrepaidCommitRolloverLedgerEntry,
              MetronomeSDK::Commit::Ledger::PrepaidCommitExpirationLedgerEntry,
              MetronomeSDK::Commit::Ledger::PrepaidCommitCanceledLedgerEntry,
              MetronomeSDK::Commit::Ledger::PrepaidCommitCreditedLedgerEntry,
              MetronomeSDK::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry,
              MetronomeSDK::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry,
              MetronomeSDK::Commit::Ledger::PostpaidCommitRolloverLedgerEntry,
              MetronomeSDK::Commit::Ledger::PostpaidCommitTrueupLedgerEntry,
              MetronomeSDK::Commit::Ledger::PrepaidCommitManualLedgerEntry,
              MetronomeSDK::Commit::Ledger::PostpaidCommitManualLedgerEntry,
              MetronomeSDK::Commit::Ledger::PostpaidCommitExpirationLedgerEntry
            )
          end
        end
      end

      # @see MetronomeSDK::Commit#rate_type
      module RateType
        extend MetronomeSDK::Internal::Type::Enum

        COMMIT_RATE = :COMMIT_RATE
        LIST_RATE = :LIST_RATE

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see MetronomeSDK::Commit#rolled_over_from
      class RolledOverFrom < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute commit_id
        #
        #   @return [String]
        required :commit_id, String

        # @!attribute contract_id
        #
        #   @return [String]
        required :contract_id, String

        # @!method initialize(commit_id:, contract_id:)
        #   @param commit_id [String]
        #   @param contract_id [String]
      end
    end
  end
end
