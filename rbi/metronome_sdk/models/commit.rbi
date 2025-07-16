# typed: strong

module MetronomeSDK
  module Models
    class Commit < MetronomeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(MetronomeSDK::Commit, MetronomeSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(MetronomeSDK::Commit::Product) }
      attr_reader :product

      sig { params(product: MetronomeSDK::Commit::Product::OrHash).void }
      attr_writer :product

      sig { returns(MetronomeSDK::Commit::Type::TaggedSymbol) }
      attr_accessor :type

      # The schedule that the customer will gain access to the credits purposed with
      # this commit.
      sig { returns(T.nilable(MetronomeSDK::ScheduleDuration)) }
      attr_reader :access_schedule

      sig do
        params(access_schedule: MetronomeSDK::ScheduleDuration::OrHash).void
      end
      attr_writer :access_schedule

      # (DEPRECATED) Use access_schedule + invoice_schedule instead.
      sig { returns(T.nilable(Float)) }
      attr_reader :amount

      sig { params(amount: Float).void }
      attr_writer :amount

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

      # RFC 3339 timestamp indicating when the commit was archived. If not provided, the
      # commit is not archived.
      sig { returns(T.nilable(Time)) }
      attr_reader :archived_at

      sig { params(archived_at: Time).void }
      attr_writer :archived_at

      # The current balance of the credit or commit. This balance reflects the amount of
      # credit or commit that the customer has access to use at this moment - thus,
      # expired and upcoming credit or commit segments contribute 0 to the balance. The
      # balance will match the sum of all ledger entries with the exception of the case
      # where the sum of negative manual ledger entries exceeds the positive amount
      # remaining on the credit or commit - in that case, the balance will be 0. All
      # manual ledger entries associated with active credit or commit segments are
      # included in the balance, including future-dated manual ledger entries.
      sig { returns(T.nilable(Float)) }
      attr_reader :balance

      sig { params(balance: Float).void }
      attr_writer :balance

      sig { returns(T.nilable(MetronomeSDK::Commit::Contract)) }
      attr_reader :contract

      sig { params(contract: MetronomeSDK::Commit::Contract::OrHash).void }
      attr_writer :contract

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :custom_fields

      sig { params(custom_fields: T::Hash[Symbol, String]).void }
      attr_writer :custom_fields

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # Optional configuration for commit hierarchy access control
      sig { returns(T.nilable(MetronomeSDK::Commit::HierarchyConfiguration)) }
      attr_reader :hierarchy_configuration

      sig do
        params(
          hierarchy_configuration:
            MetronomeSDK::Commit::HierarchyConfiguration::OrHash
        ).void
      end
      attr_writer :hierarchy_configuration

      # The contract that this commit will be billed on.
      sig { returns(T.nilable(MetronomeSDK::Commit::InvoiceContract)) }
      attr_reader :invoice_contract

      sig do
        params(
          invoice_contract: MetronomeSDK::Commit::InvoiceContract::OrHash
        ).void
      end
      attr_writer :invoice_contract

      # The schedule that the customer will be invoiced for this commit.
      sig { returns(T.nilable(MetronomeSDK::SchedulePointInTime)) }
      attr_reader :invoice_schedule

      sig do
        params(invoice_schedule: MetronomeSDK::SchedulePointInTime::OrHash).void
      end
      attr_writer :invoice_schedule

      # A list of ordered events that impact the balance of a commit. For example, an
      # invoice deduction or a rollover.
      sig do
        returns(T.nilable(T::Array[MetronomeSDK::Commit::Ledger::Variants]))
      end
      attr_reader :ledger

      sig do
        params(
          ledger:
            T::Array[
              T.any(
                MetronomeSDK::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::OrHash,
                MetronomeSDK::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::OrHash,
                MetronomeSDK::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::OrHash,
                MetronomeSDK::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::OrHash,
                MetronomeSDK::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::OrHash,
                MetronomeSDK::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::OrHash,
                MetronomeSDK::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::OrHash,
                MetronomeSDK::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::OrHash,
                MetronomeSDK::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::OrHash,
                MetronomeSDK::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::OrHash,
                MetronomeSDK::Commit::Ledger::PrepaidCommitManualLedgerEntry::OrHash,
                MetronomeSDK::Commit::Ledger::PostpaidCommitManualLedgerEntry::OrHash,
                MetronomeSDK::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::OrHash
              )
            ]
        ).void
      end
      attr_writer :ledger

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # This field's availability is dependent on your client's configuration.
      sig { returns(T.nilable(String)) }
      attr_reader :netsuite_sales_order_id

      sig { params(netsuite_sales_order_id: String).void }
      attr_writer :netsuite_sales_order_id

      # If multiple credits or commits are applicable, the one with the lower priority
      # will apply first.
      sig { returns(T.nilable(Float)) }
      attr_reader :priority

      sig { params(priority: Float).void }
      attr_writer :priority

      sig { returns(T.nilable(MetronomeSDK::Commit::RateType::TaggedSymbol)) }
      attr_reader :rate_type

      sig { params(rate_type: MetronomeSDK::Commit::RateType::OrSymbol).void }
      attr_writer :rate_type

      sig { returns(T.nilable(MetronomeSDK::Commit::RolledOverFrom)) }
      attr_reader :rolled_over_from

      sig do
        params(
          rolled_over_from: MetronomeSDK::Commit::RolledOverFrom::OrHash
        ).void
      end
      attr_writer :rolled_over_from

      sig { returns(T.nilable(Float)) }
      attr_reader :rollover_fraction

      sig { params(rollover_fraction: Float).void }
      attr_writer :rollover_fraction

      # This field's availability is dependent on your client's configuration.
      sig { returns(T.nilable(String)) }
      attr_reader :salesforce_opportunity_id

      sig { params(salesforce_opportunity_id: String).void }
      attr_writer :salesforce_opportunity_id

      # List of filters that determine what kind of customer usage draws down a commit
      # or credit. A customer's usage needs to meet the condition of at least one of the
      # specifiers to contribute to a commit's or credit's drawdown.
      sig { returns(T.nilable(T::Array[MetronomeSDK::Commit::Specifier])) }
      attr_reader :specifiers

      sig do
        params(
          specifiers: T::Array[MetronomeSDK::Commit::Specifier::OrHash]
        ).void
      end
      attr_writer :specifiers

      # Prevents the creation of duplicates. If a request to create a commit or credit
      # is made with a uniqueness key that was previously used to create a commit or
      # credit, a new record will not be created and the request will fail with a 409
      # error.
      sig { returns(T.nilable(String)) }
      attr_reader :uniqueness_key

      sig { params(uniqueness_key: String).void }
      attr_writer :uniqueness_key

      sig do
        params(
          id: String,
          product: MetronomeSDK::Commit::Product::OrHash,
          type: MetronomeSDK::Commit::Type::OrSymbol,
          access_schedule: MetronomeSDK::ScheduleDuration::OrHash,
          amount: Float,
          applicable_contract_ids: T::Array[String],
          applicable_product_ids: T::Array[String],
          applicable_product_tags: T::Array[String],
          archived_at: Time,
          balance: Float,
          contract: MetronomeSDK::Commit::Contract::OrHash,
          custom_fields: T::Hash[Symbol, String],
          description: String,
          hierarchy_configuration:
            MetronomeSDK::Commit::HierarchyConfiguration::OrHash,
          invoice_contract: MetronomeSDK::Commit::InvoiceContract::OrHash,
          invoice_schedule: MetronomeSDK::SchedulePointInTime::OrHash,
          ledger:
            T::Array[
              T.any(
                MetronomeSDK::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::OrHash,
                MetronomeSDK::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::OrHash,
                MetronomeSDK::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::OrHash,
                MetronomeSDK::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::OrHash,
                MetronomeSDK::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::OrHash,
                MetronomeSDK::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::OrHash,
                MetronomeSDK::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::OrHash,
                MetronomeSDK::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::OrHash,
                MetronomeSDK::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::OrHash,
                MetronomeSDK::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::OrHash,
                MetronomeSDK::Commit::Ledger::PrepaidCommitManualLedgerEntry::OrHash,
                MetronomeSDK::Commit::Ledger::PostpaidCommitManualLedgerEntry::OrHash,
                MetronomeSDK::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::OrHash
              )
            ],
          name: String,
          netsuite_sales_order_id: String,
          priority: Float,
          rate_type: MetronomeSDK::Commit::RateType::OrSymbol,
          rolled_over_from: MetronomeSDK::Commit::RolledOverFrom::OrHash,
          rollover_fraction: Float,
          salesforce_opportunity_id: String,
          specifiers: T::Array[MetronomeSDK::Commit::Specifier::OrHash],
          uniqueness_key: String
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        product:,
        type:,
        # The schedule that the customer will gain access to the credits purposed with
        # this commit.
        access_schedule: nil,
        # (DEPRECATED) Use access_schedule + invoice_schedule instead.
        amount: nil,
        applicable_contract_ids: nil,
        applicable_product_ids: nil,
        applicable_product_tags: nil,
        # RFC 3339 timestamp indicating when the commit was archived. If not provided, the
        # commit is not archived.
        archived_at: nil,
        # The current balance of the credit or commit. This balance reflects the amount of
        # credit or commit that the customer has access to use at this moment - thus,
        # expired and upcoming credit or commit segments contribute 0 to the balance. The
        # balance will match the sum of all ledger entries with the exception of the case
        # where the sum of negative manual ledger entries exceeds the positive amount
        # remaining on the credit or commit - in that case, the balance will be 0. All
        # manual ledger entries associated with active credit or commit segments are
        # included in the balance, including future-dated manual ledger entries.
        balance: nil,
        contract: nil,
        custom_fields: nil,
        description: nil,
        # Optional configuration for commit hierarchy access control
        hierarchy_configuration: nil,
        # The contract that this commit will be billed on.
        invoice_contract: nil,
        # The schedule that the customer will be invoiced for this commit.
        invoice_schedule: nil,
        # A list of ordered events that impact the balance of a commit. For example, an
        # invoice deduction or a rollover.
        ledger: nil,
        name: nil,
        # This field's availability is dependent on your client's configuration.
        netsuite_sales_order_id: nil,
        # If multiple credits or commits are applicable, the one with the lower priority
        # will apply first.
        priority: nil,
        rate_type: nil,
        rolled_over_from: nil,
        rollover_fraction: nil,
        # This field's availability is dependent on your client's configuration.
        salesforce_opportunity_id: nil,
        # List of filters that determine what kind of customer usage draws down a commit
        # or credit. A customer's usage needs to meet the condition of at least one of the
        # specifiers to contribute to a commit's or credit's drawdown.
        specifiers: nil,
        # Prevents the creation of duplicates. If a request to create a commit or credit
        # is made with a uniqueness key that was previously used to create a commit or
        # credit, a new record will not be created and the request will fail with a 409
        # error.
        uniqueness_key: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            product: MetronomeSDK::Commit::Product,
            type: MetronomeSDK::Commit::Type::TaggedSymbol,
            access_schedule: MetronomeSDK::ScheduleDuration,
            amount: Float,
            applicable_contract_ids: T::Array[String],
            applicable_product_ids: T::Array[String],
            applicable_product_tags: T::Array[String],
            archived_at: Time,
            balance: Float,
            contract: MetronomeSDK::Commit::Contract,
            custom_fields: T::Hash[Symbol, String],
            description: String,
            hierarchy_configuration:
              MetronomeSDK::Commit::HierarchyConfiguration,
            invoice_contract: MetronomeSDK::Commit::InvoiceContract,
            invoice_schedule: MetronomeSDK::SchedulePointInTime,
            ledger: T::Array[MetronomeSDK::Commit::Ledger::Variants],
            name: String,
            netsuite_sales_order_id: String,
            priority: Float,
            rate_type: MetronomeSDK::Commit::RateType::TaggedSymbol,
            rolled_over_from: MetronomeSDK::Commit::RolledOverFrom,
            rollover_fraction: Float,
            salesforce_opportunity_id: String,
            specifiers: T::Array[MetronomeSDK::Commit::Specifier],
            uniqueness_key: String
          }
        )
      end
      def to_hash
      end

      class Product < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Commit::Product,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :name

        sig { params(id: String, name: String).returns(T.attached_class) }
        def self.new(id:, name:)
        end

        sig { override.returns({ id: String, name: String }) }
        def to_hash
        end
      end

      module Type
        extend MetronomeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, MetronomeSDK::Commit::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PREPAID = T.let(:PREPAID, MetronomeSDK::Commit::Type::TaggedSymbol)
        POSTPAID = T.let(:POSTPAID, MetronomeSDK::Commit::Type::TaggedSymbol)

        sig do
          override.returns(T::Array[MetronomeSDK::Commit::Type::TaggedSymbol])
        end
        def self.values
        end
      end

      class Contract < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Commit::Contract,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { params(id: String).returns(T.attached_class) }
        def self.new(id:)
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end

      class HierarchyConfiguration < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Commit::HierarchyConfiguration,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            MetronomeSDK::Commit::HierarchyConfiguration::ChildAccess::Variants
          )
        end
        attr_accessor :child_access

        # Optional configuration for commit hierarchy access control
        sig do
          params(
            child_access:
              T.any(
                MetronomeSDK::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::OrHash,
                MetronomeSDK::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::OrHash,
                MetronomeSDK::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::OrHash
              )
          ).returns(T.attached_class)
        end
        def self.new(child_access:)
        end

        sig do
          override.returns(
            {
              child_access:
                MetronomeSDK::Commit::HierarchyConfiguration::ChildAccess::Variants
            }
          )
        end
        def to_hash
        end

        module ChildAccess
          extend MetronomeSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                MetronomeSDK::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll,
                MetronomeSDK::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone,
                MetronomeSDK::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs
              )
            end

          class CommitHierarchyChildAccessAll < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                MetronomeSDK::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            sig do
              params(
                type:
                  MetronomeSDK::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(type:)
            end

            sig do
              override.returns(
                {
                  type:
                    MetronomeSDK::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::TaggedSymbol
                }
              )
            end
            def to_hash
            end

            module Type
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ALL =
                T.let(
                  :ALL,
                  MetronomeSDK::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class CommitHierarchyChildAccessNone < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                MetronomeSDK::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            sig do
              params(
                type:
                  MetronomeSDK::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(type:)
            end

            sig do
              override.returns(
                {
                  type:
                    MetronomeSDK::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::TaggedSymbol
                }
              )
            end
            def to_hash
            end

            module Type
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              NONE =
                T.let(
                  :NONE,
                  MetronomeSDK::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class CommitHierarchyChildAccessContractIDs < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(T::Array[String]) }
            attr_accessor :contract_ids

            sig do
              returns(
                MetronomeSDK::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            sig do
              params(
                contract_ids: T::Array[String],
                type:
                  MetronomeSDK::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(contract_ids:, type:)
            end

            sig do
              override.returns(
                {
                  contract_ids: T::Array[String],
                  type:
                    MetronomeSDK::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::TaggedSymbol
                }
              )
            end
            def to_hash
            end

            module Type
              extend MetronomeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    MetronomeSDK::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CONTRACT_IDS =
                T.let(
                  :CONTRACT_IDS,
                  MetronomeSDK::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Commit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::Commit::HierarchyConfiguration::ChildAccess::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end

      class InvoiceContract < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Commit::InvoiceContract,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # The contract that this commit will be billed on.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(id:)
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end

      module Ledger
        extend MetronomeSDK::Internal::Type::Union

        Variants =
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

        class PrepaidCommitSegmentStartLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(Float) }
          attr_accessor :amount

          sig { returns(String) }
          attr_accessor :segment_id

          sig { returns(Time) }
          attr_accessor :timestamp

          sig do
            returns(
              MetronomeSDK::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          sig do
            params(
              amount: Float,
              segment_id: String,
              timestamp: Time,
              type:
                MetronomeSDK::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(amount:, segment_id:, timestamp:, type:)
          end

          sig do
            override.returns(
              {
                amount: Float,
                segment_id: String,
                timestamp: Time,
                type:
                  MetronomeSDK::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Type::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module Type
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PREPAID_COMMIT_SEGMENT_START =
              T.let(
                :PREPAID_COMMIT_SEGMENT_START,
                MetronomeSDK::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::Commit::Ledger::PrepaidCommitSegmentStartLedgerEntry::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class PrepaidCommitAutomatedInvoiceDeductionLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(Float) }
          attr_accessor :amount

          sig { returns(String) }
          attr_accessor :invoice_id

          sig { returns(String) }
          attr_accessor :segment_id

          sig { returns(Time) }
          attr_accessor :timestamp

          sig do
            returns(
              MetronomeSDK::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          sig do
            params(
              amount: Float,
              invoice_id: String,
              segment_id: String,
              timestamp: Time,
              type:
                MetronomeSDK::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(amount:, invoice_id:, segment_id:, timestamp:, type:)
          end

          sig do
            override.returns(
              {
                amount: Float,
                invoice_id: String,
                segment_id: String,
                timestamp: Time,
                type:
                  MetronomeSDK::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Type::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module Type
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION =
              T.let(
                :PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION,
                MetronomeSDK::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::Commit::Ledger::PrepaidCommitAutomatedInvoiceDeductionLedgerEntry::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class PrepaidCommitRolloverLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Commit::Ledger::PrepaidCommitRolloverLedgerEntry,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(Float) }
          attr_accessor :amount

          sig { returns(String) }
          attr_accessor :new_contract_id

          sig { returns(String) }
          attr_accessor :segment_id

          sig { returns(Time) }
          attr_accessor :timestamp

          sig do
            returns(
              MetronomeSDK::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          sig do
            params(
              amount: Float,
              new_contract_id: String,
              segment_id: String,
              timestamp: Time,
              type:
                MetronomeSDK::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            amount:,
            new_contract_id:,
            segment_id:,
            timestamp:,
            type:
          )
          end

          sig do
            override.returns(
              {
                amount: Float,
                new_contract_id: String,
                segment_id: String,
                timestamp: Time,
                type:
                  MetronomeSDK::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::Type::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module Type
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PREPAID_COMMIT_ROLLOVER =
              T.let(
                :PREPAID_COMMIT_ROLLOVER,
                MetronomeSDK::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::Commit::Ledger::PrepaidCommitRolloverLedgerEntry::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class PrepaidCommitExpirationLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Commit::Ledger::PrepaidCommitExpirationLedgerEntry,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(Float) }
          attr_accessor :amount

          sig { returns(String) }
          attr_accessor :segment_id

          sig { returns(Time) }
          attr_accessor :timestamp

          sig do
            returns(
              MetronomeSDK::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          sig do
            params(
              amount: Float,
              segment_id: String,
              timestamp: Time,
              type:
                MetronomeSDK::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(amount:, segment_id:, timestamp:, type:)
          end

          sig do
            override.returns(
              {
                amount: Float,
                segment_id: String,
                timestamp: Time,
                type:
                  MetronomeSDK::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Type::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module Type
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PREPAID_COMMIT_EXPIRATION =
              T.let(
                :PREPAID_COMMIT_EXPIRATION,
                MetronomeSDK::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::Commit::Ledger::PrepaidCommitExpirationLedgerEntry::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class PrepaidCommitCanceledLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Commit::Ledger::PrepaidCommitCanceledLedgerEntry,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(Float) }
          attr_accessor :amount

          sig { returns(String) }
          attr_accessor :invoice_id

          sig { returns(String) }
          attr_accessor :segment_id

          sig { returns(Time) }
          attr_accessor :timestamp

          sig do
            returns(
              MetronomeSDK::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          sig do
            params(
              amount: Float,
              invoice_id: String,
              segment_id: String,
              timestamp: Time,
              type:
                MetronomeSDK::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(amount:, invoice_id:, segment_id:, timestamp:, type:)
          end

          sig do
            override.returns(
              {
                amount: Float,
                invoice_id: String,
                segment_id: String,
                timestamp: Time,
                type:
                  MetronomeSDK::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::Type::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module Type
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PREPAID_COMMIT_CANCELED =
              T.let(
                :PREPAID_COMMIT_CANCELED,
                MetronomeSDK::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::Commit::Ledger::PrepaidCommitCanceledLedgerEntry::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class PrepaidCommitCreditedLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Commit::Ledger::PrepaidCommitCreditedLedgerEntry,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(Float) }
          attr_accessor :amount

          sig { returns(String) }
          attr_accessor :invoice_id

          sig { returns(String) }
          attr_accessor :segment_id

          sig { returns(Time) }
          attr_accessor :timestamp

          sig do
            returns(
              MetronomeSDK::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          sig do
            params(
              amount: Float,
              invoice_id: String,
              segment_id: String,
              timestamp: Time,
              type:
                MetronomeSDK::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(amount:, invoice_id:, segment_id:, timestamp:, type:)
          end

          sig do
            override.returns(
              {
                amount: Float,
                invoice_id: String,
                segment_id: String,
                timestamp: Time,
                type:
                  MetronomeSDK::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::Type::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module Type
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PREPAID_COMMIT_CREDITED =
              T.let(
                :PREPAID_COMMIT_CREDITED,
                MetronomeSDK::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::Commit::Ledger::PrepaidCommitCreditedLedgerEntry::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class PostpaidCommitInitialBalanceLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(Float) }
          attr_accessor :amount

          sig { returns(Time) }
          attr_accessor :timestamp

          sig do
            returns(
              MetronomeSDK::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          sig do
            params(
              amount: Float,
              timestamp: Time,
              type:
                MetronomeSDK::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(amount:, timestamp:, type:)
          end

          sig do
            override.returns(
              {
                amount: Float,
                timestamp: Time,
                type:
                  MetronomeSDK::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::Type::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module Type
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            POSTPAID_COMMIT_INITIAL_BALANCE =
              T.let(
                :POSTPAID_COMMIT_INITIAL_BALANCE,
                MetronomeSDK::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::Commit::Ledger::PostpaidCommitInitialBalanceLedgerEntry::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class PostpaidCommitAutomatedInvoiceDeductionLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(Float) }
          attr_accessor :amount

          sig { returns(String) }
          attr_accessor :invoice_id

          sig { returns(String) }
          attr_accessor :segment_id

          sig { returns(Time) }
          attr_accessor :timestamp

          sig do
            returns(
              MetronomeSDK::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          sig do
            params(
              amount: Float,
              invoice_id: String,
              segment_id: String,
              timestamp: Time,
              type:
                MetronomeSDK::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(amount:, invoice_id:, segment_id:, timestamp:, type:)
          end

          sig do
            override.returns(
              {
                amount: Float,
                invoice_id: String,
                segment_id: String,
                timestamp: Time,
                type:
                  MetronomeSDK::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Type::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module Type
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION =
              T.let(
                :POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION,
                MetronomeSDK::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::Commit::Ledger::PostpaidCommitAutomatedInvoiceDeductionLedgerEntry::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class PostpaidCommitRolloverLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Commit::Ledger::PostpaidCommitRolloverLedgerEntry,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(Float) }
          attr_accessor :amount

          sig { returns(String) }
          attr_accessor :new_contract_id

          sig { returns(String) }
          attr_accessor :segment_id

          sig { returns(Time) }
          attr_accessor :timestamp

          sig do
            returns(
              MetronomeSDK::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          sig do
            params(
              amount: Float,
              new_contract_id: String,
              segment_id: String,
              timestamp: Time,
              type:
                MetronomeSDK::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            amount:,
            new_contract_id:,
            segment_id:,
            timestamp:,
            type:
          )
          end

          sig do
            override.returns(
              {
                amount: Float,
                new_contract_id: String,
                segment_id: String,
                timestamp: Time,
                type:
                  MetronomeSDK::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Type::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module Type
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            POSTPAID_COMMIT_ROLLOVER =
              T.let(
                :POSTPAID_COMMIT_ROLLOVER,
                MetronomeSDK::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::Commit::Ledger::PostpaidCommitRolloverLedgerEntry::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class PostpaidCommitTrueupLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Commit::Ledger::PostpaidCommitTrueupLedgerEntry,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(Float) }
          attr_accessor :amount

          sig { returns(String) }
          attr_accessor :invoice_id

          sig { returns(Time) }
          attr_accessor :timestamp

          sig do
            returns(
              MetronomeSDK::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          sig do
            params(
              amount: Float,
              invoice_id: String,
              timestamp: Time,
              type:
                MetronomeSDK::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(amount:, invoice_id:, timestamp:, type:)
          end

          sig do
            override.returns(
              {
                amount: Float,
                invoice_id: String,
                timestamp: Time,
                type:
                  MetronomeSDK::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::Type::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module Type
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            POSTPAID_COMMIT_TRUEUP =
              T.let(
                :POSTPAID_COMMIT_TRUEUP,
                MetronomeSDK::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::Commit::Ledger::PostpaidCommitTrueupLedgerEntry::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class PrepaidCommitManualLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Commit::Ledger::PrepaidCommitManualLedgerEntry,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(Float) }
          attr_accessor :amount

          sig { returns(String) }
          attr_accessor :reason

          sig { returns(Time) }
          attr_accessor :timestamp

          sig do
            returns(
              MetronomeSDK::Commit::Ledger::PrepaidCommitManualLedgerEntry::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          sig do
            params(
              amount: Float,
              reason: String,
              timestamp: Time,
              type:
                MetronomeSDK::Commit::Ledger::PrepaidCommitManualLedgerEntry::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(amount:, reason:, timestamp:, type:)
          end

          sig do
            override.returns(
              {
                amount: Float,
                reason: String,
                timestamp: Time,
                type:
                  MetronomeSDK::Commit::Ledger::PrepaidCommitManualLedgerEntry::Type::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module Type
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::Commit::Ledger::PrepaidCommitManualLedgerEntry::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PREPAID_COMMIT_MANUAL =
              T.let(
                :PREPAID_COMMIT_MANUAL,
                MetronomeSDK::Commit::Ledger::PrepaidCommitManualLedgerEntry::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::Commit::Ledger::PrepaidCommitManualLedgerEntry::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class PostpaidCommitManualLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Commit::Ledger::PostpaidCommitManualLedgerEntry,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(Float) }
          attr_accessor :amount

          sig { returns(String) }
          attr_accessor :reason

          sig { returns(Time) }
          attr_accessor :timestamp

          sig do
            returns(
              MetronomeSDK::Commit::Ledger::PostpaidCommitManualLedgerEntry::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          sig do
            params(
              amount: Float,
              reason: String,
              timestamp: Time,
              type:
                MetronomeSDK::Commit::Ledger::PostpaidCommitManualLedgerEntry::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(amount:, reason:, timestamp:, type:)
          end

          sig do
            override.returns(
              {
                amount: Float,
                reason: String,
                timestamp: Time,
                type:
                  MetronomeSDK::Commit::Ledger::PostpaidCommitManualLedgerEntry::Type::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module Type
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::Commit::Ledger::PostpaidCommitManualLedgerEntry::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            POSTPAID_COMMIT_MANUAL =
              T.let(
                :POSTPAID_COMMIT_MANUAL,
                MetronomeSDK::Commit::Ledger::PostpaidCommitManualLedgerEntry::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::Commit::Ledger::PostpaidCommitManualLedgerEntry::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class PostpaidCommitExpirationLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Commit::Ledger::PostpaidCommitExpirationLedgerEntry,
                MetronomeSDK::Internal::AnyHash
              )
            end

          sig { returns(Float) }
          attr_accessor :amount

          sig { returns(Time) }
          attr_accessor :timestamp

          sig do
            returns(
              MetronomeSDK::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          sig do
            params(
              amount: Float,
              timestamp: Time,
              type:
                MetronomeSDK::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(amount:, timestamp:, type:)
          end

          sig do
            override.returns(
              {
                amount: Float,
                timestamp: Time,
                type:
                  MetronomeSDK::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Type::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module Type
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            POSTPAID_COMMIT_EXPIRATION =
              T.let(
                :POSTPAID_COMMIT_EXPIRATION,
                MetronomeSDK::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::Commit::Ledger::PostpaidCommitExpirationLedgerEntry::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        sig do
          override.returns(T::Array[MetronomeSDK::Commit::Ledger::Variants])
        end
        def self.variants
        end
      end

      module RateType
        extend MetronomeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, MetronomeSDK::Commit::RateType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        COMMIT_RATE =
          T.let(:COMMIT_RATE, MetronomeSDK::Commit::RateType::TaggedSymbol)
        LIST_RATE =
          T.let(:LIST_RATE, MetronomeSDK::Commit::RateType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[MetronomeSDK::Commit::RateType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class RolledOverFrom < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Commit::RolledOverFrom,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :commit_id

        sig { returns(String) }
        attr_accessor :contract_id

        sig do
          params(commit_id: String, contract_id: String).returns(
            T.attached_class
          )
        end
        def self.new(commit_id:, contract_id:)
        end

        sig { override.returns({ commit_id: String, contract_id: String }) }
        def to_hash
        end
      end

      class Specifier < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Commit::Specifier,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :presentation_group_values

        sig { params(presentation_group_values: T::Hash[Symbol, String]).void }
        attr_writer :presentation_group_values

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :pricing_group_values

        sig { params(pricing_group_values: T::Hash[Symbol, String]).void }
        attr_writer :pricing_group_values

        # If provided, the specifier will only apply to the product with the specified ID.
        sig { returns(T.nilable(String)) }
        attr_reader :product_id

        sig { params(product_id: String).void }
        attr_writer :product_id

        # If provided, the specifier will only apply to products with all the specified
        # tags.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :product_tags

        sig { params(product_tags: T::Array[String]).void }
        attr_writer :product_tags

        sig do
          params(
            presentation_group_values: T::Hash[Symbol, String],
            pricing_group_values: T::Hash[Symbol, String],
            product_id: String,
            product_tags: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          presentation_group_values: nil,
          pricing_group_values: nil,
          # If provided, the specifier will only apply to the product with the specified ID.
          product_id: nil,
          # If provided, the specifier will only apply to products with all the specified
          # tags.
          product_tags: nil
        )
        end

        sig do
          override.returns(
            {
              presentation_group_values: T::Hash[Symbol, String],
              pricing_group_values: T::Hash[Symbol, String],
              product_id: String,
              product_tags: T::Array[String]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
