# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        # @see MetronomeSDK::Resources::V1::Customers::Commits#list
        class CommitListResponse < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute product
          #
          #   @return [MetronomeSDK::Models::V1::Customers::CommitListResponse::Product]
          required :product, -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::Product }

          # @!attribute type
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::Customers::CommitListResponse::Type]
          required :type, enum: -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::Type }

          # @!attribute access_schedule
          #   The schedule that the customer will gain access to the credits purposed with
          #   this commit.
          #
          #   @return [MetronomeSDK::Models::V1::Customers::CommitListResponse::AccessSchedule, nil]
          optional :access_schedule, -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::AccessSchedule }

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
          #   @return [MetronomeSDK::Models::V1::Customers::CommitListResponse::Contract, nil]
          optional :contract, -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::Contract }

          # @!attribute custom_fields
          #   Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
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
          #   @return [MetronomeSDK::Models::V1::Customers::CommitListResponse::HierarchyConfiguration, nil]
          optional :hierarchy_configuration,
                   -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::HierarchyConfiguration }

          # @!attribute invoice_contract
          #   The contract that this commit will be billed on.
          #
          #   @return [MetronomeSDK::Models::V1::Customers::CommitListResponse::InvoiceContract, nil]
          optional :invoice_contract,
                   -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::InvoiceContract }

          # @!attribute invoice_schedule
          #   The schedule that the customer will be invoiced for this commit.
          #
          #   @return [MetronomeSDK::Models::V1::Customers::CommitListResponse::InvoiceSchedule, nil]
          optional :invoice_schedule,
                   -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::InvoiceSchedule }

          # @!attribute ledger
          #   A list of ordered events that impact the balance of a commit. For example, an
          #   invoice deduction or a rollover.
          #
          #   @return [Array<MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember0, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember1, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember2, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember3, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember4, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember5, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember6, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember7, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember8, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember9, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember10, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember11, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember12, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember13>, nil]
          optional :ledger,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[union: MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger] }

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
          #   @return [Symbol, MetronomeSDK::Models::V1::Customers::CommitListResponse::RateType, nil]
          optional :rate_type, enum: -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::RateType }

          # @!attribute rolled_over_from
          #
          #   @return [MetronomeSDK::Models::V1::Customers::CommitListResponse::RolledOverFrom, nil]
          optional :rolled_over_from, -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::RolledOverFrom }

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
          #   @return [Array<MetronomeSDK::Models::V1::Customers::CommitListResponse::Specifier>, nil]
          optional :specifiers,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::Customers::CommitListResponse::Specifier] }

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
          #   {MetronomeSDK::Models::V1::Customers::CommitListResponse} for more details.
          #
          #   @param id [String]
          #
          #   @param product [MetronomeSDK::Models::V1::Customers::CommitListResponse::Product]
          #
          #   @param type [Symbol, MetronomeSDK::Models::V1::Customers::CommitListResponse::Type]
          #
          #   @param access_schedule [MetronomeSDK::Models::V1::Customers::CommitListResponse::AccessSchedule] The schedule that the customer will gain access to the credits purposed with thi
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
          #   @param contract [MetronomeSDK::Models::V1::Customers::CommitListResponse::Contract]
          #
          #   @param custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          #
          #   @param description [String]
          #
          #   @param hierarchy_configuration [MetronomeSDK::Models::V1::Customers::CommitListResponse::HierarchyConfiguration] Optional configuration for commit hierarchy access control
          #
          #   @param invoice_contract [MetronomeSDK::Models::V1::Customers::CommitListResponse::InvoiceContract] The contract that this commit will be billed on.
          #
          #   @param invoice_schedule [MetronomeSDK::Models::V1::Customers::CommitListResponse::InvoiceSchedule] The schedule that the customer will be invoiced for this commit.
          #
          #   @param ledger [Array<MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember0, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember1, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember2, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember3, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember4, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember5, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember6, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember7, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember8, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember9, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember10, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember11, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember12, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember13>] A list of ordered events that impact the balance of a commit. For example, an in
          #
          #   @param name [String]
          #
          #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
          #
          #   @param priority [Float] If multiple credits or commits are applicable, the one with the lower priority w
          #
          #   @param rate_type [Symbol, MetronomeSDK::Models::V1::Customers::CommitListResponse::RateType]
          #
          #   @param rolled_over_from [MetronomeSDK::Models::V1::Customers::CommitListResponse::RolledOverFrom]
          #
          #   @param rollover_fraction [Float]
          #
          #   @param salesforce_opportunity_id [String] This field's availability is dependent on your client's configuration.
          #
          #   @param specifiers [Array<MetronomeSDK::Models::V1::Customers::CommitListResponse::Specifier>] List of filters that determine what kind of customer usage draws down a commit o
          #
          #   @param uniqueness_key [String] Prevents the creation of duplicates. If a request to create a commit or credit i

          # @see MetronomeSDK::Models::V1::Customers::CommitListResponse#product
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

          # @see MetronomeSDK::Models::V1::Customers::CommitListResponse#type
          module Type
            extend MetronomeSDK::Internal::Type::Enum

            PREPAID = :PREPAID
            POSTPAID = :POSTPAID

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see MetronomeSDK::Models::V1::Customers::CommitListResponse#access_schedule
          class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute schedule_items
            #
            #   @return [Array<MetronomeSDK::Models::V1::Customers::CommitListResponse::AccessSchedule::ScheduleItem>]
            required :schedule_items,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::Customers::CommitListResponse::AccessSchedule::ScheduleItem] }

            # @!attribute credit_type
            #
            #   @return [MetronomeSDK::Models::V1::Customers::CommitListResponse::AccessSchedule::CreditType, nil]
            optional :credit_type,
                     -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::AccessSchedule::CreditType }

            # @!method initialize(schedule_items:, credit_type: nil)
            #   The schedule that the customer will gain access to the credits purposed with
            #   this commit.
            #
            #   @param schedule_items [Array<MetronomeSDK::Models::V1::Customers::CommitListResponse::AccessSchedule::ScheduleItem>]
            #   @param credit_type [MetronomeSDK::Models::V1::Customers::CommitListResponse::AccessSchedule::CreditType]

            class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute amount
              #
              #   @return [Float]
              required :amount, Float

              # @!attribute ending_before
              #
              #   @return [Time]
              required :ending_before, Time

              # @!attribute starting_at
              #
              #   @return [Time]
              required :starting_at, Time

              # @!method initialize(id:, amount:, ending_before:, starting_at:)
              #   @param id [String]
              #   @param amount [Float]
              #   @param ending_before [Time]
              #   @param starting_at [Time]
            end

            # @see MetronomeSDK::Models::V1::Customers::CommitListResponse::AccessSchedule#credit_type
            class CreditType < MetronomeSDK::Internal::Type::BaseModel
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
          end

          # @see MetronomeSDK::Models::V1::Customers::CommitListResponse#contract
          class Contract < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!method initialize(id:)
            #   @param id [String]
          end

          # @see MetronomeSDK::Models::V1::Customers::CommitListResponse#hierarchy_configuration
          class HierarchyConfiguration < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute child_access
            #
            #   @return [MetronomeSDK::Models::V1::Customers::CommitListResponse::HierarchyConfiguration::ChildAccess::Type, MetronomeSDK::Models::V1::Customers::CommitListResponse::HierarchyConfiguration::ChildAccess::UnionMember2]
            required :child_access,
                     union: -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::HierarchyConfiguration::ChildAccess }

            # @!method initialize(child_access:)
            #   Optional configuration for commit hierarchy access control
            #
            #   @param child_access [MetronomeSDK::Models::V1::Customers::CommitListResponse::HierarchyConfiguration::ChildAccess::Type, MetronomeSDK::Models::V1::Customers::CommitListResponse::HierarchyConfiguration::ChildAccess::UnionMember2]

            # @see MetronomeSDK::Models::V1::Customers::CommitListResponse::HierarchyConfiguration#child_access
            module ChildAccess
              extend MetronomeSDK::Internal::Type::Union

              variant -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::HierarchyConfiguration::ChildAccess::Type }

              variant -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::HierarchyConfiguration::ChildAccess::Type }

              variant -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::HierarchyConfiguration::ChildAccess::UnionMember2 }

              class Type < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute type
                #
                #   @return [Symbol, MetronomeSDK::Models::V1::Customers::CommitListResponse::HierarchyConfiguration::ChildAccess::Type::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::HierarchyConfiguration::ChildAccess::Type::Type }

                # @!method initialize(type:)
                #   @param type [Symbol, MetronomeSDK::Models::V1::Customers::CommitListResponse::HierarchyConfiguration::ChildAccess::Type::Type]

                # @see MetronomeSDK::Models::V1::Customers::CommitListResponse::HierarchyConfiguration::ChildAccess::Type#type
                module Type
                  extend MetronomeSDK::Internal::Type::Enum

                  ALL = :ALL

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class UnionMember2 < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute contract_ids
                #
                #   @return [Array<String>]
                required :contract_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

                # @!attribute type
                #
                #   @return [Symbol, MetronomeSDK::Models::V1::Customers::CommitListResponse::HierarchyConfiguration::ChildAccess::UnionMember2::Type]
                required :type,
                         enum: -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::HierarchyConfiguration::ChildAccess::UnionMember2::Type }

                # @!method initialize(contract_ids:, type:)
                #   @param contract_ids [Array<String>]
                #   @param type [Symbol, MetronomeSDK::Models::V1::Customers::CommitListResponse::HierarchyConfiguration::ChildAccess::UnionMember2::Type]

                # @see MetronomeSDK::Models::V1::Customers::CommitListResponse::HierarchyConfiguration::ChildAccess::UnionMember2#type
                module Type
                  extend MetronomeSDK::Internal::Type::Enum

                  CONTRACT_IDS = :CONTRACT_IDS

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              # @!method self.variants
              #   @return [Array(MetronomeSDK::Models::V1::Customers::CommitListResponse::HierarchyConfiguration::ChildAccess::Type, MetronomeSDK::Models::V1::Customers::CommitListResponse::HierarchyConfiguration::ChildAccess::Type, MetronomeSDK::Models::V1::Customers::CommitListResponse::HierarchyConfiguration::ChildAccess::UnionMember2)]
            end
          end

          # @see MetronomeSDK::Models::V1::Customers::CommitListResponse#invoice_contract
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

          # @see MetronomeSDK::Models::V1::Customers::CommitListResponse#invoice_schedule
          class InvoiceSchedule < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute credit_type
            #
            #   @return [MetronomeSDK::Models::V1::Customers::CommitListResponse::InvoiceSchedule::CreditType, nil]
            optional :credit_type,
                     -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::InvoiceSchedule::CreditType }

            # @!attribute do_not_invoice
            #   This field is only applicable to commit invoice schedules. If true, this
            #   schedule will not generate an invoice.
            #
            #   @return [Boolean, nil]
            optional :do_not_invoice, MetronomeSDK::Internal::Type::Boolean

            # @!attribute schedule_items
            #
            #   @return [Array<MetronomeSDK::Models::V1::Customers::CommitListResponse::InvoiceSchedule::ScheduleItem>, nil]
            optional :schedule_items,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V1::Customers::CommitListResponse::InvoiceSchedule::ScheduleItem] }

            # @!method initialize(credit_type: nil, do_not_invoice: nil, schedule_items: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V1::Customers::CommitListResponse::InvoiceSchedule} for
            #   more details.
            #
            #   The schedule that the customer will be invoiced for this commit.
            #
            #   @param credit_type [MetronomeSDK::Models::V1::Customers::CommitListResponse::InvoiceSchedule::CreditType]
            #
            #   @param do_not_invoice [Boolean] This field is only applicable to commit invoice schedules. If true, this schedul
            #
            #   @param schedule_items [Array<MetronomeSDK::Models::V1::Customers::CommitListResponse::InvoiceSchedule::ScheduleItem>]

            # @see MetronomeSDK::Models::V1::Customers::CommitListResponse::InvoiceSchedule#credit_type
            class CreditType < MetronomeSDK::Internal::Type::BaseModel
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

            class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute amount
              #
              #   @return [Float]
              required :amount, Float

              # @!attribute quantity
              #
              #   @return [Float]
              required :quantity, Float

              # @!attribute timestamp
              #
              #   @return [Time]
              required :timestamp, Time

              # @!attribute unit_price
              #
              #   @return [Float]
              required :unit_price, Float

              # @!attribute invoice_id
              #
              #   @return [String, nil]
              optional :invoice_id, String, nil?: true

              # @!method initialize(id:, amount:, quantity:, timestamp:, unit_price:, invoice_id: nil)
              #   @param id [String]
              #   @param amount [Float]
              #   @param quantity [Float]
              #   @param timestamp [Time]
              #   @param unit_price [Float]
              #   @param invoice_id [String, nil]
            end
          end

          module Ledger
            extend MetronomeSDK::Internal::Type::Union

            variant -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember0 }

            variant -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember1 }

            variant -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember2 }

            variant -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember3 }

            variant -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember4 }

            variant -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember5 }

            variant -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember6 }

            variant -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember7 }

            variant -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember8 }

            variant -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember9 }

            variant -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember10 }

            variant -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember11 }

            variant -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember12 }

            variant -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember13 }

            class UnionMember0 < MetronomeSDK::Internal::Type::BaseModel
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
              #   @return [Symbol, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember0::Type]
              required :type,
                       enum: -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember0::Type }

              # @!method initialize(amount:, segment_id:, timestamp:, type:)
              #   @param amount [Float]
              #   @param segment_id [String]
              #   @param timestamp [Time]
              #   @param type [Symbol, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember0::Type]

              # @see MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember0#type
              module Type
                extend MetronomeSDK::Internal::Type::Enum

                PREPAID_COMMIT_SEGMENT_START = :PREPAID_COMMIT_SEGMENT_START

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class UnionMember1 < MetronomeSDK::Internal::Type::BaseModel
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
              #   @return [Symbol, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember1::Type]
              required :type,
                       enum: -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember1::Type }

              # @!attribute contract_id
              #
              #   @return [String, nil]
              optional :contract_id, String

              # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:, contract_id: nil)
              #   @param amount [Float]
              #   @param invoice_id [String]
              #   @param segment_id [String]
              #   @param timestamp [Time]
              #   @param type [Symbol, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember1::Type]
              #   @param contract_id [String]

              # @see MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember1#type
              module Type
                extend MetronomeSDK::Internal::Type::Enum

                PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION = :PREPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class UnionMember2 < MetronomeSDK::Internal::Type::BaseModel
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
              #   @return [Symbol, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember2::Type]
              required :type,
                       enum: -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember2::Type }

              # @!method initialize(amount:, new_contract_id:, segment_id:, timestamp:, type:)
              #   @param amount [Float]
              #   @param new_contract_id [String]
              #   @param segment_id [String]
              #   @param timestamp [Time]
              #   @param type [Symbol, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember2::Type]

              # @see MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember2#type
              module Type
                extend MetronomeSDK::Internal::Type::Enum

                PREPAID_COMMIT_ROLLOVER = :PREPAID_COMMIT_ROLLOVER

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class UnionMember3 < MetronomeSDK::Internal::Type::BaseModel
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
              #   @return [Symbol, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember3::Type]
              required :type,
                       enum: -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember3::Type }

              # @!method initialize(amount:, segment_id:, timestamp:, type:)
              #   @param amount [Float]
              #   @param segment_id [String]
              #   @param timestamp [Time]
              #   @param type [Symbol, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember3::Type]

              # @see MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember3#type
              module Type
                extend MetronomeSDK::Internal::Type::Enum

                PREPAID_COMMIT_EXPIRATION = :PREPAID_COMMIT_EXPIRATION

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class UnionMember4 < MetronomeSDK::Internal::Type::BaseModel
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
              #   @return [Symbol, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember4::Type]
              required :type,
                       enum: -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember4::Type }

              # @!attribute contract_id
              #
              #   @return [String, nil]
              optional :contract_id, String

              # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:, contract_id: nil)
              #   @param amount [Float]
              #   @param invoice_id [String]
              #   @param segment_id [String]
              #   @param timestamp [Time]
              #   @param type [Symbol, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember4::Type]
              #   @param contract_id [String]

              # @see MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember4#type
              module Type
                extend MetronomeSDK::Internal::Type::Enum

                PREPAID_COMMIT_CANCELED = :PREPAID_COMMIT_CANCELED

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class UnionMember5 < MetronomeSDK::Internal::Type::BaseModel
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
              #   @return [Symbol, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember5::Type]
              required :type,
                       enum: -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember5::Type }

              # @!attribute contract_id
              #
              #   @return [String, nil]
              optional :contract_id, String

              # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:, contract_id: nil)
              #   @param amount [Float]
              #   @param invoice_id [String]
              #   @param segment_id [String]
              #   @param timestamp [Time]
              #   @param type [Symbol, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember5::Type]
              #   @param contract_id [String]

              # @see MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember5#type
              module Type
                extend MetronomeSDK::Internal::Type::Enum

                PREPAID_COMMIT_CREDITED = :PREPAID_COMMIT_CREDITED

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class UnionMember6 < MetronomeSDK::Internal::Type::BaseModel
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
              #   @return [Symbol, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember6::Type]
              required :type,
                       enum: -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember6::Type }

              # @!method initialize(amount:, segment_id:, timestamp:, type:)
              #   @param amount [Float]
              #   @param segment_id [String]
              #   @param timestamp [Time]
              #   @param type [Symbol, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember6::Type]

              # @see MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember6#type
              module Type
                extend MetronomeSDK::Internal::Type::Enum

                PREPAID_COMMIT_SEAT_BASED_ADJUSTMENT = :PREPAID_COMMIT_SEAT_BASED_ADJUSTMENT

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class UnionMember7 < MetronomeSDK::Internal::Type::BaseModel
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
              #   @return [Symbol, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember7::Type]
              required :type,
                       enum: -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember7::Type }

              # @!method initialize(amount:, timestamp:, type:)
              #   @param amount [Float]
              #   @param timestamp [Time]
              #   @param type [Symbol, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember7::Type]

              # @see MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember7#type
              module Type
                extend MetronomeSDK::Internal::Type::Enum

                POSTPAID_COMMIT_INITIAL_BALANCE = :POSTPAID_COMMIT_INITIAL_BALANCE

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class UnionMember8 < MetronomeSDK::Internal::Type::BaseModel
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
              #   @return [Symbol, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember8::Type]
              required :type,
                       enum: -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember8::Type }

              # @!attribute contract_id
              #
              #   @return [String, nil]
              optional :contract_id, String

              # @!method initialize(amount:, invoice_id:, segment_id:, timestamp:, type:, contract_id: nil)
              #   @param amount [Float]
              #   @param invoice_id [String]
              #   @param segment_id [String]
              #   @param timestamp [Time]
              #   @param type [Symbol, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember8::Type]
              #   @param contract_id [String]

              # @see MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember8#type
              module Type
                extend MetronomeSDK::Internal::Type::Enum

                POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION = :POSTPAID_COMMIT_AUTOMATED_INVOICE_DEDUCTION

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class UnionMember9 < MetronomeSDK::Internal::Type::BaseModel
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
              #   @return [Symbol, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember9::Type]
              required :type,
                       enum: -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember9::Type }

              # @!method initialize(amount:, new_contract_id:, segment_id:, timestamp:, type:)
              #   @param amount [Float]
              #   @param new_contract_id [String]
              #   @param segment_id [String]
              #   @param timestamp [Time]
              #   @param type [Symbol, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember9::Type]

              # @see MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember9#type
              module Type
                extend MetronomeSDK::Internal::Type::Enum

                POSTPAID_COMMIT_ROLLOVER = :POSTPAID_COMMIT_ROLLOVER

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class UnionMember10 < MetronomeSDK::Internal::Type::BaseModel
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
              #   @return [Symbol, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember10::Type]
              required :type,
                       enum: -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember10::Type }

              # @!attribute contract_id
              #
              #   @return [String, nil]
              optional :contract_id, String

              # @!method initialize(amount:, invoice_id:, timestamp:, type:, contract_id: nil)
              #   @param amount [Float]
              #   @param invoice_id [String]
              #   @param timestamp [Time]
              #   @param type [Symbol, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember10::Type]
              #   @param contract_id [String]

              # @see MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember10#type
              module Type
                extend MetronomeSDK::Internal::Type::Enum

                POSTPAID_COMMIT_TRUEUP = :POSTPAID_COMMIT_TRUEUP

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class UnionMember11 < MetronomeSDK::Internal::Type::BaseModel
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
              #   @return [Symbol, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember11::Type]
              required :type,
                       enum: -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember11::Type }

              # @!method initialize(amount:, reason:, timestamp:, type:)
              #   @param amount [Float]
              #   @param reason [String]
              #   @param timestamp [Time]
              #   @param type [Symbol, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember11::Type]

              # @see MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember11#type
              module Type
                extend MetronomeSDK::Internal::Type::Enum

                PREPAID_COMMIT_MANUAL = :PREPAID_COMMIT_MANUAL

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class UnionMember12 < MetronomeSDK::Internal::Type::BaseModel
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
              #   @return [Symbol, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember12::Type]
              required :type,
                       enum: -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember12::Type }

              # @!method initialize(amount:, reason:, timestamp:, type:)
              #   @param amount [Float]
              #   @param reason [String]
              #   @param timestamp [Time]
              #   @param type [Symbol, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember12::Type]

              # @see MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember12#type
              module Type
                extend MetronomeSDK::Internal::Type::Enum

                POSTPAID_COMMIT_MANUAL = :POSTPAID_COMMIT_MANUAL

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class UnionMember13 < MetronomeSDK::Internal::Type::BaseModel
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
              #   @return [Symbol, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember13::Type]
              required :type,
                       enum: -> { MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember13::Type }

              # @!method initialize(amount:, timestamp:, type:)
              #   @param amount [Float]
              #   @param timestamp [Time]
              #   @param type [Symbol, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember13::Type]

              # @see MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember13#type
              module Type
                extend MetronomeSDK::Internal::Type::Enum

                POSTPAID_COMMIT_EXPIRATION = :POSTPAID_COMMIT_EXPIRATION

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @!method self.variants
            #   @return [Array(MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember0, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember1, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember2, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember3, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember4, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember5, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember6, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember7, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember8, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember9, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember10, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember11, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember12, MetronomeSDK::Models::V1::Customers::CommitListResponse::Ledger::UnionMember13)]
          end

          # @see MetronomeSDK::Models::V1::Customers::CommitListResponse#rate_type
          module RateType
            extend MetronomeSDK::Internal::Type::Enum

            COMMIT_RATE = :COMMIT_RATE
            LIST_RATE = :LIST_RATE

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see MetronomeSDK::Models::V1::Customers::CommitListResponse#rolled_over_from
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
            #   {MetronomeSDK::Models::V1::Customers::CommitListResponse::Specifier} for more
            #   details.
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
  end
end
