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
      #   @return [MetronomeSDK::Models::Commit::Product]
      required :product, -> { MetronomeSDK::Commit::Product }

      # @!attribute type
      #
      #   @return [Symbol, MetronomeSDK::Models::Commit::Type]
      required :type, enum: -> { MetronomeSDK::Commit::Type }

      # @!attribute access_schedule
      #   The schedule that the customer will gain access to the credits purposed with
      #   this commit.
      #
      #   @return [MetronomeSDK::Models::ScheduleDuration, nil]
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
      #   @return [MetronomeSDK::Models::Commit::Contract, nil]
      optional :contract, -> { MetronomeSDK::Commit::Contract }

      # @!attribute custom_fields
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

      # @!attribute description
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute hierarchy_configuration
      #   Optional configuration for commit hierarchy access control
      #
      #   @return [MetronomeSDK::Models::Commit::HierarchyConfiguration, nil]
      optional :hierarchy_configuration, -> { MetronomeSDK::Commit::HierarchyConfiguration }

      # @!attribute invoice_contract
      #   The contract that this commit will be billed on.
      #
      #   @return [MetronomeSDK::Models::Commit::InvoiceContract, nil]
      optional :invoice_contract, -> { MetronomeSDK::Commit::InvoiceContract }

      # @!attribute invoice_schedule
      #   The schedule that the customer will be invoiced for this commit.
      #
      #   @return [MetronomeSDK::Models::SchedulePointInTime, nil]
      optional :invoice_schedule, -> { MetronomeSDK::SchedulePointInTime }

      # @!attribute ledger
      #   A list of ordered events that impact the balance of a commit. For example, an
      #   invoice deduction or a rollover.
      #
      #   @return [Array<MetronomeSDK::Models::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitRolloverLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitExpirationLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitCanceledLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitCreditedLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitSeatBasedAdjustmentLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitRolloverLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitTrueupLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitManualLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitManualLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitExpirationLedgerEntry>, nil]
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
      #   @return [Symbol, MetronomeSDK::Models::Commit::RateType, nil]
      optional :rate_type, enum: -> { MetronomeSDK::Commit::RateType }

      # @!attribute rolled_over_from
      #
      #   @return [MetronomeSDK::Models::Commit::RolledOverFrom, nil]
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

      # @!attribute specifiers
      #   List of filters that determine what kind of customer usage draws down a commit
      #   or credit. A customer's usage needs to meet the condition of at least one of the
      #   specifiers to contribute to a commit's or credit's drawdown.
      #
      #   @return [Array<MetronomeSDK::Models::Commit::Specifier>, nil]
      optional :specifiers, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Commit::Specifier] }

      # @!attribute uniqueness_key
      #   Prevents the creation of duplicates. If a request to create a commit or credit
      #   is made with a uniqueness key that was previously used to create a commit or
      #   credit, a new record will not be created and the request will fail with a 409
      #   error.
      #
      #   @return [String, nil]
      optional :uniqueness_key, String

      # @!method initialize(id:, product:, type:, access_schedule: nil, amount: nil, applicable_contract_ids: nil, applicable_product_ids: nil, applicable_product_tags: nil, archived_at: nil, balance: nil, contract: nil, custom_fields: nil, description: nil, hierarchy_configuration: nil, invoice_contract: nil, invoice_schedule: nil, ledger: nil, name: nil, netsuite_sales_order_id: nil, priority: nil, rate_type: nil, rolled_over_from: nil, rollover_fraction: nil, salesforce_opportunity_id: nil, specifiers: nil, uniqueness_key: nil)
      #   Some parameter documentations has been truncated, see
      #   {MetronomeSDK::Models::Commit} for more details.
      #
      #   @param id [String]
      #
      #   @param product [MetronomeSDK::Models::Commit::Product]
      #
      #   @param type [Symbol, MetronomeSDK::Models::Commit::Type]
      #
      #   @param access_schedule [MetronomeSDK::Models::ScheduleDuration] The schedule that the customer will gain access to the credits purposed with thi
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
      #   @param contract [MetronomeSDK::Models::Commit::Contract]
      #
      #   @param custom_fields [Hash{Symbol=>String}]
      #
      #   @param description [String]
      #
      #   @param hierarchy_configuration [MetronomeSDK::Models::Commit::HierarchyConfiguration] Optional configuration for commit hierarchy access control
      #
      #   @param invoice_contract [MetronomeSDK::Models::Commit::InvoiceContract] The contract that this commit will be billed on.
      #
      #   @param invoice_schedule [MetronomeSDK::Models::SchedulePointInTime] The schedule that the customer will be invoiced for this commit.
      #
      #   @param ledger [Array<MetronomeSDK::Models::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitRolloverLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitExpirationLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitCanceledLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitCreditedLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitSeatBasedAdjustmentLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitRolloverLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitTrueupLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitManualLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitManualLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitExpirationLedgerEntry>] A list of ordered events that impact the balance of a commit. For example, an in
      #
      #   @param name [String]
      #
      #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
      #
      #   @param priority [Float] If multiple credits or commits are applicable, the one with the lower priority w
      #
      #   @param rate_type [Symbol, MetronomeSDK::Models::Commit::RateType]
      #
      #   @param rolled_over_from [MetronomeSDK::Models::Commit::RolledOverFrom]
      #
      #   @param rollover_fraction [Float]
      #
      #   @param salesforce_opportunity_id [String] This field's availability is dependent on your client's configuration.
      #
      #   @param specifiers [Array<MetronomeSDK::Models::Commit::Specifier>] List of filters that determine what kind of customer usage draws down a commit o
      #
      #   @param uniqueness_key [String] Prevents the creation of duplicates. If a request to create a commit or credit i

      # @see MetronomeSDK::Models::Commit#product
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

      # @see MetronomeSDK::Models::Commit#type
      module Type
        extend MetronomeSDK::Internal::Type::Enum

        PREPAID = :PREPAID
        POSTPAID = :POSTPAID

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see MetronomeSDK::Models::Commit#contract
      class Contract < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   @param id [String]
      end

      # @see MetronomeSDK::Models::Commit#hierarchy_configuration
      class HierarchyConfiguration < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute child_access
        #
        #   @return [MetronomeSDK::Models::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll, MetronomeSDK::Models::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone, MetronomeSDK::Models::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs]
        required :child_access, union: -> { MetronomeSDK::Commit::HierarchyConfiguration::ChildAccess }

        # @!method initialize(child_access:)
        #   Optional configuration for commit hierarchy access control
        #
        #   @param child_access [MetronomeSDK::Models::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll, MetronomeSDK::Models::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone, MetronomeSDK::Models::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs]

        # @see MetronomeSDK::Models::Commit::HierarchyConfiguration#child_access
        module ChildAccess
          extend MetronomeSDK::Internal::Type::Union

          variant -> {
            MetronomeSDK::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll
          }

          variant -> {
            MetronomeSDK::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone
          }

          variant -> {
            MetronomeSDK::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs
          }

          class CommitHierarchyChildAccessAll < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute type
            #
            #   @return [Symbol, MetronomeSDK::Models::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type]
            required :type,
                     enum: -> {
                       MetronomeSDK::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type
                     }

            # @!method initialize(type:)
            #   @param type [Symbol, MetronomeSDK::Models::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type]

            # @see MetronomeSDK::Models::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll#type
            module Type
              extend MetronomeSDK::Internal::Type::Enum

              ALL = :ALL

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class CommitHierarchyChildAccessNone < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute type
            #
            #   @return [Symbol, MetronomeSDK::Models::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type]
            required :type,
                     enum: -> {
                       MetronomeSDK::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type
                     }

            # @!method initialize(type:)
            #   @param type [Symbol, MetronomeSDK::Models::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type]

            # @see MetronomeSDK::Models::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone#type
            module Type
              extend MetronomeSDK::Internal::Type::Enum

              NONE = :NONE

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class CommitHierarchyChildAccessContractIDs < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute contract_ids
            #
            #   @return [Array<String>]
            required :contract_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!attribute type
            #
            #   @return [Symbol, MetronomeSDK::Models::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type]
            required :type,
                     enum: -> {
                       MetronomeSDK::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type
                     }

            # @!method initialize(contract_ids:, type:)
            #   @param contract_ids [Array<String>]
            #   @param type [Symbol, MetronomeSDK::Models::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type]

            # @see MetronomeSDK::Models::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs#type
            module Type
              extend MetronomeSDK::Internal::Type::Enum

              CONTRACT_IDS = :CONTRACT_IDS

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(MetronomeSDK::Models::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll, MetronomeSDK::Models::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone, MetronomeSDK::Models::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs)]
        end
      end

      # @see MetronomeSDK::Models::Commit#invoice_contract
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

        variant -> { MetronomeSDK::Commit::Ledger::PrepaidCommitSeatBasedAdjustmentLedgerEntry }

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
          #   @return [Symbol, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Type]
          required :type,
                   enum: -> {
                     MetronomeSDK::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Type
                   }

          # @!method initialize(amount:, segment_id:, timestamp:, type:)
          #   @param amount [Float]
          #   @param segment_id [String]
          #   @param timestamp [Time]
          #   @param type [Symbol, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Type]

          # @see MetronomeSDK::Models::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry#type
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
          #   @return [Symbol, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Type]
          required :type,
                   enum: -> {
                     MetronomeSDK::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Type
                   }

          # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
          #   @param amount [Float]
          #   @param invoice_id [String]
          #   @param segment_id [String]
          #   @param timestamp [Time]
          #   @param type [Symbol, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Type]

          # @see MetronomeSDK::Models::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry#type
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
          #   @return [Symbol, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::Type]
          required :type, enum: -> { MetronomeSDK::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::Type }

          # @!method initialize(amount:, new_contract_id:, segment_id:, timestamp:, type:)
          #   @param amount [Float]
          #   @param new_contract_id [String]
          #   @param segment_id [String]
          #   @param timestamp [Time]
          #   @param type [Symbol, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::Type]

          # @see MetronomeSDK::Models::Commit::Ledger::PrepaidCommitRolloverLedgerEntry#type
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
          #   @return [Symbol, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Type]
          required :type, enum: -> { MetronomeSDK::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Type }

          # @!method initialize(amount:, segment_id:, timestamp:, type:)
          #   @param amount [Float]
          #   @param segment_id [String]
          #   @param timestamp [Time]
          #   @param type [Symbol, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Type]

          # @see MetronomeSDK::Models::Commit::Ledger::PrepaidCommitExpirationLedgerEntry#type
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
          #   @return [Symbol, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::Type]
          required :type, enum: -> { MetronomeSDK::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::Type }

          # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
          #   @param amount [Float]
          #   @param invoice_id [String]
          #   @param segment_id [String]
          #   @param timestamp [Time]
          #   @param type [Symbol, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::Type]

          # @see MetronomeSDK::Models::Commit::Ledger::PrepaidCommitCanceledLedgerEntry#type
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
          #   @return [Symbol, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::Type]
          required :type, enum: -> { MetronomeSDK::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::Type }

          # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
          #   @param amount [Float]
          #   @param invoice_id [String]
          #   @param segment_id [String]
          #   @param timestamp [Time]
          #   @param type [Symbol, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::Type]

          # @see MetronomeSDK::Models::Commit::Ledger::PrepaidCommitCreditedLedgerEntry#type
          module Type
            extend MetronomeSDK::Internal::Type::Enum

            PREPAID_COMMIT_CREDITED = :PREPAID_COMMIT_CREDITED

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class PrepaidCommitSeatBasedAdjustmentLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
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
          #   @return [Symbol, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitSeatBasedAdjustmentLedgerEntry::Type]
          required :type,
                   enum: -> {
                     MetronomeSDK::Commit::Ledger::PrepaidCommitSeatBasedAdjustmentLedgerEntry::Type
                   }

          # @!method initialize(amount:, segment_id:, timestamp:, type:)
          #   @param amount [Float]
          #   @param segment_id [String]
          #   @param timestamp [Time]
          #   @param type [Symbol, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitSeatBasedAdjustmentLedgerEntry::Type]

          # @see MetronomeSDK::Models::Commit::Ledger::PrepaidCommitSeatBasedAdjustmentLedgerEntry#type
          module Type
            extend MetronomeSDK::Internal::Type::Enum

            PREPAID_COMMIT_SEAT_BASED_ADJUSTMENT = :PREPAID_COMMIT_SEAT_BASED_ADJUSTMENT

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
          #   @return [Symbol, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::Type]
          required :type,
                   enum: -> {
                     MetronomeSDK::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::Type
                   }

          # @!method initialize(amount:, timestamp:, type:)
          #   @param amount [Float]
          #   @param timestamp [Time]
          #   @param type [Symbol, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::Type]

          # @see MetronomeSDK::Models::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry#type
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
          #   @return [Symbol, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Type]
          required :type,
                   enum: -> {
                     MetronomeSDK::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Type
                   }

          # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:)
          #   @param amount [Float]
          #   @param invoice_id [String]
          #   @param segment_id [String]
          #   @param timestamp [Time]
          #   @param type [Symbol, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Type]

          # @see MetronomeSDK::Models::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry#type
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
          #   @return [Symbol, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Type]
          required :type, enum: -> { MetronomeSDK::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Type }

          # @!method initialize(amount:, new_contract_id:, segment_id:, timestamp:, type:)
          #   @param amount [Float]
          #   @param new_contract_id [String]
          #   @param segment_id [String]
          #   @param timestamp [Time]
          #   @param type [Symbol, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Type]

          # @see MetronomeSDK::Models::Commit::Ledger::PostpaidCommitRolloverLedgerEntry#type
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
          #   @return [Symbol, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::Type]
          required :type, enum: -> { MetronomeSDK::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::Type }

          # @!method initialize(amount:, invoice_id:, timestamp:, type:)
          #   @param amount [Float]
          #   @param invoice_id [String]
          #   @param timestamp [Time]
          #   @param type [Symbol, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::Type]

          # @see MetronomeSDK::Models::Commit::Ledger::PostpaidCommitTrueupLedgerEntry#type
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
          #   @return [Symbol, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitManualLedgerEntry::Type]
          required :type, enum: -> { MetronomeSDK::Commit::Ledger::PrepaidCommitManualLedgerEntry::Type }

          # @!method initialize(amount:, reason:, timestamp:, type:)
          #   @param amount [Float]
          #   @param reason [String]
          #   @param timestamp [Time]
          #   @param type [Symbol, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitManualLedgerEntry::Type]

          # @see MetronomeSDK::Models::Commit::Ledger::PrepaidCommitManualLedgerEntry#type
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
          #   @return [Symbol, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitManualLedgerEntry::Type]
          required :type, enum: -> { MetronomeSDK::Commit::Ledger::PostpaidCommitManualLedgerEntry::Type }

          # @!method initialize(amount:, reason:, timestamp:, type:)
          #   @param amount [Float]
          #   @param reason [String]
          #   @param timestamp [Time]
          #   @param type [Symbol, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitManualLedgerEntry::Type]

          # @see MetronomeSDK::Models::Commit::Ledger::PostpaidCommitManualLedgerEntry#type
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
          #   @return [Symbol, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Type]
          required :type, enum: -> { MetronomeSDK::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Type }

          # @!method initialize(amount:, timestamp:, type:)
          #   @param amount [Float]
          #   @param timestamp [Time]
          #   @param type [Symbol, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Type]

          # @see MetronomeSDK::Models::Commit::Ledger::PostpaidCommitExpirationLedgerEntry#type
          module Type
            extend MetronomeSDK::Internal::Type::Enum

            POSTPAID_COMMIT_EXPIRATION = :POSTPAID_COMMIT_EXPIRATION

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @!method self.variants
        #   @return [Array(MetronomeSDK::Models::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitRolloverLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitExpirationLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitCanceledLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitCreditedLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitSeatBasedAdjustmentLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitRolloverLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitTrueupLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PrepaidCommitManualLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitManualLedgerEntry, MetronomeSDK::Models::Commit::Ledger::PostpaidCommitExpirationLedgerEntry)]
      end

      # @see MetronomeSDK::Models::Commit#rate_type
      module RateType
        extend MetronomeSDK::Internal::Type::Enum

        COMMIT_RATE = :COMMIT_RATE
        LIST_RATE = :LIST_RATE

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see MetronomeSDK::Models::Commit#rolled_over_from
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

      class Specifier < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute presentation_group_values
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :presentation_group_values, MetronomeSDK::Internal::Type::HashOf[String]

        # @!attribute pricing_group_values
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :pricing_group_values, MetronomeSDK::Internal::Type::HashOf[String]

        # @!attribute product_id
        #   If provided, the specifier will only apply to the product with the specified ID.
        #
        #   @return [String, nil]
        optional :product_id, String

        # @!attribute product_tags
        #   If provided, the specifier will only apply to products with all the specified
        #   tags.
        #
        #   @return [Array<String>, nil]
        optional :product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(presentation_group_values: nil, pricing_group_values: nil, product_id: nil, product_tags: nil)
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::Commit::Specifier} for more details.
        #
        #   @param presentation_group_values [Hash{Symbol=>String}]
        #
        #   @param pricing_group_values [Hash{Symbol=>String}]
        #
        #   @param product_id [String] If provided, the specifier will only apply to the product with the specified ID.
        #
        #   @param product_tags [Array<String>] If provided, the specifier will only apply to products with all the specified ta
      end
    end
  end
end
