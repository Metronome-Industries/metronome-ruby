# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V2
      # @see MetronomeSDK::Resources::V2::Contracts#get_edit_history
      class ContractGetEditHistoryResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data>]
        required :data,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data] }

        # @!method initialize(data:)
        #   @param data [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data>]

        class Data < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute add_commits
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit>, nil]
          optional :add_commits,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit] }

          # @!attribute add_credits
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit>, nil]
          optional :add_credits,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit] }

          # @!attribute add_discounts
          #
          #   @return [Array<MetronomeSDK::Models::Discount>, nil]
          optional :add_discounts, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Discount] }

          # @!attribute add_overrides
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride>, nil]
          optional :add_overrides,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride] }

          # @!attribute add_prepaid_balance_threshold_configuration
          #
          #   @return [MetronomeSDK::Models::PrepaidBalanceThresholdConfigurationV2, nil]
          optional :add_prepaid_balance_threshold_configuration,
                   -> { MetronomeSDK::PrepaidBalanceThresholdConfigurationV2 }

          # @!attribute add_pro_services
          #
          #   @return [Array<MetronomeSDK::Models::ProService>, nil]
          optional :add_pro_services, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::ProService] }

          # @!attribute add_recurring_commits
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit>, nil]
          optional :add_recurring_commits,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit] }

          # @!attribute add_recurring_credits
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit>, nil]
          optional :add_recurring_credits,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit] }

          # @!attribute add_reseller_royalties
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddResellerRoyalty>, nil]
          optional :add_reseller_royalties,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddResellerRoyalty] }

          # @!attribute add_scheduled_charges
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddScheduledCharge>, nil]
          optional :add_scheduled_charges,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddScheduledCharge] }

          # @!attribute add_spend_threshold_configuration
          #
          #   @return [MetronomeSDK::Models::SpendThresholdConfigurationV2, nil]
          optional :add_spend_threshold_configuration, -> { MetronomeSDK::SpendThresholdConfigurationV2 }

          # @!attribute add_subscriptions
          #   List of subscriptions on the contract.
          #
          #   @return [Array<MetronomeSDK::Models::Subscription>, nil]
          optional :add_subscriptions, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Subscription] }

          # @!attribute add_usage_filters
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddUsageFilter>, nil]
          optional :add_usage_filters,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddUsageFilter] }

          # @!attribute archive_commits
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveCommit>, nil]
          optional :archive_commits,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveCommit] }

          # @!attribute archive_credits
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveCredit>, nil]
          optional :archive_credits,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveCredit] }

          # @!attribute archive_scheduled_charges
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveScheduledCharge>, nil]
          optional :archive_scheduled_charges,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveScheduledCharge] }

          # @!attribute remove_overrides
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::RemoveOverride>, nil]
          optional :remove_overrides,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::RemoveOverride] }

          # @!attribute timestamp
          #
          #   @return [Time, nil]
          optional :timestamp, Time

          # @!attribute uniqueness_key
          #   Prevents the creation of duplicates. If a request to create a record is made
          #   with a previously used uniqueness key, a new record will not be created and the
          #   request will fail with a 409 error.
          #
          #   @return [String, nil]
          optional :uniqueness_key, String

          # @!attribute update_commits
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit>, nil]
          optional :update_commits,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit] }

          # @!attribute update_contract_end_date
          #
          #   @return [Time, nil]
          optional :update_contract_end_date, Time

          # @!attribute update_contract_name
          #   Value to update the contract name to. If not provided, the contract name will
          #   remain unchanged.
          #
          #   @return [String, nil]
          optional :update_contract_name, String, nil?: true

          # @!attribute update_credits
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit>, nil]
          optional :update_credits,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit] }

          # @!attribute update_discounts
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount>, nil]
          optional :update_discounts,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount] }

          # @!attribute update_prepaid_balance_threshold_configuration
          #
          #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration, nil]
          optional :update_prepaid_balance_threshold_configuration,
                   -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration }

          # @!attribute update_recurring_commits
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCommit>, nil]
          optional :update_recurring_commits,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCommit] }

          # @!attribute update_recurring_credits
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCredit>, nil]
          optional :update_recurring_credits,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCredit] }

          # @!attribute update_refund_invoices
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRefundInvoice>, nil]
          optional :update_refund_invoices,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRefundInvoice] }

          # @!attribute update_scheduled_charges
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge>, nil]
          optional :update_scheduled_charges,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge] }

          # @!attribute update_spend_threshold_configuration
          #
          #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration, nil]
          optional :update_spend_threshold_configuration,
                   -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration }

          # @!attribute update_subscriptions
          #   Optional list of subscriptions to update.
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription>, nil]
          optional :update_subscriptions,
                   -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription] }

          # @!method initialize(id:, add_commits: nil, add_credits: nil, add_discounts: nil, add_overrides: nil, add_prepaid_balance_threshold_configuration: nil, add_pro_services: nil, add_recurring_commits: nil, add_recurring_credits: nil, add_reseller_royalties: nil, add_scheduled_charges: nil, add_spend_threshold_configuration: nil, add_subscriptions: nil, add_usage_filters: nil, archive_commits: nil, archive_credits: nil, archive_scheduled_charges: nil, remove_overrides: nil, timestamp: nil, uniqueness_key: nil, update_commits: nil, update_contract_end_date: nil, update_contract_name: nil, update_credits: nil, update_discounts: nil, update_prepaid_balance_threshold_configuration: nil, update_recurring_commits: nil, update_recurring_credits: nil, update_refund_invoices: nil, update_scheduled_charges: nil, update_spend_threshold_configuration: nil, update_subscriptions: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data} for more
          #   details.
          #
          #   @param id [String]
          #
          #   @param add_commits [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit>]
          #
          #   @param add_credits [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit>]
          #
          #   @param add_discounts [Array<MetronomeSDK::Models::Discount>]
          #
          #   @param add_overrides [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride>]
          #
          #   @param add_prepaid_balance_threshold_configuration [MetronomeSDK::Models::PrepaidBalanceThresholdConfigurationV2]
          #
          #   @param add_pro_services [Array<MetronomeSDK::Models::ProService>]
          #
          #   @param add_recurring_commits [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit>]
          #
          #   @param add_recurring_credits [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit>]
          #
          #   @param add_reseller_royalties [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddResellerRoyalty>]
          #
          #   @param add_scheduled_charges [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddScheduledCharge>]
          #
          #   @param add_spend_threshold_configuration [MetronomeSDK::Models::SpendThresholdConfigurationV2]
          #
          #   @param add_subscriptions [Array<MetronomeSDK::Models::Subscription>] List of subscriptions on the contract.
          #
          #   @param add_usage_filters [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddUsageFilter>]
          #
          #   @param archive_commits [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveCommit>]
          #
          #   @param archive_credits [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveCredit>]
          #
          #   @param archive_scheduled_charges [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::ArchiveScheduledCharge>]
          #
          #   @param remove_overrides [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::RemoveOverride>]
          #
          #   @param timestamp [Time]
          #
          #   @param uniqueness_key [String] Prevents the creation of duplicates. If a request to create a record is made wit
          #
          #   @param update_commits [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit>]
          #
          #   @param update_contract_end_date [Time]
          #
          #   @param update_contract_name [String, nil] Value to update the contract name to. If not provided, the contract name will re
          #
          #   @param update_credits [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit>]
          #
          #   @param update_discounts [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount>]
          #
          #   @param update_prepaid_balance_threshold_configuration [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration]
          #
          #   @param update_recurring_commits [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCommit>]
          #
          #   @param update_recurring_credits [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCredit>]
          #
          #   @param update_refund_invoices [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRefundInvoice>]
          #
          #   @param update_scheduled_charges [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge>]
          #
          #   @param update_spend_threshold_configuration [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration]
          #
          #   @param update_subscriptions [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription>] Optional list of subscriptions to update.

          class AddCommit < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute product
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::Product]
            required :product,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::Product }

            # @!attribute type
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::Type]
            required :type,
                     enum: -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::Type }

            # @!attribute access_schedule
            #   The schedule that the customer will gain access to the credits purposed with
            #   this commit.
            #
            #   @return [MetronomeSDK::Models::ScheduleDuration, nil]
            optional :access_schedule, -> { MetronomeSDK::ScheduleDuration }

            # @!attribute applicable_product_ids
            #
            #   @return [Array<String>, nil]
            optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!attribute applicable_product_tags
            #
            #   @return [Array<String>, nil]
            optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!attribute description
            #
            #   @return [String, nil]
            optional :description, String

            # @!attribute hierarchy_configuration
            #   Optional configuration for commit hierarchy access control
            #
            #   @return [MetronomeSDK::Models::CommitHierarchyConfiguration, nil]
            optional :hierarchy_configuration, -> { MetronomeSDK::CommitHierarchyConfiguration }

            # @!attribute invoice_schedule
            #   The schedule that the customer will be invoiced for this commit.
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::InvoiceSchedule, nil]
            optional :invoice_schedule,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::InvoiceSchedule }

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
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::RateType, nil]
            optional :rate_type,
                     enum: -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::RateType }

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
            #   specifiers to contribute to a commit's or credit's drawdown. This field cannot
            #   be used together with `applicable_product_ids` or `applicable_product_tags`.
            #   Instead, to target usage by product or product tag, pass those values in the
            #   body of `specifiers`.
            #
            #   @return [Array<MetronomeSDK::Models::CommitSpecifierInput>, nil]
            optional :specifiers, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::CommitSpecifierInput] }

            # @!method initialize(id:, product:, type:, access_schedule: nil, applicable_product_ids: nil, applicable_product_tags: nil, description: nil, hierarchy_configuration: nil, invoice_schedule: nil, name: nil, netsuite_sales_order_id: nil, priority: nil, rate_type: nil, rollover_fraction: nil, salesforce_opportunity_id: nil, specifiers: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit} for
            #   more details.
            #
            #   @param id [String]
            #
            #   @param product [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::Product]
            #
            #   @param type [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::Type]
            #
            #   @param access_schedule [MetronomeSDK::Models::ScheduleDuration] The schedule that the customer will gain access to the credits purposed with thi
            #
            #   @param applicable_product_ids [Array<String>]
            #
            #   @param applicable_product_tags [Array<String>]
            #
            #   @param description [String]
            #
            #   @param hierarchy_configuration [MetronomeSDK::Models::CommitHierarchyConfiguration] Optional configuration for commit hierarchy access control
            #
            #   @param invoice_schedule [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::InvoiceSchedule] The schedule that the customer will be invoiced for this commit.
            #
            #   @param name [String]
            #
            #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
            #
            #   @param priority [Float] If multiple credits or commits are applicable, the one with the lower priority w
            #
            #   @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::RateType]
            #
            #   @param rollover_fraction [Float]
            #
            #   @param salesforce_opportunity_id [String] This field's availability is dependent on your client's configuration.
            #
            #   @param specifiers [Array<MetronomeSDK::Models::CommitSpecifierInput>] List of filters that determine what kind of customer usage draws down a commit o

            # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit#product
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

            # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit#type
            module Type
              extend MetronomeSDK::Internal::Type::Enum

              PREPAID = :PREPAID
              POSTPAID = :POSTPAID

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit#invoice_schedule
            class InvoiceSchedule < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute credit_type
              #
              #   @return [MetronomeSDK::Models::CreditTypeData, nil]
              optional :credit_type, -> { MetronomeSDK::CreditTypeData }

              # @!attribute do_not_invoice
              #   If true, this schedule will not generate an invoice.
              #
              #   @return [Boolean, nil]
              optional :do_not_invoice, MetronomeSDK::Internal::Type::Boolean

              # @!attribute schedule_items
              #
              #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::InvoiceSchedule::ScheduleItem>, nil]
              optional :schedule_items,
                       -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::InvoiceSchedule::ScheduleItem] }

              # @!method initialize(credit_type: nil, do_not_invoice: nil, schedule_items: nil)
              #   The schedule that the customer will be invoiced for this commit.
              #
              #   @param credit_type [MetronomeSDK::Models::CreditTypeData]
              #
              #   @param do_not_invoice [Boolean] If true, this schedule will not generate an invoice.
              #
              #   @param schedule_items [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit::InvoiceSchedule::ScheduleItem>]

              class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute timestamp
                #
                #   @return [Time]
                required :timestamp, Time

                # @!attribute amount
                #
                #   @return [Float, nil]
                optional :amount, Float

                # @!attribute invoice_id
                #
                #   @return [String, nil]
                optional :invoice_id, String, nil?: true

                # @!attribute quantity
                #
                #   @return [Float, nil]
                optional :quantity, Float

                # @!attribute unit_price
                #
                #   @return [Float, nil]
                optional :unit_price, Float

                # @!method initialize(id:, timestamp:, amount: nil, invoice_id: nil, quantity: nil, unit_price: nil)
                #   @param id [String]
                #   @param timestamp [Time]
                #   @param amount [Float]
                #   @param invoice_id [String, nil]
                #   @param quantity [Float]
                #   @param unit_price [Float]
              end
            end

            # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCommit#rate_type
            module RateType
              extend MetronomeSDK::Internal::Type::Enum

              COMMIT_RATE = :COMMIT_RATE
              LIST_RATE = :LIST_RATE

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class AddCredit < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute product
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::Product]
            required :product,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::Product }

            # @!attribute type
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::Type]
            required :type,
                     enum: -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::Type }

            # @!attribute access_schedule
            #   The schedule that the customer will gain access to the credits.
            #
            #   @return [MetronomeSDK::Models::ScheduleDuration, nil]
            optional :access_schedule, -> { MetronomeSDK::ScheduleDuration }

            # @!attribute applicable_product_ids
            #
            #   @return [Array<String>, nil]
            optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!attribute applicable_product_tags
            #
            #   @return [Array<String>, nil]
            optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!attribute description
            #
            #   @return [String, nil]
            optional :description, String

            # @!attribute hierarchy_configuration
            #   Optional configuration for recurring credit hierarchy access control
            #
            #   @return [MetronomeSDK::Models::CommitHierarchyConfiguration, nil]
            optional :hierarchy_configuration, -> { MetronomeSDK::CommitHierarchyConfiguration }

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

            # @!attribute salesforce_opportunity_id
            #   This field's availability is dependent on your client's configuration.
            #
            #   @return [String, nil]
            optional :salesforce_opportunity_id, String

            # @!attribute specifiers
            #   List of filters that determine what kind of customer usage draws down a commit
            #   or credit. A customer's usage needs to meet the condition of at least one of the
            #   specifiers to contribute to a commit's or credit's drawdown. This field cannot
            #   be used together with `applicable_product_ids` or `applicable_product_tags`.
            #   Instead, to target usage by product or product tag, pass those values in the
            #   body of `specifiers`.
            #
            #   @return [Array<MetronomeSDK::Models::CommitSpecifierInput>, nil]
            optional :specifiers, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::CommitSpecifierInput] }

            # @!method initialize(id:, product:, type:, access_schedule: nil, applicable_product_ids: nil, applicable_product_tags: nil, description: nil, hierarchy_configuration: nil, name: nil, netsuite_sales_order_id: nil, priority: nil, salesforce_opportunity_id: nil, specifiers: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit} for
            #   more details.
            #
            #   @param id [String]
            #
            #   @param product [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::Product]
            #
            #   @param type [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit::Type]
            #
            #   @param access_schedule [MetronomeSDK::Models::ScheduleDuration] The schedule that the customer will gain access to the credits.
            #
            #   @param applicable_product_ids [Array<String>]
            #
            #   @param applicable_product_tags [Array<String>]
            #
            #   @param description [String]
            #
            #   @param hierarchy_configuration [MetronomeSDK::Models::CommitHierarchyConfiguration] Optional configuration for recurring credit hierarchy access control
            #
            #   @param name [String]
            #
            #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
            #
            #   @param priority [Float] If multiple credits or commits are applicable, the one with the lower priority w
            #
            #   @param salesforce_opportunity_id [String] This field's availability is dependent on your client's configuration.
            #
            #   @param specifiers [Array<MetronomeSDK::Models::CommitSpecifierInput>] List of filters that determine what kind of customer usage draws down a commit o

            # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit#product
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

            # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddCredit#type
            module Type
              extend MetronomeSDK::Internal::Type::Enum

              CREDIT = :CREDIT

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class AddOverride < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute starting_at
            #
            #   @return [Time]
            required :starting_at, Time

            # @!attribute applicable_product_tags
            #
            #   @return [Array<String>, nil]
            optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!attribute ending_before
            #
            #   @return [Time, nil]
            optional :ending_before, Time

            # @!attribute entitled
            #
            #   @return [Boolean, nil]
            optional :entitled, MetronomeSDK::Internal::Type::Boolean

            # @!attribute is_commit_specific
            #
            #   @return [Boolean, nil]
            optional :is_commit_specific, MetronomeSDK::Internal::Type::Boolean

            # @!attribute multiplier
            #
            #   @return [Float, nil]
            optional :multiplier, Float

            # @!attribute override_specifiers
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideSpecifier>, nil]
            optional :override_specifiers,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideSpecifier] }

            # @!attribute override_tiers
            #
            #   @return [Array<MetronomeSDK::Models::OverrideTier>, nil]
            optional :override_tiers, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::OverrideTier] }

            # @!attribute overwrite_rate
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverwriteRate, nil]
            optional :overwrite_rate,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverwriteRate }

            # @!attribute priority
            #
            #   @return [Float, nil]
            optional :priority, Float

            # @!attribute product
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Product, nil]
            optional :product,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Product }

            # @!attribute target
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Target, nil]
            optional :target,
                     enum: -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Target }

            # @!attribute type
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Type, nil]
            optional :type,
                     enum: -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Type }

            # @!method initialize(id:, starting_at:, applicable_product_tags: nil, ending_before: nil, entitled: nil, is_commit_specific: nil, multiplier: nil, override_specifiers: nil, override_tiers: nil, overwrite_rate: nil, priority: nil, product: nil, target: nil, type: nil)
            #   @param id [String]
            #   @param starting_at [Time]
            #   @param applicable_product_tags [Array<String>]
            #   @param ending_before [Time]
            #   @param entitled [Boolean]
            #   @param is_commit_specific [Boolean]
            #   @param multiplier [Float]
            #   @param override_specifiers [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideSpecifier>]
            #   @param override_tiers [Array<MetronomeSDK::Models::OverrideTier>]
            #   @param overwrite_rate [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverwriteRate]
            #   @param priority [Float]
            #   @param product [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Product]
            #   @param target [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Target]
            #   @param type [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::Type]

            class OverrideSpecifier < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute billing_frequency
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideSpecifier::BillingFrequency, nil]
              optional :billing_frequency,
                       enum: -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideSpecifier::BillingFrequency }

              # @!attribute commit_ids
              #
              #   @return [Array<String>, nil]
              optional :commit_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute presentation_group_values
              #
              #   @return [Hash{Symbol=>String, nil}, nil]
              optional :presentation_group_values, MetronomeSDK::Internal::Type::HashOf[String, nil?: true]

              # @!attribute pricing_group_values
              #
              #   @return [Hash{Symbol=>String}, nil]
              optional :pricing_group_values, MetronomeSDK::Internal::Type::HashOf[String]

              # @!attribute product_id
              #
              #   @return [String, nil]
              optional :product_id, String

              # @!attribute product_tags
              #
              #   @return [Array<String>, nil]
              optional :product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute recurring_commit_ids
              #
              #   @return [Array<String>, nil]
              optional :recurring_commit_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!attribute recurring_credit_ids
              #
              #   @return [Array<String>, nil]
              optional :recurring_credit_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

              # @!method initialize(billing_frequency: nil, commit_ids: nil, presentation_group_values: nil, pricing_group_values: nil, product_id: nil, product_tags: nil, recurring_commit_ids: nil, recurring_credit_ids: nil)
              #   @param billing_frequency [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideSpecifier::BillingFrequency]
              #   @param commit_ids [Array<String>]
              #   @param presentation_group_values [Hash{Symbol=>String, nil}]
              #   @param pricing_group_values [Hash{Symbol=>String}]
              #   @param product_id [String]
              #   @param product_tags [Array<String>]
              #   @param recurring_commit_ids [Array<String>]
              #   @param recurring_credit_ids [Array<String>]

              # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverrideSpecifier#billing_frequency
              module BillingFrequency
                extend MetronomeSDK::Internal::Type::Enum

                MONTHLY = :MONTHLY
                QUARTERLY = :QUARTERLY
                ANNUAL = :ANNUAL
                WEEKLY = :WEEKLY

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride#overwrite_rate
            class OverwriteRate < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute rate_type
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverwriteRate::RateType]
              required :rate_type,
                       enum: -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverwriteRate::RateType }

              # @!attribute credit_type
              #
              #   @return [MetronomeSDK::Models::CreditTypeData, nil]
              optional :credit_type, -> { MetronomeSDK::CreditTypeData }

              # @!attribute custom_rate
              #   Only set for CUSTOM rate_type. This field is interpreted by custom rate
              #   processors.
              #
              #   @return [Hash{Symbol=>Object}, nil]
              optional :custom_rate, MetronomeSDK::Internal::Type::HashOf[MetronomeSDK::Internal::Type::Unknown]

              # @!attribute is_prorated
              #   Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
              #   set to true.
              #
              #   @return [Boolean, nil]
              optional :is_prorated, MetronomeSDK::Internal::Type::Boolean

              # @!attribute price
              #   Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
              #   this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
              #
              #   @return [Float, nil]
              optional :price, Float

              # @!attribute quantity
              #   Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
              #
              #   @return [Float, nil]
              optional :quantity, Float

              # @!attribute tiers
              #   Only set for TIERED rate_type.
              #
              #   @return [Array<MetronomeSDK::Models::Tier>, nil]
              optional :tiers, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Tier] }

              # @!method initialize(rate_type:, credit_type: nil, custom_rate: nil, is_prorated: nil, price: nil, quantity: nil, tiers: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverwriteRate}
              #   for more details.
              #
              #   @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverwriteRate::RateType]
              #
              #   @param credit_type [MetronomeSDK::Models::CreditTypeData]
              #
              #   @param custom_rate [Hash{Symbol=>Object}] Only set for CUSTOM rate_type. This field is interpreted by custom rate processo
              #
              #   @param is_prorated [Boolean] Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
              #
              #   @param price [Float] Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type, t
              #
              #   @param quantity [Float] Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
              #
              #   @param tiers [Array<MetronomeSDK::Models::Tier>] Only set for TIERED rate_type.

              # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride::OverwriteRate#rate_type
              module RateType
                extend MetronomeSDK::Internal::Type::Enum

                FLAT = :FLAT
                PERCENTAGE = :PERCENTAGE
                SUBSCRIPTION = :SUBSCRIPTION
                TIERED = :TIERED
                TIERED_PERCENTAGE = :TIERED_PERCENTAGE
                CUSTOM = :CUSTOM

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride#product
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

            # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride#target
            module Target
              extend MetronomeSDK::Internal::Type::Enum

              COMMIT_RATE = :COMMIT_RATE
              LIST_RATE = :LIST_RATE

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddOverride#type
            module Type
              extend MetronomeSDK::Internal::Type::Enum

              OVERWRITE = :OVERWRITE
              MULTIPLIER = :MULTIPLIER
              TIERED = :TIERED

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class AddRecurringCommit < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute access_amount
            #   The amount of commit to grant.
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::AccessAmount]
            required :access_amount,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::AccessAmount }

            # @!attribute commit_duration
            #   The amount of time the created commits will be valid for
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::CommitDuration]
            required :commit_duration,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::CommitDuration }

            # @!attribute priority
            #   Will be passed down to the individual commits
            #
            #   @return [Float]
            required :priority, Float

            # @!attribute product
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Product]
            required :product,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Product }

            # @!attribute rate_type
            #   Whether the created commits will use the commit rate or list rate
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::RateType]
            required :rate_type,
                     enum: -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::RateType }

            # @!attribute starting_at
            #   Determines the start time for the first commit
            #
            #   @return [Time]
            required :starting_at, Time

            # @!attribute applicable_product_ids
            #   Will be passed down to the individual commits
            #
            #   @return [Array<String>, nil]
            optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!attribute applicable_product_tags
            #   Will be passed down to the individual commits
            #
            #   @return [Array<String>, nil]
            optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!attribute contract
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Contract, nil]
            optional :contract,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Contract }

            # @!attribute description
            #   Will be passed down to the individual commits
            #
            #   @return [String, nil]
            optional :description, String

            # @!attribute ending_before
            #   Determines when the contract will stop creating recurring commits. Optional
            #
            #   @return [Time, nil]
            optional :ending_before, Time

            # @!attribute hierarchy_configuration
            #   Optional configuration for recurring credit hierarchy access control
            #
            #   @return [MetronomeSDK::Models::CommitHierarchyConfiguration, nil]
            optional :hierarchy_configuration, -> { MetronomeSDK::CommitHierarchyConfiguration }

            # @!attribute invoice_amount
            #   The amount the customer should be billed for the commit. Not required.
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::InvoiceAmount, nil]
            optional :invoice_amount,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::InvoiceAmount }

            # @!attribute name
            #   Displayed on invoices. Will be passed through to the individual commits
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute netsuite_sales_order_id
            #   Will be passed down to the individual commits
            #
            #   @return [String, nil]
            optional :netsuite_sales_order_id, String

            # @!attribute proration
            #   Determines whether the first and last commit will be prorated. If not provided,
            #   the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Proration, nil]
            optional :proration,
                     enum: -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Proration }

            # @!attribute recurrence_frequency
            #   The frequency at which the recurring commits will be created. If not provided: -
            #   The commits will be created on the usage invoice frequency. If provided: - The
            #   period defined in the duration will correspond to this frequency. - Commits will
            #   be created aligned with the recurring commit's starting_at rather than the usage
            #   invoice dates.
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::RecurrenceFrequency, nil]
            optional :recurrence_frequency,
                     enum: -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::RecurrenceFrequency }

            # @!attribute rollover_fraction
            #   Will be passed down to the individual commits. This controls how much of an
            #   individual unexpired commit will roll over upon contract transition. Must be
            #   between 0 and 1.
            #
            #   @return [Float, nil]
            optional :rollover_fraction, Float

            # @!attribute specifiers
            #   List of filters that determine what kind of customer usage draws down a commit
            #   or credit. A customer's usage needs to meet the condition of at least one of the
            #   specifiers to contribute to a commit's or credit's drawdown.
            #
            #   @return [Array<MetronomeSDK::Models::CommitSpecifier>, nil]
            optional :specifiers, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::CommitSpecifier] }

            # @!attribute subscription_config
            #   Attach a subscription to the recurring commit/credit.
            #
            #   @return [MetronomeSDK::Models::RecurringCommitSubscriptionConfig, nil]
            optional :subscription_config, -> { MetronomeSDK::RecurringCommitSubscriptionConfig }

            # @!method initialize(id:, access_amount:, commit_duration:, priority:, product:, rate_type:, starting_at:, applicable_product_ids: nil, applicable_product_tags: nil, contract: nil, description: nil, ending_before: nil, hierarchy_configuration: nil, invoice_amount: nil, name: nil, netsuite_sales_order_id: nil, proration: nil, recurrence_frequency: nil, rollover_fraction: nil, specifiers: nil, subscription_config: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit}
            #   for more details.
            #
            #   @param id [String]
            #
            #   @param access_amount [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::AccessAmount] The amount of commit to grant.
            #
            #   @param commit_duration [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::CommitDuration] The amount of time the created commits will be valid for
            #
            #   @param priority [Float] Will be passed down to the individual commits
            #
            #   @param product [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Product]
            #
            #   @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::RateType] Whether the created commits will use the commit rate or list rate
            #
            #   @param starting_at [Time] Determines the start time for the first commit
            #
            #   @param applicable_product_ids [Array<String>] Will be passed down to the individual commits
            #
            #   @param applicable_product_tags [Array<String>] Will be passed down to the individual commits
            #
            #   @param contract [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Contract]
            #
            #   @param description [String] Will be passed down to the individual commits
            #
            #   @param ending_before [Time] Determines when the contract will stop creating recurring commits. Optional
            #
            #   @param hierarchy_configuration [MetronomeSDK::Models::CommitHierarchyConfiguration] Optional configuration for recurring credit hierarchy access control
            #
            #   @param invoice_amount [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::InvoiceAmount] The amount the customer should be billed for the commit. Not required.
            #
            #   @param name [String] Displayed on invoices. Will be passed through to the individual commits
            #
            #   @param netsuite_sales_order_id [String] Will be passed down to the individual commits
            #
            #   @param proration [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::Proration] Determines whether the first and last commit will be prorated. If not provided,
            #
            #   @param recurrence_frequency [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::RecurrenceFrequency] The frequency at which the recurring commits will be created. If not provided: -
            #
            #   @param rollover_fraction [Float] Will be passed down to the individual commits. This controls how much of an indi
            #
            #   @param specifiers [Array<MetronomeSDK::Models::CommitSpecifier>] List of filters that determine what kind of customer usage draws down a commit o
            #
            #   @param subscription_config [MetronomeSDK::Models::RecurringCommitSubscriptionConfig] Attach a subscription to the recurring commit/credit.

            # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit#access_amount
            class AccessAmount < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute credit_type_id
              #
              #   @return [String]
              required :credit_type_id, String

              # @!attribute unit_price
              #
              #   @return [Float]
              required :unit_price, Float

              # @!attribute quantity
              #
              #   @return [Float, nil]
              optional :quantity, Float

              # @!method initialize(credit_type_id:, unit_price:, quantity: nil)
              #   The amount of commit to grant.
              #
              #   @param credit_type_id [String]
              #   @param unit_price [Float]
              #   @param quantity [Float]
            end

            # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit#commit_duration
            class CommitDuration < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute value
              #
              #   @return [Float]
              required :value, Float

              # @!attribute unit
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::CommitDuration::Unit, nil]
              optional :unit,
                       enum: -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::CommitDuration::Unit }

              # @!method initialize(value:, unit: nil)
              #   The amount of time the created commits will be valid for
              #
              #   @param value [Float]
              #   @param unit [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::CommitDuration::Unit]

              # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit::CommitDuration#unit
              module Unit
                extend MetronomeSDK::Internal::Type::Enum

                PERIODS = :PERIODS

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit#product
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

            # Whether the created commits will use the commit rate or list rate
            #
            # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit#rate_type
            module RateType
              extend MetronomeSDK::Internal::Type::Enum

              COMMIT_RATE = :COMMIT_RATE
              LIST_RATE = :LIST_RATE

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit#contract
            class Contract < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!method initialize(id:)
              #   @param id [String]
            end

            # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit#invoice_amount
            class InvoiceAmount < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute credit_type_id
              #
              #   @return [String]
              required :credit_type_id, String

              # @!attribute quantity
              #
              #   @return [Float]
              required :quantity, Float

              # @!attribute unit_price
              #
              #   @return [Float]
              required :unit_price, Float

              # @!method initialize(credit_type_id:, quantity:, unit_price:)
              #   The amount the customer should be billed for the commit. Not required.
              #
              #   @param credit_type_id [String]
              #   @param quantity [Float]
              #   @param unit_price [Float]
            end

            # Determines whether the first and last commit will be prorated. If not provided,
            # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
            #
            # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit#proration
            module Proration
              extend MetronomeSDK::Internal::Type::Enum

              NONE = :NONE
              FIRST = :FIRST
              LAST = :LAST
              FIRST_AND_LAST = :FIRST_AND_LAST

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # The frequency at which the recurring commits will be created. If not provided: -
            # The commits will be created on the usage invoice frequency. If provided: - The
            # period defined in the duration will correspond to this frequency. - Commits will
            # be created aligned with the recurring commit's starting_at rather than the usage
            # invoice dates.
            #
            # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCommit#recurrence_frequency
            module RecurrenceFrequency
              extend MetronomeSDK::Internal::Type::Enum

              MONTHLY = :MONTHLY
              QUARTERLY = :QUARTERLY
              ANNUAL = :ANNUAL
              WEEKLY = :WEEKLY

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class AddRecurringCredit < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute access_amount
            #   The amount of commit to grant.
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::AccessAmount]
            required :access_amount,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::AccessAmount }

            # @!attribute commit_duration
            #   The amount of time the created commits will be valid for
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::CommitDuration]
            required :commit_duration,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::CommitDuration }

            # @!attribute priority
            #   Will be passed down to the individual commits
            #
            #   @return [Float]
            required :priority, Float

            # @!attribute product
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Product]
            required :product,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Product }

            # @!attribute rate_type
            #   Whether the created commits will use the commit rate or list rate
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::RateType]
            required :rate_type,
                     enum: -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::RateType }

            # @!attribute starting_at
            #   Determines the start time for the first commit
            #
            #   @return [Time]
            required :starting_at, Time

            # @!attribute applicable_product_ids
            #   Will be passed down to the individual commits
            #
            #   @return [Array<String>, nil]
            optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!attribute applicable_product_tags
            #   Will be passed down to the individual commits
            #
            #   @return [Array<String>, nil]
            optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!attribute contract
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Contract, nil]
            optional :contract,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Contract }

            # @!attribute description
            #   Will be passed down to the individual commits
            #
            #   @return [String, nil]
            optional :description, String

            # @!attribute ending_before
            #   Determines when the contract will stop creating recurring commits. Optional
            #
            #   @return [Time, nil]
            optional :ending_before, Time

            # @!attribute hierarchy_configuration
            #   Optional configuration for recurring credit hierarchy access control
            #
            #   @return [MetronomeSDK::Models::CommitHierarchyConfiguration, nil]
            optional :hierarchy_configuration, -> { MetronomeSDK::CommitHierarchyConfiguration }

            # @!attribute name
            #   Displayed on invoices. Will be passed through to the individual commits
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute netsuite_sales_order_id
            #   Will be passed down to the individual commits
            #
            #   @return [String, nil]
            optional :netsuite_sales_order_id, String

            # @!attribute proration
            #   Determines whether the first and last commit will be prorated. If not provided,
            #   the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Proration, nil]
            optional :proration,
                     enum: -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Proration }

            # @!attribute recurrence_frequency
            #   The frequency at which the recurring commits will be created. If not provided: -
            #   The commits will be created on the usage invoice frequency. If provided: - The
            #   period defined in the duration will correspond to this frequency. - Commits will
            #   be created aligned with the recurring commit's starting_at rather than the usage
            #   invoice dates.
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::RecurrenceFrequency, nil]
            optional :recurrence_frequency,
                     enum: -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::RecurrenceFrequency }

            # @!attribute rollover_fraction
            #   Will be passed down to the individual commits. This controls how much of an
            #   individual unexpired commit will roll over upon contract transition. Must be
            #   between 0 and 1.
            #
            #   @return [Float, nil]
            optional :rollover_fraction, Float

            # @!attribute specifiers
            #   List of filters that determine what kind of customer usage draws down a commit
            #   or credit. A customer's usage needs to meet the condition of at least one of the
            #   specifiers to contribute to a commit's or credit's drawdown.
            #
            #   @return [Array<MetronomeSDK::Models::CommitSpecifier>, nil]
            optional :specifiers, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::CommitSpecifier] }

            # @!attribute subscription_config
            #   Attach a subscription to the recurring commit/credit.
            #
            #   @return [MetronomeSDK::Models::RecurringCommitSubscriptionConfig, nil]
            optional :subscription_config, -> { MetronomeSDK::RecurringCommitSubscriptionConfig }

            # @!method initialize(id:, access_amount:, commit_duration:, priority:, product:, rate_type:, starting_at:, applicable_product_ids: nil, applicable_product_tags: nil, contract: nil, description: nil, ending_before: nil, hierarchy_configuration: nil, name: nil, netsuite_sales_order_id: nil, proration: nil, recurrence_frequency: nil, rollover_fraction: nil, specifiers: nil, subscription_config: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit}
            #   for more details.
            #
            #   @param id [String]
            #
            #   @param access_amount [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::AccessAmount] The amount of commit to grant.
            #
            #   @param commit_duration [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::CommitDuration] The amount of time the created commits will be valid for
            #
            #   @param priority [Float] Will be passed down to the individual commits
            #
            #   @param product [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Product]
            #
            #   @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::RateType] Whether the created commits will use the commit rate or list rate
            #
            #   @param starting_at [Time] Determines the start time for the first commit
            #
            #   @param applicable_product_ids [Array<String>] Will be passed down to the individual commits
            #
            #   @param applicable_product_tags [Array<String>] Will be passed down to the individual commits
            #
            #   @param contract [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Contract]
            #
            #   @param description [String] Will be passed down to the individual commits
            #
            #   @param ending_before [Time] Determines when the contract will stop creating recurring commits. Optional
            #
            #   @param hierarchy_configuration [MetronomeSDK::Models::CommitHierarchyConfiguration] Optional configuration for recurring credit hierarchy access control
            #
            #   @param name [String] Displayed on invoices. Will be passed through to the individual commits
            #
            #   @param netsuite_sales_order_id [String] Will be passed down to the individual commits
            #
            #   @param proration [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::Proration] Determines whether the first and last commit will be prorated. If not provided,
            #
            #   @param recurrence_frequency [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::RecurrenceFrequency] The frequency at which the recurring commits will be created. If not provided: -
            #
            #   @param rollover_fraction [Float] Will be passed down to the individual commits. This controls how much of an indi
            #
            #   @param specifiers [Array<MetronomeSDK::Models::CommitSpecifier>] List of filters that determine what kind of customer usage draws down a commit o
            #
            #   @param subscription_config [MetronomeSDK::Models::RecurringCommitSubscriptionConfig] Attach a subscription to the recurring commit/credit.

            # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit#access_amount
            class AccessAmount < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute credit_type_id
              #
              #   @return [String]
              required :credit_type_id, String

              # @!attribute unit_price
              #
              #   @return [Float]
              required :unit_price, Float

              # @!attribute quantity
              #
              #   @return [Float, nil]
              optional :quantity, Float

              # @!method initialize(credit_type_id:, unit_price:, quantity: nil)
              #   The amount of commit to grant.
              #
              #   @param credit_type_id [String]
              #   @param unit_price [Float]
              #   @param quantity [Float]
            end

            # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit#commit_duration
            class CommitDuration < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute value
              #
              #   @return [Float]
              required :value, Float

              # @!attribute unit
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::CommitDuration::Unit, nil]
              optional :unit,
                       enum: -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::CommitDuration::Unit }

              # @!method initialize(value:, unit: nil)
              #   The amount of time the created commits will be valid for
              #
              #   @param value [Float]
              #   @param unit [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::CommitDuration::Unit]

              # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit::CommitDuration#unit
              module Unit
                extend MetronomeSDK::Internal::Type::Enum

                PERIODS = :PERIODS

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit#product
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

            # Whether the created commits will use the commit rate or list rate
            #
            # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit#rate_type
            module RateType
              extend MetronomeSDK::Internal::Type::Enum

              COMMIT_RATE = :COMMIT_RATE
              LIST_RATE = :LIST_RATE

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit#contract
            class Contract < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!method initialize(id:)
              #   @param id [String]
            end

            # Determines whether the first and last commit will be prorated. If not provided,
            # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
            #
            # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit#proration
            module Proration
              extend MetronomeSDK::Internal::Type::Enum

              NONE = :NONE
              FIRST = :FIRST
              LAST = :LAST
              FIRST_AND_LAST = :FIRST_AND_LAST

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # The frequency at which the recurring commits will be created. If not provided: -
            # The commits will be created on the usage invoice frequency. If provided: - The
            # period defined in the duration will correspond to this frequency. - Commits will
            # be created aligned with the recurring commit's starting_at rather than the usage
            # invoice dates.
            #
            # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddRecurringCredit#recurrence_frequency
            module RecurrenceFrequency
              extend MetronomeSDK::Internal::Type::Enum

              MONTHLY = :MONTHLY
              QUARTERLY = :QUARTERLY
              ANNUAL = :ANNUAL
              WEEKLY = :WEEKLY

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class AddResellerRoyalty < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute reseller_type
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddResellerRoyalty::ResellerType]
            required :reseller_type,
                     enum: -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddResellerRoyalty::ResellerType }

            # @!attribute applicable_product_ids
            #
            #   @return [Array<String>, nil]
            optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!attribute applicable_product_tags
            #
            #   @return [Array<String>, nil]
            optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!attribute aws_account_number
            #
            #   @return [String, nil]
            optional :aws_account_number, String

            # @!attribute aws_offer_id
            #
            #   @return [String, nil]
            optional :aws_offer_id, String

            # @!attribute aws_payer_reference_id
            #
            #   @return [String, nil]
            optional :aws_payer_reference_id, String

            # @!attribute ending_before
            #
            #   @return [Time, nil]
            optional :ending_before, Time, nil?: true

            # @!attribute fraction
            #
            #   @return [Float, nil]
            optional :fraction, Float

            # @!attribute gcp_account_id
            #
            #   @return [String, nil]
            optional :gcp_account_id, String

            # @!attribute gcp_offer_id
            #
            #   @return [String, nil]
            optional :gcp_offer_id, String

            # @!attribute netsuite_reseller_id
            #
            #   @return [String, nil]
            optional :netsuite_reseller_id, String

            # @!attribute reseller_contract_value
            #
            #   @return [Float, nil]
            optional :reseller_contract_value, Float

            # @!attribute starting_at
            #
            #   @return [Time, nil]
            optional :starting_at, Time

            # @!method initialize(reseller_type:, applicable_product_ids: nil, applicable_product_tags: nil, aws_account_number: nil, aws_offer_id: nil, aws_payer_reference_id: nil, ending_before: nil, fraction: nil, gcp_account_id: nil, gcp_offer_id: nil, netsuite_reseller_id: nil, reseller_contract_value: nil, starting_at: nil)
            #   @param reseller_type [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddResellerRoyalty::ResellerType]
            #   @param applicable_product_ids [Array<String>]
            #   @param applicable_product_tags [Array<String>]
            #   @param aws_account_number [String]
            #   @param aws_offer_id [String]
            #   @param aws_payer_reference_id [String]
            #   @param ending_before [Time, nil]
            #   @param fraction [Float]
            #   @param gcp_account_id [String]
            #   @param gcp_offer_id [String]
            #   @param netsuite_reseller_id [String]
            #   @param reseller_contract_value [Float]
            #   @param starting_at [Time]

            # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddResellerRoyalty#reseller_type
            module ResellerType
              extend MetronomeSDK::Internal::Type::Enum

              AWS = :AWS
              AWS_PRO_SERVICE = :AWS_PRO_SERVICE
              GCP = :GCP
              GCP_PRO_SERVICE = :GCP_PRO_SERVICE

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class AddScheduledCharge < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute product
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddScheduledCharge::Product]
            required :product,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddScheduledCharge::Product }

            # @!attribute schedule
            #
            #   @return [MetronomeSDK::Models::SchedulePointInTime]
            required :schedule, -> { MetronomeSDK::SchedulePointInTime }

            # @!attribute name
            #   displayed on invoices
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute netsuite_sales_order_id
            #   This field's availability is dependent on your client's configuration.
            #
            #   @return [String, nil]
            optional :netsuite_sales_order_id, String

            # @!method initialize(id:, product:, schedule:, name: nil, netsuite_sales_order_id: nil)
            #   @param id [String]
            #
            #   @param product [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddScheduledCharge::Product]
            #
            #   @param schedule [MetronomeSDK::Models::SchedulePointInTime]
            #
            #   @param name [String] displayed on invoices
            #
            #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.

            # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddScheduledCharge#product
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
          end

          class AddUsageFilter < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute group_key
            #
            #   @return [String]
            required :group_key, String

            # @!attribute group_values
            #
            #   @return [Array<String>]
            required :group_values, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!attribute starting_at
            #   This will match contract starting_at value if usage filter is active from the
            #   beginning of the contract.
            #
            #   @return [Time]
            required :starting_at, Time

            # @!attribute ending_before
            #   This will match contract ending_before value if usage filter is active until the
            #   end of the contract. It will be undefined if the contract is open-ended.
            #
            #   @return [Time, nil]
            optional :ending_before, Time

            # @!method initialize(group_key:, group_values:, starting_at:, ending_before: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::AddUsageFilter}
            #   for more details.
            #
            #   @param group_key [String]
            #
            #   @param group_values [Array<String>]
            #
            #   @param starting_at [Time] This will match contract starting_at value if usage filter is active from the be
            #
            #   @param ending_before [Time] This will match contract ending_before value if usage filter is active until the
          end

          class ArchiveCommit < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!method initialize(id:)
            #   @param id [String]
          end

          class ArchiveCredit < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!method initialize(id:)
            #   @param id [String]
          end

          class ArchiveScheduledCharge < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!method initialize(id:)
            #   @param id [String]
          end

          class RemoveOverride < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!method initialize(id:)
            #   @param id [String]
          end

          class UpdateCommit < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute access_schedule
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule, nil]
            optional :access_schedule,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule }

            # @!attribute applicable_product_ids
            #   Which products the commit applies to. If applicable_product_ids,
            #   applicable_product_tags or specifiers are not provided, the commit applies to
            #   all products.
            #
            #   @return [Array<String>, nil]
            optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String], nil?: true

            # @!attribute applicable_product_tags
            #   Which tags the commit applies to. If applicable_product_ids,
            #   applicable_product_tags or specifiers are not provided, the commit applies to
            #   all products.
            #
            #   @return [Array<String>, nil]
            optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String], nil?: true

            # @!attribute description
            #
            #   @return [String, nil]
            optional :description, String

            # @!attribute hierarchy_configuration
            #   Optional configuration for commit hierarchy access control
            #
            #   @return [MetronomeSDK::Models::CommitHierarchyConfiguration, nil]
            optional :hierarchy_configuration, -> { MetronomeSDK::CommitHierarchyConfiguration }

            # @!attribute invoice_schedule
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule, nil]
            optional :invoice_schedule,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule }

            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute netsuite_sales_order_id
            #
            #   @return [String, nil]
            optional :netsuite_sales_order_id, String, nil?: true

            # @!attribute priority
            #   If multiple commits are applicable, the one with the lower priority will apply
            #   first.
            #
            #   @return [Float, nil]
            optional :priority, Float, nil?: true

            # @!attribute product_id
            #
            #   @return [String, nil]
            optional :product_id, String

            # @!attribute rate_type
            #   If set, the commit's rate type was updated to the specified value.
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::RateType, nil]
            optional :rate_type,
                     enum: -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::RateType }

            # @!attribute rollover_fraction
            #
            #   @return [Float, nil]
            optional :rollover_fraction, Float, nil?: true

            # @!attribute specifiers
            #   List of filters that determine what kind of customer usage draws down a commit
            #   or credit. A customer's usage needs to meet the condition of at least one of the
            #   specifiers to contribute to a commit's or credit's drawdown. This field cannot
            #   be used together with `applicable_product_ids` or `applicable_product_tags`.
            #   Instead, to target usage by product or product tag, pass those values in the
            #   body of `specifiers`.
            #
            #   @return [Array<MetronomeSDK::Models::CommitSpecifierInput>, nil]
            optional :specifiers,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::CommitSpecifierInput] },
                     nil?: true

            # @!method initialize(id:, access_schedule: nil, applicable_product_ids: nil, applicable_product_tags: nil, description: nil, hierarchy_configuration: nil, invoice_schedule: nil, name: nil, netsuite_sales_order_id: nil, priority: nil, product_id: nil, rate_type: nil, rollover_fraction: nil, specifiers: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit}
            #   for more details.
            #
            #   @param id [String]
            #
            #   @param access_schedule [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule]
            #
            #   @param applicable_product_ids [Array<String>, nil] Which products the commit applies to. If applicable_product_ids, applicable_prod
            #
            #   @param applicable_product_tags [Array<String>, nil] Which tags the commit applies to. If applicable*product_ids, applicable_product*
            #
            #   @param description [String]
            #
            #   @param hierarchy_configuration [MetronomeSDK::Models::CommitHierarchyConfiguration] Optional configuration for commit hierarchy access control
            #
            #   @param invoice_schedule [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule]
            #
            #   @param name [String]
            #
            #   @param netsuite_sales_order_id [String, nil]
            #
            #   @param priority [Float, nil] If multiple commits are applicable, the one with the lower priority will apply f
            #
            #   @param product_id [String]
            #
            #   @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::RateType] If set, the commit's rate type was updated to the specified value.
            #
            #   @param rollover_fraction [Float, nil]
            #
            #   @param specifiers [Array<MetronomeSDK::Models::CommitSpecifierInput>, nil] List of filters that determine what kind of customer usage draws down a commit o

            # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit#access_schedule
            class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute add_schedule_items
              #
              #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::AddScheduleItem>, nil]
              optional :add_schedule_items,
                       -> do
                         MetronomeSDK::Internal::Type::ArrayOf[
                           MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::AddScheduleItem
                         ]
                       end

              # @!attribute remove_schedule_items
              #
              #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::RemoveScheduleItem>, nil]
              optional :remove_schedule_items,
                       -> do
                         MetronomeSDK::Internal::Type::ArrayOf[
                           MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::RemoveScheduleItem
                         ]
                       end

              # @!attribute update_schedule_items
              #
              #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::UpdateScheduleItem>, nil]
              optional :update_schedule_items,
                       -> do
                         MetronomeSDK::Internal::Type::ArrayOf[
                           MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::UpdateScheduleItem
                         ]
                       end

              # @!method initialize(add_schedule_items: nil, remove_schedule_items: nil, update_schedule_items: nil)
              #   @param add_schedule_items [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::AddScheduleItem>]
              #   @param remove_schedule_items [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::RemoveScheduleItem>]
              #   @param update_schedule_items [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::AccessSchedule::UpdateScheduleItem>]

              class AddScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute amount
                #
                #   @return [Float]
                required :amount, Float

                # @!attribute ending_before
                #   RFC 3339 timestamp (exclusive)
                #
                #   @return [Time]
                required :ending_before, Time

                # @!attribute starting_at
                #   RFC 3339 timestamp (inclusive)
                #
                #   @return [Time]
                required :starting_at, Time

                # @!method initialize(amount:, ending_before:, starting_at:)
                #   @param amount [Float]
                #
                #   @param ending_before [Time] RFC 3339 timestamp (exclusive)
                #
                #   @param starting_at [Time] RFC 3339 timestamp (inclusive)
              end

              class RemoveScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!method initialize(id:)
                #   @param id [String]
              end

              class UpdateScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute amount
                #
                #   @return [Float, nil]
                optional :amount, Float

                # @!attribute ending_before
                #   RFC 3339 timestamp (exclusive)
                #
                #   @return [Time, nil]
                optional :ending_before, Time

                # @!attribute starting_at
                #   RFC 3339 timestamp (inclusive)
                #
                #   @return [Time, nil]
                optional :starting_at, Time

                # @!method initialize(id:, amount: nil, ending_before: nil, starting_at: nil)
                #   @param id [String]
                #
                #   @param amount [Float]
                #
                #   @param ending_before [Time] RFC 3339 timestamp (exclusive)
                #
                #   @param starting_at [Time] RFC 3339 timestamp (inclusive)
              end
            end

            # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit#invoice_schedule
            class InvoiceSchedule < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute add_schedule_items
              #
              #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::AddScheduleItem>, nil]
              optional :add_schedule_items,
                       -> do
                         MetronomeSDK::Internal::Type::ArrayOf[
                           MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::AddScheduleItem
                         ]
                       end

              # @!attribute remove_schedule_items
              #
              #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::RemoveScheduleItem>, nil]
              optional :remove_schedule_items,
                       -> do
                         MetronomeSDK::Internal::Type::ArrayOf[
                           MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::RemoveScheduleItem
                         ]
                       end

              # @!attribute update_schedule_items
              #
              #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::UpdateScheduleItem>, nil]
              optional :update_schedule_items,
                       -> do
                         MetronomeSDK::Internal::Type::ArrayOf[
                           MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::UpdateScheduleItem
                         ]
                       end

              # @!method initialize(add_schedule_items: nil, remove_schedule_items: nil, update_schedule_items: nil)
              #   @param add_schedule_items [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::AddScheduleItem>]
              #   @param remove_schedule_items [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::RemoveScheduleItem>]
              #   @param update_schedule_items [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit::InvoiceSchedule::UpdateScheduleItem>]

              class AddScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute timestamp
                #
                #   @return [Time]
                required :timestamp, Time

                # @!attribute amount
                #
                #   @return [Float, nil]
                optional :amount, Float

                # @!attribute quantity
                #
                #   @return [Float, nil]
                optional :quantity, Float

                # @!attribute unit_price
                #
                #   @return [Float, nil]
                optional :unit_price, Float

                # @!method initialize(timestamp:, amount: nil, quantity: nil, unit_price: nil)
                #   @param timestamp [Time]
                #   @param amount [Float]
                #   @param quantity [Float]
                #   @param unit_price [Float]
              end

              class RemoveScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!method initialize(id:)
                #   @param id [String]
              end

              class UpdateScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute amount
                #
                #   @return [Float, nil]
                optional :amount, Float

                # @!attribute quantity
                #
                #   @return [Float, nil]
                optional :quantity, Float

                # @!attribute timestamp
                #
                #   @return [Time, nil]
                optional :timestamp, Time

                # @!attribute unit_price
                #
                #   @return [Float, nil]
                optional :unit_price, Float

                # @!method initialize(id:, amount: nil, quantity: nil, timestamp: nil, unit_price: nil)
                #   @param id [String]
                #   @param amount [Float]
                #   @param quantity [Float]
                #   @param timestamp [Time]
                #   @param unit_price [Float]
              end
            end

            # If set, the commit's rate type was updated to the specified value.
            #
            # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCommit#rate_type
            module RateType
              extend MetronomeSDK::Internal::Type::Enum

              COMMIT_RATE = :COMMIT_RATE
              LIST_RATE = :LIST_RATE

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class UpdateCredit < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute access_schedule
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule, nil]
            optional :access_schedule,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule }

            # @!attribute description
            #
            #   @return [String, nil]
            optional :description, String

            # @!attribute hierarchy_configuration
            #   Optional configuration for credit hierarchy access control
            #
            #   @return [MetronomeSDK::Models::CommitHierarchyConfiguration, nil]
            optional :hierarchy_configuration, -> { MetronomeSDK::CommitHierarchyConfiguration }

            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute netsuite_sales_order_id
            #
            #   @return [String, nil]
            optional :netsuite_sales_order_id, String, nil?: true

            # @!attribute priority
            #   If multiple credits are applicable, the one with the lower priority will apply
            #   first.
            #
            #   @return [Float, nil]
            optional :priority, Float, nil?: true

            # @!attribute rate_type
            #   If set, the credit's rate type was updated to the specified value.
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::RateType, nil]
            optional :rate_type,
                     enum: -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::RateType }

            # @!attribute rollover_fraction
            #
            #   @return [Float, nil]
            optional :rollover_fraction, Float, nil?: true

            # @!method initialize(id:, access_schedule: nil, description: nil, hierarchy_configuration: nil, name: nil, netsuite_sales_order_id: nil, priority: nil, rate_type: nil, rollover_fraction: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit}
            #   for more details.
            #
            #   @param id [String]
            #
            #   @param access_schedule [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule]
            #
            #   @param description [String]
            #
            #   @param hierarchy_configuration [MetronomeSDK::Models::CommitHierarchyConfiguration] Optional configuration for credit hierarchy access control
            #
            #   @param name [String]
            #
            #   @param netsuite_sales_order_id [String, nil]
            #
            #   @param priority [Float, nil] If multiple credits are applicable, the one with the lower priority will apply f
            #
            #   @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::RateType] If set, the credit's rate type was updated to the specified value.
            #
            #   @param rollover_fraction [Float, nil]

            # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit#access_schedule
            class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute add_schedule_items
              #
              #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::AddScheduleItem>, nil]
              optional :add_schedule_items,
                       -> do
                         MetronomeSDK::Internal::Type::ArrayOf[
                           MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::AddScheduleItem
                         ]
                       end

              # @!attribute remove_schedule_items
              #
              #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::RemoveScheduleItem>, nil]
              optional :remove_schedule_items,
                       -> do
                         MetronomeSDK::Internal::Type::ArrayOf[
                           MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::RemoveScheduleItem
                         ]
                       end

              # @!attribute update_schedule_items
              #
              #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::UpdateScheduleItem>, nil]
              optional :update_schedule_items,
                       -> do
                         MetronomeSDK::Internal::Type::ArrayOf[
                           MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::UpdateScheduleItem
                         ]
                       end

              # @!method initialize(add_schedule_items: nil, remove_schedule_items: nil, update_schedule_items: nil)
              #   @param add_schedule_items [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::AddScheduleItem>]
              #   @param remove_schedule_items [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::RemoveScheduleItem>]
              #   @param update_schedule_items [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit::AccessSchedule::UpdateScheduleItem>]

              class AddScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute amount
                #
                #   @return [Float]
                required :amount, Float

                # @!attribute ending_before
                #   RFC 3339 timestamp (exclusive)
                #
                #   @return [Time]
                required :ending_before, Time

                # @!attribute starting_at
                #   RFC 3339 timestamp (inclusive)
                #
                #   @return [Time]
                required :starting_at, Time

                # @!method initialize(amount:, ending_before:, starting_at:)
                #   @param amount [Float]
                #
                #   @param ending_before [Time] RFC 3339 timestamp (exclusive)
                #
                #   @param starting_at [Time] RFC 3339 timestamp (inclusive)
              end

              class RemoveScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!method initialize(id:)
                #   @param id [String]
              end

              class UpdateScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute amount
                #
                #   @return [Float, nil]
                optional :amount, Float

                # @!attribute ending_before
                #   RFC 3339 timestamp (exclusive)
                #
                #   @return [Time, nil]
                optional :ending_before, Time

                # @!attribute starting_at
                #   RFC 3339 timestamp (inclusive)
                #
                #   @return [Time, nil]
                optional :starting_at, Time

                # @!method initialize(id:, amount: nil, ending_before: nil, starting_at: nil)
                #   @param id [String]
                #
                #   @param amount [Float]
                #
                #   @param ending_before [Time] RFC 3339 timestamp (exclusive)
                #
                #   @param starting_at [Time] RFC 3339 timestamp (inclusive)
              end
            end

            # If set, the credit's rate type was updated to the specified value.
            #
            # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateCredit#rate_type
            module RateType
              extend MetronomeSDK::Internal::Type::Enum

              LIST_RATE = :LIST_RATE
              COMMIT_RATE = :COMMIT_RATE

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class UpdateDiscount < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute custom_fields
            #   Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute netsuite_sales_order_id
            #
            #   @return [String, nil]
            optional :netsuite_sales_order_id, String

            # @!attribute schedule
            #   Must provide either schedule_items or recurring_schedule.
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule, nil]
            optional :schedule,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule }

            # @!method initialize(id:, custom_fields: nil, name: nil, netsuite_sales_order_id: nil, schedule: nil)
            #   @param id [String]
            #
            #   @param custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
            #
            #   @param name [String]
            #
            #   @param netsuite_sales_order_id [String]
            #
            #   @param schedule [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule] Must provide either schedule_items or recurring_schedule.

            # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount#schedule
            class Schedule < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute credit_type_id
              #   Defaults to USD (cents) if not passed.
              #
              #   @return [String, nil]
              optional :credit_type_id, String

              # @!attribute do_not_invoice
              #   This field is only applicable to commit invoice schedules. If true, this
              #   schedule will not generate an invoice.
              #
              #   @return [Boolean, nil]
              optional :do_not_invoice, MetronomeSDK::Internal::Type::Boolean

              # @!attribute recurring_schedule
              #   Enter the unit price and quantity for the charge or instead only send the
              #   amount. If amount is sent, the unit price is assumed to be the amount and
              #   quantity is inferred to be 1.
              #
              #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule, nil]
              optional :recurring_schedule,
                       -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule }

              # @!attribute schedule_items
              #   Either provide amount or provide both unit_price and quantity.
              #
              #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::ScheduleItem>, nil]
              optional :schedule_items,
                       -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::ScheduleItem] }

              # @!method initialize(credit_type_id: nil, do_not_invoice: nil, recurring_schedule: nil, schedule_items: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule}
              #   for more details.
              #
              #   Must provide either schedule_items or recurring_schedule.
              #
              #   @param credit_type_id [String] Defaults to USD (cents) if not passed.
              #
              #   @param do_not_invoice [Boolean] This field is only applicable to commit invoice schedules. If true, this schedul
              #
              #   @param recurring_schedule [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule] Enter the unit price and quantity for the charge or instead only send the amount
              #
              #   @param schedule_items [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::ScheduleItem>] Either provide amount or provide both unit_price and quantity.

              # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule#recurring_schedule
              class RecurringSchedule < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute amount_distribution
                #
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule::AmountDistribution]
                required :amount_distribution,
                         enum: -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule::AmountDistribution }

                # @!attribute ending_before
                #   RFC 3339 timestamp (exclusive).
                #
                #   @return [Time]
                required :ending_before, Time

                # @!attribute frequency
                #
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule::Frequency]
                required :frequency,
                         enum: -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule::Frequency }

                # @!attribute starting_at
                #   RFC 3339 timestamp (inclusive).
                #
                #   @return [Time]
                required :starting_at, Time

                # @!attribute amount
                #   Amount for the charge. Can be provided instead of unit_price and quantity. If
                #   amount is sent, the unit_price is assumed to be the amount and quantity is
                #   inferred to be 1.
                #
                #   @return [Float, nil]
                optional :amount, Float

                # @!attribute quantity
                #   Quantity for the charge. Will be multiplied by unit_price to determine the
                #   amount and must be specified with unit_price. If specified amount cannot be
                #   provided.
                #
                #   @return [Float, nil]
                optional :quantity, Float

                # @!attribute unit_price
                #   Unit price for the charge. Will be multiplied by quantity to determine the
                #   amount and must be specified with quantity. If specified amount cannot be
                #   provided.
                #
                #   @return [Float, nil]
                optional :unit_price, Float

                # @!method initialize(amount_distribution:, ending_before:, frequency:, starting_at:, amount: nil, quantity: nil, unit_price: nil)
                #   Some parameter documentations has been truncated, see
                #   {MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule}
                #   for more details.
                #
                #   Enter the unit price and quantity for the charge or instead only send the
                #   amount. If amount is sent, the unit price is assumed to be the amount and
                #   quantity is inferred to be 1.
                #
                #   @param amount_distribution [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule::AmountDistribution]
                #
                #   @param ending_before [Time] RFC 3339 timestamp (exclusive).
                #
                #   @param frequency [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule::Frequency]
                #
                #   @param starting_at [Time] RFC 3339 timestamp (inclusive).
                #
                #   @param amount [Float] Amount for the charge. Can be provided instead of unit_price and quantity. If am
                #
                #   @param quantity [Float] Quantity for the charge. Will be multiplied by unit_price to determine the amoun
                #
                #   @param unit_price [Float] Unit price for the charge. Will be multiplied by quantity to determine the amoun

                # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule#amount_distribution
                module AmountDistribution
                  extend MetronomeSDK::Internal::Type::Enum

                  DIVIDED = :DIVIDED
                  DIVIDED_ROUNDED = :DIVIDED_ROUNDED
                  EACH = :EACH

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end

                # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::RecurringSchedule#frequency
                module Frequency
                  extend MetronomeSDK::Internal::Type::Enum

                  MONTHLY = :MONTHLY
                  QUARTERLY = :QUARTERLY
                  SEMI_ANNUAL = :SEMI_ANNUAL
                  ANNUAL = :ANNUAL
                  WEEKLY = :WEEKLY

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute timestamp
                #   timestamp of the scheduled event
                #
                #   @return [Time]
                required :timestamp, Time

                # @!attribute amount
                #   Amount for the charge. Can be provided instead of unit_price and quantity. If
                #   amount is sent, the unit_price is assumed to be the amount and quantity is
                #   inferred to be 1.
                #
                #   @return [Float, nil]
                optional :amount, Float

                # @!attribute quantity
                #   Quantity for the charge. Will be multiplied by unit_price to determine the
                #   amount and must be specified with unit_price. If specified amount cannot be
                #   provided.
                #
                #   @return [Float, nil]
                optional :quantity, Float

                # @!attribute unit_price
                #   Unit price for the charge. Will be multiplied by quantity to determine the
                #   amount and must be specified with quantity. If specified amount cannot be
                #   provided.
                #
                #   @return [Float, nil]
                optional :unit_price, Float

                # @!method initialize(timestamp:, amount: nil, quantity: nil, unit_price: nil)
                #   Some parameter documentations has been truncated, see
                #   {MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateDiscount::Schedule::ScheduleItem}
                #   for more details.
                #
                #   @param timestamp [Time] timestamp of the scheduled event
                #
                #   @param amount [Float] Amount for the charge. Can be provided instead of unit_price and quantity. If am
                #
                #   @param quantity [Float] Quantity for the charge. Will be multiplied by unit_price to determine the amoun
                #
                #   @param unit_price [Float] Unit price for the charge. Will be multiplied by quantity to determine the amoun
              end
            end
          end

          # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data#update_prepaid_balance_threshold_configuration
          class UpdatePrepaidBalanceThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute commit
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::Commit, nil]
            optional :commit,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::Commit }

            # @!attribute custom_credit_type_id
            #   If provided, the threshold, recharge-to amount, and the resulting threshold
            #   commit amount will be in terms of this credit type instead of the fiat currency.
            #
            #   @return [String, nil]
            optional :custom_credit_type_id, String, nil?: true

            # @!attribute is_enabled
            #   When set to false, the contract will not be evaluated against the
            #   threshold_amount. Toggling to true will result an immediate evaluation,
            #   regardless of prior state.
            #
            #   @return [Boolean, nil]
            optional :is_enabled, MetronomeSDK::Internal::Type::Boolean

            # @!attribute payment_gate_config
            #
            #   @return [MetronomeSDK::Models::PaymentGateConfigV2, nil]
            optional :payment_gate_config, -> { MetronomeSDK::PaymentGateConfigV2 }

            # @!attribute recharge_to_amount
            #   Specify the amount the balance should be recharged to.
            #
            #   @return [Float, nil]
            optional :recharge_to_amount, Float

            # @!attribute threshold_amount
            #   Specify the threshold amount for the contract. Each time the contract's balance
            #   lowers to this amount, a threshold charge will be initiated.
            #
            #   @return [Float, nil]
            optional :threshold_amount, Float

            # @!method initialize(commit: nil, custom_credit_type_id: nil, is_enabled: nil, payment_gate_config: nil, recharge_to_amount: nil, threshold_amount: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration}
            #   for more details.
            #
            #   @param commit [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::Commit]
            #
            #   @param custom_credit_type_id [String, nil] If provided, the threshold, recharge-to amount, and the resulting threshold comm
            #
            #   @param is_enabled [Boolean] When set to false, the contract will not be evaluated against the threshold_amou
            #
            #   @param payment_gate_config [MetronomeSDK::Models::PaymentGateConfigV2]
            #
            #   @param recharge_to_amount [Float] Specify the amount the balance should be recharged to.
            #
            #   @param threshold_amount [Float] Specify the threshold amount for the contract. Each time the contract's balance

            # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration#commit
            class Commit < MetronomeSDK::Models::UpdateBaseThresholdCommit
              # @!attribute applicable_product_ids
              #   Which products the threshold commit applies to. If both applicable_product_ids
              #   and applicable_product_tags are not provided, the commit applies to all
              #   products.
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String], nil?: true

              # @!attribute applicable_product_tags
              #   Which tags the threshold commit applies to. If both applicable_product_ids and
              #   applicable_product_tags are not provided, the commit applies to all products.
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String], nil?: true

              # @!attribute specifiers
              #   List of filters that determine what kind of customer usage draws down a commit
              #   or credit. A customer's usage needs to meet the condition of at least one of the
              #   specifiers to contribute to a commit's or credit's drawdown. This field cannot
              #   be used together with `applicable_product_ids` or `applicable_product_tags`.
              #   Instead, to target usage by product or product tag, pass those values in the
              #   body of `specifiers`.
              #
              #   @return [Array<MetronomeSDK::Models::CommitSpecifierInput>, nil]
              optional :specifiers,
                       -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::CommitSpecifierInput] },
                       nil?: true

              # @!method initialize(applicable_product_ids: nil, applicable_product_tags: nil, specifiers: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdatePrepaidBalanceThresholdConfiguration::Commit}
              #   for more details.
              #
              #   @param applicable_product_ids [Array<String>, nil] Which products the threshold commit applies to. If both applicable_product_ids a
              #
              #   @param applicable_product_tags [Array<String>, nil] Which tags the threshold commit applies to. If both applicable_product_ids and a
              #
              #   @param specifiers [Array<MetronomeSDK::Models::CommitSpecifierInput>, nil] List of filters that determine what kind of customer usage draws down a commit o
            end
          end

          class UpdateRecurringCommit < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute access_amount
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCommit::AccessAmount, nil]
            optional :access_amount,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCommit::AccessAmount }

            # @!attribute ending_before
            #
            #   @return [Time, nil]
            optional :ending_before, Time

            # @!attribute invoice_amount
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCommit::InvoiceAmount, nil]
            optional :invoice_amount,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCommit::InvoiceAmount }

            # @!attribute rate_type
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCommit::RateType, nil]
            optional :rate_type,
                     enum: -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCommit::RateType }

            # @!method initialize(id:, access_amount: nil, ending_before: nil, invoice_amount: nil, rate_type: nil)
            #   @param id [String]
            #   @param access_amount [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCommit::AccessAmount]
            #   @param ending_before [Time]
            #   @param invoice_amount [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCommit::InvoiceAmount]
            #   @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCommit::RateType]

            # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCommit#access_amount
            class AccessAmount < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute quantity
              #
              #   @return [Float, nil]
              optional :quantity, Float

              # @!attribute unit_price
              #
              #   @return [Float, nil]
              optional :unit_price, Float

              # @!method initialize(quantity: nil, unit_price: nil)
              #   @param quantity [Float]
              #   @param unit_price [Float]
            end

            # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCommit#invoice_amount
            class InvoiceAmount < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute quantity
              #
              #   @return [Float, nil]
              optional :quantity, Float

              # @!attribute unit_price
              #
              #   @return [Float, nil]
              optional :unit_price, Float

              # @!method initialize(quantity: nil, unit_price: nil)
              #   @param quantity [Float]
              #   @param unit_price [Float]
            end

            # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCommit#rate_type
            module RateType
              extend MetronomeSDK::Internal::Type::Enum

              LIST_RATE = :LIST_RATE
              COMMIT_RATE = :COMMIT_RATE

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class UpdateRecurringCredit < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute access_amount
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCredit::AccessAmount, nil]
            optional :access_amount,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCredit::AccessAmount }

            # @!attribute ending_before
            #
            #   @return [Time, nil]
            optional :ending_before, Time

            # @!attribute rate_type
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCredit::RateType, nil]
            optional :rate_type,
                     enum: -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCredit::RateType }

            # @!method initialize(id:, access_amount: nil, ending_before: nil, rate_type: nil)
            #   @param id [String]
            #   @param access_amount [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCredit::AccessAmount]
            #   @param ending_before [Time]
            #   @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCredit::RateType]

            # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCredit#access_amount
            class AccessAmount < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute quantity
              #
              #   @return [Float, nil]
              optional :quantity, Float

              # @!attribute unit_price
              #
              #   @return [Float, nil]
              optional :unit_price, Float

              # @!method initialize(quantity: nil, unit_price: nil)
              #   @param quantity [Float]
              #   @param unit_price [Float]
            end

            # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateRecurringCredit#rate_type
            module RateType
              extend MetronomeSDK::Internal::Type::Enum

              LIST_RATE = :LIST_RATE
              COMMIT_RATE = :COMMIT_RATE

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class UpdateRefundInvoice < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute date
            #
            #   @return [Time]
            required :date, Time

            # @!attribute invoice_id
            #
            #   @return [String]
            required :invoice_id, String

            # @!method initialize(date:, invoice_id:)
            #   @param date [Time]
            #   @param invoice_id [String]
          end

          class UpdateScheduledCharge < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute invoice_schedule
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule, nil]
            optional :invoice_schedule,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule }

            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute netsuite_sales_order_id
            #
            #   @return [String, nil]
            optional :netsuite_sales_order_id, String, nil?: true

            # @!method initialize(id:, invoice_schedule: nil, name: nil, netsuite_sales_order_id: nil)
            #   @param id [String]
            #   @param invoice_schedule [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule]
            #   @param name [String]
            #   @param netsuite_sales_order_id [String, nil]

            # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge#invoice_schedule
            class InvoiceSchedule < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute add_schedule_items
              #
              #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::AddScheduleItem>, nil]
              optional :add_schedule_items,
                       -> do
                         MetronomeSDK::Internal::Type::ArrayOf[
                           MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::AddScheduleItem
                         ]
                       end

              # @!attribute remove_schedule_items
              #
              #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::RemoveScheduleItem>, nil]
              optional :remove_schedule_items,
                       -> do
                         MetronomeSDK::Internal::Type::ArrayOf[
                           MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::RemoveScheduleItem
                         ]
                       end

              # @!attribute update_schedule_items
              #
              #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::UpdateScheduleItem>, nil]
              optional :update_schedule_items,
                       -> do
                         MetronomeSDK::Internal::Type::ArrayOf[
                           MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::UpdateScheduleItem
                         ]
                       end

              # @!method initialize(add_schedule_items: nil, remove_schedule_items: nil, update_schedule_items: nil)
              #   @param add_schedule_items [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::AddScheduleItem>]
              #   @param remove_schedule_items [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::RemoveScheduleItem>]
              #   @param update_schedule_items [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateScheduledCharge::InvoiceSchedule::UpdateScheduleItem>]

              class AddScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute timestamp
                #
                #   @return [Time]
                required :timestamp, Time

                # @!attribute amount
                #
                #   @return [Float, nil]
                optional :amount, Float

                # @!attribute quantity
                #
                #   @return [Float, nil]
                optional :quantity, Float

                # @!attribute unit_price
                #
                #   @return [Float, nil]
                optional :unit_price, Float

                # @!method initialize(timestamp:, amount: nil, quantity: nil, unit_price: nil)
                #   @param timestamp [Time]
                #   @param amount [Float]
                #   @param quantity [Float]
                #   @param unit_price [Float]
              end

              class RemoveScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!method initialize(id:)
                #   @param id [String]
              end

              class UpdateScheduleItem < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute amount
                #
                #   @return [Float, nil]
                optional :amount, Float

                # @!attribute quantity
                #
                #   @return [Float, nil]
                optional :quantity, Float

                # @!attribute timestamp
                #
                #   @return [Time, nil]
                optional :timestamp, Time

                # @!attribute unit_price
                #
                #   @return [Float, nil]
                optional :unit_price, Float

                # @!method initialize(id:, amount: nil, quantity: nil, timestamp: nil, unit_price: nil)
                #   @param id [String]
                #   @param amount [Float]
                #   @param quantity [Float]
                #   @param timestamp [Time]
                #   @param unit_price [Float]
              end
            end
          end

          # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data#update_spend_threshold_configuration
          class UpdateSpendThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute commit
            #
            #   @return [MetronomeSDK::Models::UpdateBaseThresholdCommit, nil]
            optional :commit, -> { MetronomeSDK::UpdateBaseThresholdCommit }

            # @!attribute is_enabled
            #   When set to false, the contract will not be evaluated against the
            #   threshold_amount. Toggling to true will result an immediate evaluation,
            #   regardless of prior state.
            #
            #   @return [Boolean, nil]
            optional :is_enabled, MetronomeSDK::Internal::Type::Boolean

            # @!attribute payment_gate_config
            #
            #   @return [MetronomeSDK::Models::PaymentGateConfigV2, nil]
            optional :payment_gate_config, -> { MetronomeSDK::PaymentGateConfigV2 }

            # @!attribute threshold_amount
            #   Specify the threshold amount for the contract. Each time the contract's usage
            #   hits this amount, a threshold charge will be initiated.
            #
            #   @return [Float, nil]
            optional :threshold_amount, Float

            # @!method initialize(commit: nil, is_enabled: nil, payment_gate_config: nil, threshold_amount: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSpendThresholdConfiguration}
            #   for more details.
            #
            #   @param commit [MetronomeSDK::Models::UpdateBaseThresholdCommit]
            #
            #   @param is_enabled [Boolean] When set to false, the contract will not be evaluated against the threshold_amou
            #
            #   @param payment_gate_config [MetronomeSDK::Models::PaymentGateConfigV2]
            #
            #   @param threshold_amount [Float] Specify the threshold amount for the contract. Each time the contract's usage hi
          end

          class UpdateSubscription < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute ending_before
            #
            #   @return [Time, nil]
            optional :ending_before, Time

            # @!attribute quantity_updates
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription::QuantityUpdate>, nil]
            optional :quantity_updates,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription::QuantityUpdate] }

            # @!attribute seat_updates
            #   Manage subscription seats for subscriptions in SEAT_BASED mode.
            #
            #   @return [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription::SeatUpdates, nil]
            optional :seat_updates,
                     -> { MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription::SeatUpdates }

            # @!method initialize(id:, ending_before: nil, quantity_updates: nil, seat_updates: nil)
            #   @param id [String]
            #
            #   @param ending_before [Time]
            #
            #   @param quantity_updates [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription::QuantityUpdate>]
            #
            #   @param seat_updates [MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription::SeatUpdates] Manage subscription seats for subscriptions in SEAT_BASED mode.

            class QuantityUpdate < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute starting_at
              #
              #   @return [Time]
              required :starting_at, Time

              # @!attribute quantity
              #
              #   @return [Float, nil]
              optional :quantity, Float

              # @!attribute quantity_delta
              #
              #   @return [Float, nil]
              optional :quantity_delta, Float

              # @!method initialize(starting_at:, quantity: nil, quantity_delta: nil)
              #   @param starting_at [Time]
              #   @param quantity [Float]
              #   @param quantity_delta [Float]
            end

            # @see MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription#seat_updates
            class SeatUpdates < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute add_seat_ids
              #   Adds seat IDs to the subscription. If there are unassigned seats, the new seat
              #   IDs will fill these unassigned seats and not increase the total subscription
              #   quantity. Otherwise, if there are more new seat IDs than unassigned seats, the
              #   total subscription quantity will increase.
              #
              #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription::SeatUpdates::AddSeatID>, nil]
              optional :add_seat_ids,
                       -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription::SeatUpdates::AddSeatID] }

              # @!attribute add_unassigned_seats
              #   Adds unassigned seats to the subscription. This will increase the total
              #   subscription quantity.
              #
              #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription::SeatUpdates::AddUnassignedSeat>, nil]
              optional :add_unassigned_seats,
                       -> do
                         MetronomeSDK::Internal::Type::ArrayOf[
                           MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription::SeatUpdates::AddUnassignedSeat
                         ]
                       end

              # @!attribute remove_seat_ids
              #   Removes seat IDs from the subscription, if possible. If a seat ID is removed,
              #   the total subscription quantity will decrease. Otherwise, if the seat ID is not
              #   found on the subscription, this is a no-op.
              #
              #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription::SeatUpdates::RemoveSeatID>, nil]
              optional :remove_seat_ids,
                       -> do
                         MetronomeSDK::Internal::Type::ArrayOf[
                           MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription::SeatUpdates::RemoveSeatID
                         ]
                       end

              # @!attribute remove_unassigned_seats
              #   Removes unassigned seats from the subscription. This will decrease the total
              #   subscription quantity if there are are unassigned seats.
              #
              #   @return [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription::SeatUpdates::RemoveUnassignedSeat>, nil]
              optional :remove_unassigned_seats,
                       -> do
                         MetronomeSDK::Internal::Type::ArrayOf[
                           MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription::SeatUpdates::RemoveUnassignedSeat
                         ]
                       end

              # @!method initialize(add_seat_ids: nil, add_unassigned_seats: nil, remove_seat_ids: nil, remove_unassigned_seats: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription::SeatUpdates}
              #   for more details.
              #
              #   Manage subscription seats for subscriptions in SEAT_BASED mode.
              #
              #   @param add_seat_ids [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription::SeatUpdates::AddSeatID>] Adds seat IDs to the subscription. If there are unassigned seats, the new seat
              #
              #   @param add_unassigned_seats [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription::SeatUpdates::AddUnassignedSeat>] Adds unassigned seats to the subscription. This will increase the total subscrip
              #
              #   @param remove_seat_ids [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription::SeatUpdates::RemoveSeatID>] Removes seat IDs from the subscription, if possible. If a seat ID is removed, t
              #
              #   @param remove_unassigned_seats [Array<MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription::SeatUpdates::RemoveUnassignedSeat>] Removes unassigned seats from the subscription. This will decrease the total sub

              class AddSeatID < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute seat_ids
                #
                #   @return [Array<String>]
                required :seat_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

                # @!attribute starting_at
                #   Assigned seats will be added/removed starting at this date.
                #
                #   @return [Time]
                required :starting_at, Time

                # @!method initialize(seat_ids:, starting_at:)
                #   @param seat_ids [Array<String>]
                #
                #   @param starting_at [Time] Assigned seats will be added/removed starting at this date.
              end

              class AddUnassignedSeat < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute quantity
                #   The number of unassigned seats on the subscription will increase/decrease by
                #   this delta. Must be greater than 0.
                #
                #   @return [Float]
                required :quantity, Float

                # @!attribute starting_at
                #   Unassigned seats will be updated starting at this date.
                #
                #   @return [Time]
                required :starting_at, Time

                # @!method initialize(quantity:, starting_at:)
                #   Some parameter documentations has been truncated, see
                #   {MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription::SeatUpdates::AddUnassignedSeat}
                #   for more details.
                #
                #   @param quantity [Float] The number of unassigned seats on the subscription will increase/decrease by thi
                #
                #   @param starting_at [Time] Unassigned seats will be updated starting at this date.
              end

              class RemoveSeatID < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute seat_ids
                #
                #   @return [Array<String>]
                required :seat_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

                # @!attribute starting_at
                #   Assigned seats will be added/removed starting at this date.
                #
                #   @return [Time]
                required :starting_at, Time

                # @!method initialize(seat_ids:, starting_at:)
                #   @param seat_ids [Array<String>]
                #
                #   @param starting_at [Time] Assigned seats will be added/removed starting at this date.
              end

              class RemoveUnassignedSeat < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute quantity
                #   The number of unassigned seats on the subscription will increase/decrease by
                #   this delta. Must be greater than 0.
                #
                #   @return [Float]
                required :quantity, Float

                # @!attribute starting_at
                #   Unassigned seats will be updated starting at this date.
                #
                #   @return [Time]
                required :starting_at, Time

                # @!method initialize(quantity:, starting_at:)
                #   Some parameter documentations has been truncated, see
                #   {MetronomeSDK::Models::V2::ContractGetEditHistoryResponse::Data::UpdateSubscription::SeatUpdates::RemoveUnassignedSeat}
                #   for more details.
                #
                #   @param quantity [Float] The number of unassigned seats on the subscription will increase/decrease by thi
                #
                #   @param starting_at [Time] Unassigned seats will be updated starting at this date.
              end
            end
          end
        end
      end
    end
  end
end
