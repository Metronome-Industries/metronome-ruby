# typed: strong

module MetronomeSDK
  module Models
    class Credit < MetronomeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(MetronomeSDK::Credit, MetronomeSDK::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(MetronomeSDK::Credit::Product) }
      attr_reader :product

      sig { params(product: MetronomeSDK::Credit::Product::OrHash).void }
      attr_writer :product

      sig { returns(MetronomeSDK::Credit::Type::TaggedSymbol) }
      attr_accessor :type

      # The schedule that the customer will gain access to the credits.
      sig { returns(T.nilable(MetronomeSDK::ScheduleDuration)) }
      attr_reader :access_schedule

      sig do
        params(access_schedule: MetronomeSDK::ScheduleDuration::OrHash).void
      end
      attr_writer :access_schedule

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

      sig { returns(T.nilable(MetronomeSDK::Credit::Contract)) }
      attr_reader :contract

      sig { params(contract: MetronomeSDK::Credit::Contract::OrHash).void }
      attr_writer :contract

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :custom_fields

      sig { params(custom_fields: T::Hash[Symbol, String]).void }
      attr_writer :custom_fields

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # Optional configuration for credit hierarchy access control
      sig { returns(T.nilable(MetronomeSDK::Credit::HierarchyConfiguration)) }
      attr_reader :hierarchy_configuration

      sig do
        params(
          hierarchy_configuration:
            MetronomeSDK::Credit::HierarchyConfiguration::OrHash
        ).void
      end
      attr_writer :hierarchy_configuration

      # A list of ordered events that impact the balance of a credit. For example, an
      # invoice deduction or an expiration.
      sig do
        returns(T.nilable(T::Array[MetronomeSDK::Credit::Ledger::Variants]))
      end
      attr_reader :ledger

      sig do
        params(
          ledger:
            T::Array[
              T.any(
                MetronomeSDK::Credit::Ledger::CreditSegmentStartLedgerEntry::OrHash,
                MetronomeSDK::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::OrHash,
                MetronomeSDK::Credit::Ledger::CreditExpirationLedgerEntry::OrHash,
                MetronomeSDK::Credit::Ledger::CreditCanceledLedgerEntry::OrHash,
                MetronomeSDK::Credit::Ledger::CreditCreditedLedgerEntry::OrHash,
                MetronomeSDK::Credit::Ledger::CreditManualLedgerEntry::OrHash
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

      sig { returns(T.nilable(MetronomeSDK::Credit::RateType::TaggedSymbol)) }
      attr_reader :rate_type

      sig { params(rate_type: MetronomeSDK::Credit::RateType::OrSymbol).void }
      attr_writer :rate_type

      # This field's availability is dependent on your client's configuration.
      sig { returns(T.nilable(String)) }
      attr_reader :salesforce_opportunity_id

      sig { params(salesforce_opportunity_id: String).void }
      attr_writer :salesforce_opportunity_id

      # List of filters that determine what kind of customer usage draws down a commit
      # or credit. A customer's usage needs to meet the condition of at least one of the
      # specifiers to contribute to a commit's or credit's drawdown.
      sig { returns(T.nilable(T::Array[MetronomeSDK::Credit::Specifier])) }
      attr_reader :specifiers

      sig do
        params(
          specifiers: T::Array[MetronomeSDK::Credit::Specifier::OrHash]
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
          product: MetronomeSDK::Credit::Product::OrHash,
          type: MetronomeSDK::Credit::Type::OrSymbol,
          access_schedule: MetronomeSDK::ScheduleDuration::OrHash,
          applicable_contract_ids: T::Array[String],
          applicable_product_ids: T::Array[String],
          applicable_product_tags: T::Array[String],
          balance: Float,
          contract: MetronomeSDK::Credit::Contract::OrHash,
          custom_fields: T::Hash[Symbol, String],
          description: String,
          hierarchy_configuration:
            MetronomeSDK::Credit::HierarchyConfiguration::OrHash,
          ledger:
            T::Array[
              T.any(
                MetronomeSDK::Credit::Ledger::CreditSegmentStartLedgerEntry::OrHash,
                MetronomeSDK::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::OrHash,
                MetronomeSDK::Credit::Ledger::CreditExpirationLedgerEntry::OrHash,
                MetronomeSDK::Credit::Ledger::CreditCanceledLedgerEntry::OrHash,
                MetronomeSDK::Credit::Ledger::CreditCreditedLedgerEntry::OrHash,
                MetronomeSDK::Credit::Ledger::CreditManualLedgerEntry::OrHash
              )
            ],
          name: String,
          netsuite_sales_order_id: String,
          priority: Float,
          rate_type: MetronomeSDK::Credit::RateType::OrSymbol,
          salesforce_opportunity_id: String,
          specifiers: T::Array[MetronomeSDK::Credit::Specifier::OrHash],
          uniqueness_key: String
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        product:,
        type:,
        # The schedule that the customer will gain access to the credits.
        access_schedule: nil,
        applicable_contract_ids: nil,
        applicable_product_ids: nil,
        applicable_product_tags: nil,
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
        # Optional configuration for credit hierarchy access control
        hierarchy_configuration: nil,
        # A list of ordered events that impact the balance of a credit. For example, an
        # invoice deduction or an expiration.
        ledger: nil,
        name: nil,
        # This field's availability is dependent on your client's configuration.
        netsuite_sales_order_id: nil,
        # If multiple credits or commits are applicable, the one with the lower priority
        # will apply first.
        priority: nil,
        rate_type: nil,
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
            product: MetronomeSDK::Credit::Product,
            type: MetronomeSDK::Credit::Type::TaggedSymbol,
            access_schedule: MetronomeSDK::ScheduleDuration,
            applicable_contract_ids: T::Array[String],
            applicable_product_ids: T::Array[String],
            applicable_product_tags: T::Array[String],
            balance: Float,
            contract: MetronomeSDK::Credit::Contract,
            custom_fields: T::Hash[Symbol, String],
            description: String,
            hierarchy_configuration:
              MetronomeSDK::Credit::HierarchyConfiguration,
            ledger: T::Array[MetronomeSDK::Credit::Ledger::Variants],
            name: String,
            netsuite_sales_order_id: String,
            priority: Float,
            rate_type: MetronomeSDK::Credit::RateType::TaggedSymbol,
            salesforce_opportunity_id: String,
            specifiers: T::Array[MetronomeSDK::Credit::Specifier],
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
              MetronomeSDK::Credit::Product,
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
          T.type_alias { T.all(Symbol, MetronomeSDK::Credit::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREDIT = T.let(:CREDIT, MetronomeSDK::Credit::Type::TaggedSymbol)

        sig do
          override.returns(T::Array[MetronomeSDK::Credit::Type::TaggedSymbol])
        end
        def self.values
        end
      end

      class Contract < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Credit::Contract,
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
              MetronomeSDK::Credit::HierarchyConfiguration,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            MetronomeSDK::Credit::HierarchyConfiguration::ChildAccess::Variants
          )
        end
        attr_accessor :child_access

        # Optional configuration for credit hierarchy access control
        sig do
          params(
            child_access:
              T.any(
                MetronomeSDK::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::OrHash,
                MetronomeSDK::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::OrHash,
                MetronomeSDK::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::OrHash
              )
          ).returns(T.attached_class)
        end
        def self.new(child_access:)
        end

        sig do
          override.returns(
            {
              child_access:
                MetronomeSDK::Credit::HierarchyConfiguration::ChildAccess::Variants
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
                MetronomeSDK::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll,
                MetronomeSDK::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone,
                MetronomeSDK::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs
              )
            end

          class CommitHierarchyChildAccessAll < MetronomeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  MetronomeSDK::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                MetronomeSDK::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            sig do
              params(
                type:
                  MetronomeSDK::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(type:)
            end

            sig do
              override.returns(
                {
                  type:
                    MetronomeSDK::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::TaggedSymbol
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
                    MetronomeSDK::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ALL =
                T.let(
                  :ALL,
                  MetronomeSDK::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessAll::Type::TaggedSymbol
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
                  MetronomeSDK::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                MetronomeSDK::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            sig do
              params(
                type:
                  MetronomeSDK::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(type:)
            end

            sig do
              override.returns(
                {
                  type:
                    MetronomeSDK::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::TaggedSymbol
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
                    MetronomeSDK::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              NONE =
                T.let(
                  :NONE,
                  MetronomeSDK::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessNone::Type::TaggedSymbol
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
                  MetronomeSDK::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs,
                  MetronomeSDK::Internal::AnyHash
                )
              end

            sig { returns(T::Array[String]) }
            attr_accessor :contract_ids

            sig do
              returns(
                MetronomeSDK::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            sig do
              params(
                contract_ids: T::Array[String],
                type:
                  MetronomeSDK::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(contract_ids:, type:)
            end

            sig do
              override.returns(
                {
                  contract_ids: T::Array[String],
                  type:
                    MetronomeSDK::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::TaggedSymbol
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
                    MetronomeSDK::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CONTRACT_IDS =
                T.let(
                  :CONTRACT_IDS,
                  MetronomeSDK::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    MetronomeSDK::Credit::HierarchyConfiguration::ChildAccess::CommitHierarchyChildAccessContractIDs::Type::TaggedSymbol
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
                MetronomeSDK::Credit::HierarchyConfiguration::ChildAccess::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end

      module Ledger
        extend MetronomeSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              MetronomeSDK::Credit::Ledger::CreditSegmentStartLedgerEntry,
              MetronomeSDK::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry,
              MetronomeSDK::Credit::Ledger::CreditExpirationLedgerEntry,
              MetronomeSDK::Credit::Ledger::CreditCanceledLedgerEntry,
              MetronomeSDK::Credit::Ledger::CreditCreditedLedgerEntry,
              MetronomeSDK::Credit::Ledger::CreditManualLedgerEntry
            )
          end

        class CreditSegmentStartLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Credit::Ledger::CreditSegmentStartLedgerEntry,
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
              MetronomeSDK::Credit::Ledger::CreditSegmentStartLedgerEntry::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          sig do
            params(
              amount: Float,
              segment_id: String,
              timestamp: Time,
              type:
                MetronomeSDK::Credit::Ledger::CreditSegmentStartLedgerEntry::Type::OrSymbol
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
                  MetronomeSDK::Credit::Ledger::CreditSegmentStartLedgerEntry::Type::TaggedSymbol
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
                  MetronomeSDK::Credit::Ledger::CreditSegmentStartLedgerEntry::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREDIT_SEGMENT_START =
              T.let(
                :CREDIT_SEGMENT_START,
                MetronomeSDK::Credit::Ledger::CreditSegmentStartLedgerEntry::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::Credit::Ledger::CreditSegmentStartLedgerEntry::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class CreditAutomatedInvoiceDeductionLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry,
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
              MetronomeSDK::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::Type::TaggedSymbol
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
                MetronomeSDK::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::Type::OrSymbol
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
                  MetronomeSDK::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::Type::TaggedSymbol
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
                  MetronomeSDK::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREDIT_AUTOMATED_INVOICE_DEDUCTION =
              T.let(
                :CREDIT_AUTOMATED_INVOICE_DEDUCTION,
                MetronomeSDK::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::Credit::Ledger::CreditAutomatedInvoiceDeductionLedgerEntry::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class CreditExpirationLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Credit::Ledger::CreditExpirationLedgerEntry,
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
              MetronomeSDK::Credit::Ledger::CreditExpirationLedgerEntry::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          sig do
            params(
              amount: Float,
              segment_id: String,
              timestamp: Time,
              type:
                MetronomeSDK::Credit::Ledger::CreditExpirationLedgerEntry::Type::OrSymbol
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
                  MetronomeSDK::Credit::Ledger::CreditExpirationLedgerEntry::Type::TaggedSymbol
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
                  MetronomeSDK::Credit::Ledger::CreditExpirationLedgerEntry::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREDIT_EXPIRATION =
              T.let(
                :CREDIT_EXPIRATION,
                MetronomeSDK::Credit::Ledger::CreditExpirationLedgerEntry::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::Credit::Ledger::CreditExpirationLedgerEntry::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class CreditCanceledLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Credit::Ledger::CreditCanceledLedgerEntry,
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
              MetronomeSDK::Credit::Ledger::CreditCanceledLedgerEntry::Type::TaggedSymbol
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
                MetronomeSDK::Credit::Ledger::CreditCanceledLedgerEntry::Type::OrSymbol
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
                  MetronomeSDK::Credit::Ledger::CreditCanceledLedgerEntry::Type::TaggedSymbol
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
                  MetronomeSDK::Credit::Ledger::CreditCanceledLedgerEntry::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREDIT_CANCELED =
              T.let(
                :CREDIT_CANCELED,
                MetronomeSDK::Credit::Ledger::CreditCanceledLedgerEntry::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::Credit::Ledger::CreditCanceledLedgerEntry::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class CreditCreditedLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Credit::Ledger::CreditCreditedLedgerEntry,
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
              MetronomeSDK::Credit::Ledger::CreditCreditedLedgerEntry::Type::TaggedSymbol
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
                MetronomeSDK::Credit::Ledger::CreditCreditedLedgerEntry::Type::OrSymbol
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
                  MetronomeSDK::Credit::Ledger::CreditCreditedLedgerEntry::Type::TaggedSymbol
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
                  MetronomeSDK::Credit::Ledger::CreditCreditedLedgerEntry::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREDIT_CREDITED =
              T.let(
                :CREDIT_CREDITED,
                MetronomeSDK::Credit::Ledger::CreditCreditedLedgerEntry::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::Credit::Ledger::CreditCreditedLedgerEntry::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class CreditManualLedgerEntry < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Credit::Ledger::CreditManualLedgerEntry,
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
              MetronomeSDK::Credit::Ledger::CreditManualLedgerEntry::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          sig do
            params(
              amount: Float,
              reason: String,
              timestamp: Time,
              type:
                MetronomeSDK::Credit::Ledger::CreditManualLedgerEntry::Type::OrSymbol
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
                  MetronomeSDK::Credit::Ledger::CreditManualLedgerEntry::Type::TaggedSymbol
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
                  MetronomeSDK::Credit::Ledger::CreditManualLedgerEntry::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREDIT_MANUAL =
              T.let(
                :CREDIT_MANUAL,
                MetronomeSDK::Credit::Ledger::CreditManualLedgerEntry::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::Credit::Ledger::CreditManualLedgerEntry::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        sig do
          override.returns(T::Array[MetronomeSDK::Credit::Ledger::Variants])
        end
        def self.variants
        end
      end

      module RateType
        extend MetronomeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, MetronomeSDK::Credit::RateType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        COMMIT_RATE =
          T.let(:COMMIT_RATE, MetronomeSDK::Credit::RateType::TaggedSymbol)
        LIST_RATE =
          T.let(:LIST_RATE, MetronomeSDK::Credit::RateType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[MetronomeSDK::Credit::RateType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Specifier < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Credit::Specifier,
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
