# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V2
      # @see MetronomeSDK::Resources::V2::Contracts#edit
      class ContractEditResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data]
        required :data, -> { MetronomeSDK::Models::V2::ContractEditResponse::Data }

        # @!method initialize(data:)
        #   @param data [MetronomeSDK::Models::V2::ContractEditResponse::Data]

        # @see MetronomeSDK::Models::V2::ContractEditResponse#data
        class Data < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute edit
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit, nil]
          optional :edit, -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit }

          # @!method initialize(id:, edit: nil)
          #   @param id [String]
          #   @param edit [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit]

          # @see MetronomeSDK::Models::V2::ContractEditResponse::Data#edit
          class Edit < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute add_commits
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit>, nil]
            optional :add_commits,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit] }

            # @!attribute add_credits
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCredit>, nil]
            optional :add_credits,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCredit] }

            # @!attribute add_discounts
            #
            #   @return [Array<MetronomeSDK::Models::Discount>, nil]
            optional :add_discounts, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Discount] }

            # @!attribute add_overrides
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride>, nil]
            optional :add_overrides,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride] }

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
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit>, nil]
            optional :add_recurring_commits,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit] }

            # @!attribute add_recurring_credits
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit>, nil]
            optional :add_recurring_credits,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit] }

            # @!attribute add_reseller_royalties
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddResellerRoyalty>, nil]
            optional :add_reseller_royalties,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddResellerRoyalty] }

            # @!attribute add_scheduled_charges
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddScheduledCharge>, nil]
            optional :add_scheduled_charges,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddScheduledCharge] }

            # @!attribute add_spend_threshold_configuration
            #
            #   @return [MetronomeSDK::Models::SpendThresholdConfigurationV2, nil]
            optional :add_spend_threshold_configuration, -> { MetronomeSDK::SpendThresholdConfigurationV2 }

            # @!attribute add_subscriptions
            #   List of subscriptions on the contract.
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription>, nil]
            optional :add_subscriptions,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription] }

            # @!attribute add_usage_filters
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddUsageFilter>, nil]
            optional :add_usage_filters,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddUsageFilter] }

            # @!attribute archive_commits
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::ArchiveCommit>, nil]
            optional :archive_commits,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::ArchiveCommit] }

            # @!attribute archive_credits
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::ArchiveCredit>, nil]
            optional :archive_credits,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::ArchiveCredit] }

            # @!attribute archive_scheduled_charges
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::ArchiveScheduledCharge>, nil]
            optional :archive_scheduled_charges,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::ArchiveScheduledCharge] }

            # @!attribute remove_overrides
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::RemoveOverride>, nil]
            optional :remove_overrides,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::RemoveOverride] }

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
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit>, nil]
            optional :update_commits,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit] }

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
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit>, nil]
            optional :update_credits,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit] }

            # @!attribute update_discounts
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount>, nil]
            optional :update_discounts,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount] }

            # @!attribute update_prepaid_balance_threshold_configuration
            #
            #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration, nil]
            optional :update_prepaid_balance_threshold_configuration,
                     -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration }

            # @!attribute update_recurring_commits
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit>, nil]
            optional :update_recurring_commits,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit] }

            # @!attribute update_recurring_credits
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit>, nil]
            optional :update_recurring_credits,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit] }

            # @!attribute update_refund_invoices
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRefundInvoice>, nil]
            optional :update_refund_invoices,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRefundInvoice] }

            # @!attribute update_scheduled_charges
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateScheduledCharge>, nil]
            optional :update_scheduled_charges,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateScheduledCharge] }

            # @!attribute update_spend_threshold_configuration
            #
            #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSpendThresholdConfiguration, nil]
            optional :update_spend_threshold_configuration,
                     -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSpendThresholdConfiguration }

            # @!attribute update_subscriptions
            #   Optional list of subscriptions to update.
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription>, nil]
            optional :update_subscriptions,
                     -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription] }

            # @!method initialize(id:, add_commits: nil, add_credits: nil, add_discounts: nil, add_overrides: nil, add_prepaid_balance_threshold_configuration: nil, add_pro_services: nil, add_recurring_commits: nil, add_recurring_credits: nil, add_reseller_royalties: nil, add_scheduled_charges: nil, add_spend_threshold_configuration: nil, add_subscriptions: nil, add_usage_filters: nil, archive_commits: nil, archive_credits: nil, archive_scheduled_charges: nil, remove_overrides: nil, timestamp: nil, uniqueness_key: nil, update_commits: nil, update_contract_end_date: nil, update_contract_name: nil, update_credits: nil, update_discounts: nil, update_prepaid_balance_threshold_configuration: nil, update_recurring_commits: nil, update_recurring_credits: nil, update_refund_invoices: nil, update_scheduled_charges: nil, update_spend_threshold_configuration: nil, update_subscriptions: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit} for more details.
            #
            #   @param id [String]
            #
            #   @param add_commits [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit>]
            #
            #   @param add_credits [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCredit>]
            #
            #   @param add_discounts [Array<MetronomeSDK::Models::Discount>]
            #
            #   @param add_overrides [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride>]
            #
            #   @param add_prepaid_balance_threshold_configuration [MetronomeSDK::Models::PrepaidBalanceThresholdConfigurationV2]
            #
            #   @param add_pro_services [Array<MetronomeSDK::Models::ProService>]
            #
            #   @param add_recurring_commits [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit>]
            #
            #   @param add_recurring_credits [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit>]
            #
            #   @param add_reseller_royalties [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddResellerRoyalty>]
            #
            #   @param add_scheduled_charges [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddScheduledCharge>]
            #
            #   @param add_spend_threshold_configuration [MetronomeSDK::Models::SpendThresholdConfigurationV2]
            #
            #   @param add_subscriptions [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription>] List of subscriptions on the contract.
            #
            #   @param add_usage_filters [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddUsageFilter>]
            #
            #   @param archive_commits [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::ArchiveCommit>]
            #
            #   @param archive_credits [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::ArchiveCredit>]
            #
            #   @param archive_scheduled_charges [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::ArchiveScheduledCharge>]
            #
            #   @param remove_overrides [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::RemoveOverride>]
            #
            #   @param timestamp [Time]
            #
            #   @param uniqueness_key [String] Prevents the creation of duplicates. If a request to create a record is made wit
            #
            #   @param update_commits [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit>]
            #
            #   @param update_contract_end_date [Time]
            #
            #   @param update_contract_name [String, nil] Value to update the contract name to. If not provided, the contract name will re
            #
            #   @param update_credits [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit>]
            #
            #   @param update_discounts [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount>]
            #
            #   @param update_prepaid_balance_threshold_configuration [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration]
            #
            #   @param update_recurring_commits [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit>]
            #
            #   @param update_recurring_credits [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit>]
            #
            #   @param update_refund_invoices [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRefundInvoice>]
            #
            #   @param update_scheduled_charges [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateScheduledCharge>]
            #
            #   @param update_spend_threshold_configuration [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSpendThresholdConfiguration]
            #
            #   @param update_subscriptions [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription>] Optional list of subscriptions to update.

            class AddCommit < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute product
              #
              #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::Product]
              required :product, -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::Product }

              # @!attribute type
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::Type]
              required :type, enum: -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::Type }

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
              #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::InvoiceSchedule, nil]
              optional :invoice_schedule,
                       -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::InvoiceSchedule }

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
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::RateType, nil]
              optional :rate_type,
                       enum: -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::RateType }

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
              #   {MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit} for more
              #   details.
              #
              #   @param id [String]
              #
              #   @param product [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::Product]
              #
              #   @param type [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::Type]
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
              #   @param invoice_schedule [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::InvoiceSchedule] The schedule that the customer will be invoiced for this commit.
              #
              #   @param name [String]
              #
              #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
              #
              #   @param priority [Float] If multiple credits or commits are applicable, the one with the lower priority w
              #
              #   @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::RateType]
              #
              #   @param rollover_fraction [Float]
              #
              #   @param salesforce_opportunity_id [String] This field's availability is dependent on your client's configuration.
              #
              #   @param specifiers [Array<MetronomeSDK::Models::CommitSpecifierInput>] List of filters that determine what kind of customer usage draws down a commit o

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit#product
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

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit#type
              module Type
                extend MetronomeSDK::Internal::Type::Enum

                PREPAID = :PREPAID
                POSTPAID = :POSTPAID

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit#invoice_schedule
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
                #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::InvoiceSchedule::ScheduleItem>, nil]
                optional :schedule_items,
                         -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::InvoiceSchedule::ScheduleItem] }

                # @!method initialize(credit_type: nil, do_not_invoice: nil, schedule_items: nil)
                #   The schedule that the customer will be invoiced for this commit.
                #
                #   @param credit_type [MetronomeSDK::Models::CreditTypeData]
                #
                #   @param do_not_invoice [Boolean] If true, this schedule will not generate an invoice.
                #
                #   @param schedule_items [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit::InvoiceSchedule::ScheduleItem>]

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

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCommit#rate_type
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
              #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCredit::Product]
              required :product, -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCredit::Product }

              # @!attribute type
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCredit::Type]
              required :type, enum: -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCredit::Type }

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

              # @!attribute rate_type
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCredit::RateType, nil]
              optional :rate_type,
                       enum: -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCredit::RateType }

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

              # @!method initialize(id:, product:, type:, access_schedule: nil, applicable_product_ids: nil, applicable_product_tags: nil, description: nil, hierarchy_configuration: nil, name: nil, netsuite_sales_order_id: nil, priority: nil, rate_type: nil, rollover_fraction: nil, salesforce_opportunity_id: nil, specifiers: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCredit} for more
              #   details.
              #
              #   @param id [String]
              #
              #   @param product [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCredit::Product]
              #
              #   @param type [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCredit::Type]
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
              #   @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCredit::RateType]
              #
              #   @param rollover_fraction [Float]
              #
              #   @param salesforce_opportunity_id [String] This field's availability is dependent on your client's configuration.
              #
              #   @param specifiers [Array<MetronomeSDK::Models::CommitSpecifierInput>] List of filters that determine what kind of customer usage draws down a commit o

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCredit#product
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

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCredit#type
              module Type
                extend MetronomeSDK::Internal::Type::Enum

                CREDIT = :CREDIT

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddCredit#rate_type
              module RateType
                extend MetronomeSDK::Internal::Type::Enum

                COMMIT_RATE = :COMMIT_RATE
                LIST_RATE = :LIST_RATE

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class AddOverride < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute created_at
              #
              #   @return [Time]
              required :created_at, Time

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
              #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverrideSpecifier>, nil]
              optional :override_specifiers,
                       -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverrideSpecifier] }

              # @!attribute override_tiers
              #
              #   @return [Array<MetronomeSDK::Models::OverrideTier>, nil]
              optional :override_tiers, -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::OverrideTier] }

              # @!attribute overwrite_rate
              #
              #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverwriteRate, nil]
              optional :overwrite_rate,
                       -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverwriteRate }

              # @!attribute priority
              #
              #   @return [Float, nil]
              optional :priority, Float

              # @!attribute product
              #
              #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::Product, nil]
              optional :product, -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::Product }

              # @!attribute target
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::Target, nil]
              optional :target,
                       enum: -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::Target }

              # @!attribute type
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::Type, nil]
              optional :type, enum: -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::Type }

              # @!method initialize(id:, created_at:, starting_at:, applicable_product_tags: nil, ending_before: nil, entitled: nil, is_commit_specific: nil, multiplier: nil, override_specifiers: nil, override_tiers: nil, overwrite_rate: nil, priority: nil, product: nil, target: nil, type: nil)
              #   @param id [String]
              #   @param created_at [Time]
              #   @param starting_at [Time]
              #   @param applicable_product_tags [Array<String>]
              #   @param ending_before [Time]
              #   @param entitled [Boolean]
              #   @param is_commit_specific [Boolean]
              #   @param multiplier [Float]
              #   @param override_specifiers [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverrideSpecifier>]
              #   @param override_tiers [Array<MetronomeSDK::Models::OverrideTier>]
              #   @param overwrite_rate [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverwriteRate]
              #   @param priority [Float]
              #   @param product [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::Product]
              #   @param target [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::Target]
              #   @param type [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::Type]

              class OverrideSpecifier < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute any_commit_or_credit_ids
                #
                #   @return [Array<String>, nil]
                optional :any_commit_or_credit_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

                # @!attribute billing_frequency
                #
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverrideSpecifier::BillingFrequency, nil]
                optional :billing_frequency,
                         enum: -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverrideSpecifier::BillingFrequency }

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

                # @!method initialize(any_commit_or_credit_ids: nil, billing_frequency: nil, commit_ids: nil, presentation_group_values: nil, pricing_group_values: nil, product_id: nil, product_tags: nil, recurring_commit_ids: nil)
                #   @param any_commit_or_credit_ids [Array<String>]
                #   @param billing_frequency [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverrideSpecifier::BillingFrequency]
                #   @param commit_ids [Array<String>]
                #   @param presentation_group_values [Hash{Symbol=>String, nil}]
                #   @param pricing_group_values [Hash{Symbol=>String}]
                #   @param product_id [String]
                #   @param product_tags [Array<String>]
                #   @param recurring_commit_ids [Array<String>]

                # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverrideSpecifier#billing_frequency
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

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride#overwrite_rate
              class OverwriteRate < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute rate_type
                #
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverwriteRate::RateType]
                required :rate_type,
                         enum: -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverwriteRate::RateType }

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
                #   {MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverwriteRate}
                #   for more details.
                #
                #   @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverwriteRate::RateType]
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

                # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride::OverwriteRate#rate_type
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

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride#product
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

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride#target
              module Target
                extend MetronomeSDK::Internal::Type::Enum

                COMMIT_RATE = :COMMIT_RATE
                LIST_RATE = :LIST_RATE

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddOverride#type
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
              #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::AccessAmount]
              required :access_amount,
                       -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::AccessAmount }

              # @!attribute commit_duration
              #   The amount of time the created commits will be valid for
              #
              #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::CommitDuration]
              required :commit_duration,
                       -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::CommitDuration }

              # @!attribute priority
              #   Will be passed down to the individual commits
              #
              #   @return [Float]
              required :priority, Float

              # @!attribute product
              #
              #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::Product]
              required :product,
                       -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::Product }

              # @!attribute rate_type
              #   Whether the created commits will use the commit rate or list rate
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::RateType]
              required :rate_type,
                       enum: -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::RateType }

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
              #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::Contract, nil]
              optional :contract,
                       -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::Contract }

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
              #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::InvoiceAmount, nil]
              optional :invoice_amount,
                       -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::InvoiceAmount }

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
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::Proration, nil]
              optional :proration,
                       enum: -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::Proration }

              # @!attribute proration_rounding
              #   Rounding configuration for prorated recurring commit amounts.
              #
              #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding, nil]
              optional :proration_rounding,
                       -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding },
                       nil?: true

              # @!attribute recurrence_frequency
              #   The frequency at which the recurring commits will be created. If not provided: -
              #   The commits will be created on the usage invoice frequency. If provided: - The
              #   period defined in the duration will correspond to this frequency. - Commits will
              #   be created aligned with the recurring commit's starting_at rather than the usage
              #   invoice dates.
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::RecurrenceFrequency, nil]
              optional :recurrence_frequency,
                       enum: -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::RecurrenceFrequency }

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

              # @!method initialize(id:, access_amount:, commit_duration:, priority:, product:, rate_type:, starting_at:, applicable_product_ids: nil, applicable_product_tags: nil, contract: nil, description: nil, ending_before: nil, hierarchy_configuration: nil, invoice_amount: nil, name: nil, netsuite_sales_order_id: nil, proration: nil, proration_rounding: nil, recurrence_frequency: nil, rollover_fraction: nil, specifiers: nil, subscription_config: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit}
              #   for more details.
              #
              #   @param id [String]
              #
              #   @param access_amount [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::AccessAmount] The amount of commit to grant.
              #
              #   @param commit_duration [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::CommitDuration] The amount of time the created commits will be valid for
              #
              #   @param priority [Float] Will be passed down to the individual commits
              #
              #   @param product [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::Product]
              #
              #   @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::RateType] Whether the created commits will use the commit rate or list rate
              #
              #   @param starting_at [Time] Determines the start time for the first commit
              #
              #   @param applicable_product_ids [Array<String>] Will be passed down to the individual commits
              #
              #   @param applicable_product_tags [Array<String>] Will be passed down to the individual commits
              #
              #   @param contract [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::Contract]
              #
              #   @param description [String] Will be passed down to the individual commits
              #
              #   @param ending_before [Time] Determines when the contract will stop creating recurring commits. Optional
              #
              #   @param hierarchy_configuration [MetronomeSDK::Models::CommitHierarchyConfiguration] Optional configuration for recurring credit hierarchy access control
              #
              #   @param invoice_amount [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::InvoiceAmount] The amount the customer should be billed for the commit. Not required.
              #
              #   @param name [String] Displayed on invoices. Will be passed through to the individual commits
              #
              #   @param netsuite_sales_order_id [String] Will be passed down to the individual commits
              #
              #   @param proration [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::Proration] Determines whether the first and last commit will be prorated. If not provided,
              #
              #   @param proration_rounding [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding, nil] Rounding configuration for prorated recurring commit amounts.
              #
              #   @param recurrence_frequency [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::RecurrenceFrequency] The frequency at which the recurring commits will be created. If not provided: -
              #
              #   @param rollover_fraction [Float] Will be passed down to the individual commits. This controls how much of an indi
              #
              #   @param specifiers [Array<MetronomeSDK::Models::CommitSpecifier>] List of filters that determine what kind of customer usage draws down a commit o
              #
              #   @param subscription_config [MetronomeSDK::Models::RecurringCommitSubscriptionConfig] Attach a subscription to the recurring commit/credit.

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit#access_amount
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

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit#commit_duration
              class CommitDuration < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute value
                #
                #   @return [Float]
                required :value, Float

                # @!attribute unit
                #
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::CommitDuration::Unit, nil]
                optional :unit,
                         enum: -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::CommitDuration::Unit }

                # @!method initialize(value:, unit: nil)
                #   The amount of time the created commits will be valid for
                #
                #   @param value [Float]
                #   @param unit [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::CommitDuration::Unit]

                # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::CommitDuration#unit
                module Unit
                  extend MetronomeSDK::Internal::Type::Enum

                  PERIODS = :PERIODS

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit#product
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
              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit#rate_type
              module RateType
                extend MetronomeSDK::Internal::Type::Enum

                COMMIT_RATE = :COMMIT_RATE
                LIST_RATE = :LIST_RATE

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit#contract
              class Contract < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!method initialize(id:)
                #   @param id [String]
              end

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit#invoice_amount
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
              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit#proration
              module Proration
                extend MetronomeSDK::Internal::Type::Enum

                NONE = :NONE
                FIRST = :FIRST
                LAST = :LAST
                FIRST_AND_LAST = :FIRST_AND_LAST

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit#proration_rounding
              class ProrationRounding < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute access
                #
                #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding::Access, nil]
                optional :access,
                         -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding::Access }

                # @!attribute invoice
                #
                #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding::Invoice, nil]
                optional :invoice,
                         -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding::Invoice }

                # @!method initialize(access: nil, invoice: nil)
                #   Rounding configuration for prorated recurring commit amounts.
                #
                #   @param access [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding::Access]
                #   @param invoice [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding::Invoice]

                # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding#access
                class Access < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute decimal_places
                  #   Number of decimal places to round to. Applied directly to the stored monetary
                  #   representation. Negative values round to powers of 10 (e.g., -2 rounds to
                  #   nearest 100 in the stored unit).
                  #
                  #   @return [Float]
                  required :decimal_places, Float

                  # @!attribute rounding_method
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding::Access::RoundingMethod]
                  required :rounding_method,
                           enum: -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding::Access::RoundingMethod }

                  # @!method initialize(decimal_places:, rounding_method:)
                  #   Some parameter documentations has been truncated, see
                  #   {MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding::Access}
                  #   for more details.
                  #
                  #   @param decimal_places [Float] Number of decimal places to round to. Applied directly to the stored monetary re
                  #
                  #   @param rounding_method [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding::Access::RoundingMethod]

                  # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding::Access#rounding_method
                  module RoundingMethod
                    extend MetronomeSDK::Internal::Type::Enum

                    HALF_UP = :HALF_UP
                    FLOOR = :FLOOR
                    CEILING = :CEILING

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding#invoice
                class Invoice < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute decimal_places
                  #   Number of decimal places to round to. Applied directly to the stored monetary
                  #   representation. Negative values round to powers of 10 (e.g., -2 rounds to
                  #   nearest 100 in the stored unit).
                  #
                  #   @return [Float]
                  required :decimal_places, Float

                  # @!attribute rounding_method
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding::Invoice::RoundingMethod]
                  required :rounding_method,
                           enum: -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding::Invoice::RoundingMethod }

                  # @!method initialize(decimal_places:, rounding_method:)
                  #   Some parameter documentations has been truncated, see
                  #   {MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding::Invoice}
                  #   for more details.
                  #
                  #   @param decimal_places [Float] Number of decimal places to round to. Applied directly to the stored monetary re
                  #
                  #   @param rounding_method [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding::Invoice::RoundingMethod]

                  # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit::ProrationRounding::Invoice#rounding_method
                  module RoundingMethod
                    extend MetronomeSDK::Internal::Type::Enum

                    HALF_UP = :HALF_UP
                    FLOOR = :FLOOR
                    CEILING = :CEILING

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end
              end

              # The frequency at which the recurring commits will be created. If not provided: -
              # The commits will be created on the usage invoice frequency. If provided: - The
              # period defined in the duration will correspond to this frequency. - Commits will
              # be created aligned with the recurring commit's starting_at rather than the usage
              # invoice dates.
              #
              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCommit#recurrence_frequency
              module RecurrenceFrequency
                extend MetronomeSDK::Internal::Type::Enum

                MONTHLY = :MONTHLY
                QUARTERLY = :QUARTERLY
                ANNUAL = :ANNUAL
                WEEKLY = :WEEKLY
                DAILY = :DAILY

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
              #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::AccessAmount]
              required :access_amount,
                       -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::AccessAmount }

              # @!attribute commit_duration
              #   The amount of time the created commits will be valid for
              #
              #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::CommitDuration]
              required :commit_duration,
                       -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::CommitDuration }

              # @!attribute priority
              #   Will be passed down to the individual commits
              #
              #   @return [Float]
              required :priority, Float

              # @!attribute product
              #
              #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::Product]
              required :product,
                       -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::Product }

              # @!attribute rate_type
              #   Whether the created commits will use the commit rate or list rate
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::RateType]
              required :rate_type,
                       enum: -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::RateType }

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
              #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::Contract, nil]
              optional :contract,
                       -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::Contract }

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
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::Proration, nil]
              optional :proration,
                       enum: -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::Proration }

              # @!attribute proration_rounding
              #   Rounding configuration for prorated recurring credit amounts.
              #
              #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::ProrationRounding, nil]
              optional :proration_rounding,
                       -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::ProrationRounding },
                       nil?: true

              # @!attribute recurrence_frequency
              #   The frequency at which the recurring commits will be created. If not provided: -
              #   The commits will be created on the usage invoice frequency. If provided: - The
              #   period defined in the duration will correspond to this frequency. - Commits will
              #   be created aligned with the recurring commit's starting_at rather than the usage
              #   invoice dates.
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::RecurrenceFrequency, nil]
              optional :recurrence_frequency,
                       enum: -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::RecurrenceFrequency }

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

              # @!method initialize(id:, access_amount:, commit_duration:, priority:, product:, rate_type:, starting_at:, applicable_product_ids: nil, applicable_product_tags: nil, contract: nil, description: nil, ending_before: nil, hierarchy_configuration: nil, name: nil, netsuite_sales_order_id: nil, proration: nil, proration_rounding: nil, recurrence_frequency: nil, rollover_fraction: nil, specifiers: nil, subscription_config: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit}
              #   for more details.
              #
              #   @param id [String]
              #
              #   @param access_amount [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::AccessAmount] The amount of commit to grant.
              #
              #   @param commit_duration [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::CommitDuration] The amount of time the created commits will be valid for
              #
              #   @param priority [Float] Will be passed down to the individual commits
              #
              #   @param product [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::Product]
              #
              #   @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::RateType] Whether the created commits will use the commit rate or list rate
              #
              #   @param starting_at [Time] Determines the start time for the first commit
              #
              #   @param applicable_product_ids [Array<String>] Will be passed down to the individual commits
              #
              #   @param applicable_product_tags [Array<String>] Will be passed down to the individual commits
              #
              #   @param contract [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::Contract]
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
              #   @param proration [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::Proration] Determines whether the first and last commit will be prorated. If not provided,
              #
              #   @param proration_rounding [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::ProrationRounding, nil] Rounding configuration for prorated recurring credit amounts.
              #
              #   @param recurrence_frequency [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::RecurrenceFrequency] The frequency at which the recurring commits will be created. If not provided: -
              #
              #   @param rollover_fraction [Float] Will be passed down to the individual commits. This controls how much of an indi
              #
              #   @param specifiers [Array<MetronomeSDK::Models::CommitSpecifier>] List of filters that determine what kind of customer usage draws down a commit o
              #
              #   @param subscription_config [MetronomeSDK::Models::RecurringCommitSubscriptionConfig] Attach a subscription to the recurring commit/credit.

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit#access_amount
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

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit#commit_duration
              class CommitDuration < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute value
                #
                #   @return [Float]
                required :value, Float

                # @!attribute unit
                #
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::CommitDuration::Unit, nil]
                optional :unit,
                         enum: -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::CommitDuration::Unit }

                # @!method initialize(value:, unit: nil)
                #   The amount of time the created commits will be valid for
                #
                #   @param value [Float]
                #   @param unit [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::CommitDuration::Unit]

                # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::CommitDuration#unit
                module Unit
                  extend MetronomeSDK::Internal::Type::Enum

                  PERIODS = :PERIODS

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit#product
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
              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit#rate_type
              module RateType
                extend MetronomeSDK::Internal::Type::Enum

                COMMIT_RATE = :COMMIT_RATE
                LIST_RATE = :LIST_RATE

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit#contract
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
              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit#proration
              module Proration
                extend MetronomeSDK::Internal::Type::Enum

                NONE = :NONE
                FIRST = :FIRST
                LAST = :LAST
                FIRST_AND_LAST = :FIRST_AND_LAST

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit#proration_rounding
              class ProrationRounding < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute access
                #
                #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::ProrationRounding::Access, nil]
                optional :access,
                         -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::ProrationRounding::Access }

                # @!method initialize(access: nil)
                #   Rounding configuration for prorated recurring credit amounts.
                #
                #   @param access [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::ProrationRounding::Access]

                # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::ProrationRounding#access
                class Access < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute decimal_places
                  #   Number of decimal places to round to. Applied directly to the stored monetary
                  #   representation. Negative values round to powers of 10 (e.g., -2 rounds to
                  #   nearest 100 in the stored unit).
                  #
                  #   @return [Float]
                  required :decimal_places, Float

                  # @!attribute rounding_method
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::ProrationRounding::Access::RoundingMethod]
                  required :rounding_method,
                           enum: -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::ProrationRounding::Access::RoundingMethod }

                  # @!method initialize(decimal_places:, rounding_method:)
                  #   Some parameter documentations has been truncated, see
                  #   {MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::ProrationRounding::Access}
                  #   for more details.
                  #
                  #   @param decimal_places [Float] Number of decimal places to round to. Applied directly to the stored monetary re
                  #
                  #   @param rounding_method [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::ProrationRounding::Access::RoundingMethod]

                  # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit::ProrationRounding::Access#rounding_method
                  module RoundingMethod
                    extend MetronomeSDK::Internal::Type::Enum

                    HALF_UP = :HALF_UP
                    FLOOR = :FLOOR
                    CEILING = :CEILING

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end
              end

              # The frequency at which the recurring commits will be created. If not provided: -
              # The commits will be created on the usage invoice frequency. If provided: - The
              # period defined in the duration will correspond to this frequency. - Commits will
              # be created aligned with the recurring commit's starting_at rather than the usage
              # invoice dates.
              #
              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddRecurringCredit#recurrence_frequency
              module RecurrenceFrequency
                extend MetronomeSDK::Internal::Type::Enum

                MONTHLY = :MONTHLY
                QUARTERLY = :QUARTERLY
                ANNUAL = :ANNUAL
                WEEKLY = :WEEKLY
                DAILY = :DAILY

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class AddResellerRoyalty < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute reseller_type
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddResellerRoyalty::ResellerType]
              required :reseller_type,
                       enum: -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddResellerRoyalty::ResellerType }

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
              #   @param reseller_type [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddResellerRoyalty::ResellerType]
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

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddResellerRoyalty#reseller_type
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
              #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddScheduledCharge::Product]
              required :product,
                       -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddScheduledCharge::Product }

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
              #   @param product [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddScheduledCharge::Product]
              #
              #   @param schedule [MetronomeSDK::Models::SchedulePointInTime]
              #
              #   @param name [String] displayed on invoices
              #
              #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddScheduledCharge#product
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

            class AddSubscription < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute billing_periods
              #   Previous, current, and next billing periods for the subscription.
              #
              #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingPeriods]
              required :billing_periods,
                       -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingPeriods }

              # @!attribute collection_schedule
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::CollectionSchedule]
              required :collection_schedule,
                       enum: -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::CollectionSchedule }

              # @!attribute proration
              #
              #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::Proration]
              required :proration,
                       -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::Proration }

              # @!attribute quantity_management_mode
              #   Determines how the subscription's quantity is controlled. Defaults to
              #   QUANTITY_ONLY. **QUANTITY_ONLY**: The subscription quantity is specified
              #   directly on the subscription. `initial_quantity` must be provided with this
              #   option. Compatible with recurring commits/credits that use POOLED allocation.
              #   **SEAT_BASED**: Use when you want to pass specific seat identifiers (e.g. add
              #   user_123) to increment and decrement a subscription quantity, rather than
              #   directly providing the quantity. You must use a **SEAT_BASED** subscription to
              #   use a linked recurring credit with an allocation per seat. `seat_config` must be
              #   provided with this option.
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::QuantityManagementMode]
              required :quantity_management_mode,
                       enum: -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::QuantityManagementMode }

              # @!attribute quantity_schedule
              #   List of quantity schedule items for the subscription. Only includes the current
              #   quantity and future quantity changes.
              #
              #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::QuantitySchedule>]
              required :quantity_schedule,
                       -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::QuantitySchedule] }

              # @!attribute starting_at
              #
              #   @return [Time]
              required :starting_at, Time

              # @!attribute subscription_rate
              #
              #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::SubscriptionRate]
              required :subscription_rate,
                       -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::SubscriptionRate }

              # @!attribute id
              #
              #   @return [String, nil]
              optional :id, String

              # @!attribute billing_cycle_config
              #
              #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingCycleConfig, nil]
              optional :billing_cycle_config,
                       -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingCycleConfig }

              # @!attribute custom_fields
              #   Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
              #
              #   @return [Hash{Symbol=>String}, nil]
              optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

              # @!attribute description
              #
              #   @return [String, nil]
              optional :description, String

              # @!attribute ending_before
              #
              #   @return [Time, nil]
              optional :ending_before, Time

              # @!attribute fiat_credit_type_id
              #
              #   @return [String, nil]
              optional :fiat_credit_type_id, String

              # @!attribute name
              #
              #   @return [String, nil]
              optional :name, String

              # @!attribute seat_config
              #
              #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::SeatConfig, nil]
              optional :seat_config,
                       -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::SeatConfig }

              # @!method initialize(billing_periods:, collection_schedule:, proration:, quantity_management_mode:, quantity_schedule:, starting_at:, subscription_rate:, id: nil, billing_cycle_config: nil, custom_fields: nil, description: nil, ending_before: nil, fiat_credit_type_id: nil, name: nil, seat_config: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription}
              #   for more details.
              #
              #   @param billing_periods [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingPeriods] Previous, current, and next billing periods for the subscription.
              #
              #   @param collection_schedule [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::CollectionSchedule]
              #
              #   @param proration [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::Proration]
              #
              #   @param quantity_management_mode [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::QuantityManagementMode] Determines how the subscription's quantity is controlled. Defaults to QUANTITY_O
              #
              #   @param quantity_schedule [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::QuantitySchedule>] List of quantity schedule items for the subscription. Only includes the current
              #
              #   @param starting_at [Time]
              #
              #   @param subscription_rate [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::SubscriptionRate]
              #
              #   @param id [String]
              #
              #   @param billing_cycle_config [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingCycleConfig]
              #
              #   @param custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
              #
              #   @param description [String]
              #
              #   @param ending_before [Time]
              #
              #   @param fiat_credit_type_id [String]
              #
              #   @param name [String]
              #
              #   @param seat_config [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::SeatConfig]

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription#billing_periods
              class BillingPeriods < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute current
                #
                #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingPeriods::Current, nil]
                optional :current,
                         -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingPeriods::Current }

                # @!attribute next_
                #
                #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingPeriods::Next, nil]
                optional :next_,
                         -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingPeriods::Next },
                         api_name: :next

                # @!attribute previous
                #
                #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingPeriods::Previous, nil]
                optional :previous,
                         -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingPeriods::Previous }

                # @!method initialize(current: nil, next_: nil, previous: nil)
                #   Previous, current, and next billing periods for the subscription.
                #
                #   @param current [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingPeriods::Current]
                #   @param next_ [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingPeriods::Next]
                #   @param previous [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingPeriods::Previous]

                # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingPeriods#current
                class Current < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute ending_before
                  #
                  #   @return [Time]
                  required :ending_before, Time

                  # @!attribute starting_at
                  #
                  #   @return [Time]
                  required :starting_at, Time

                  # @!method initialize(ending_before:, starting_at:)
                  #   @param ending_before [Time]
                  #   @param starting_at [Time]
                end

                # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingPeriods#next_
                class Next < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute ending_before
                  #
                  #   @return [Time]
                  required :ending_before, Time

                  # @!attribute starting_at
                  #
                  #   @return [Time]
                  required :starting_at, Time

                  # @!method initialize(ending_before:, starting_at:)
                  #   @param ending_before [Time]
                  #   @param starting_at [Time]
                end

                # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingPeriods#previous
                class Previous < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute ending_before
                  #
                  #   @return [Time]
                  required :ending_before, Time

                  # @!attribute starting_at
                  #
                  #   @return [Time]
                  required :starting_at, Time

                  # @!method initialize(ending_before:, starting_at:)
                  #   @param ending_before [Time]
                  #   @param starting_at [Time]
                end
              end

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription#collection_schedule
              module CollectionSchedule
                extend MetronomeSDK::Internal::Type::Enum

                ADVANCE = :ADVANCE
                ARREARS = :ARREARS

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription#proration
              class Proration < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute invoice_behavior
                #
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::Proration::InvoiceBehavior]
                required :invoice_behavior,
                         enum: -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::Proration::InvoiceBehavior }

                # @!attribute is_prorated
                #
                #   @return [Boolean]
                required :is_prorated, MetronomeSDK::Internal::Type::Boolean

                # @!attribute rounding
                #
                #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::Proration::Rounding, nil]
                optional :rounding,
                         -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::Proration::Rounding }

                # @!method initialize(invoice_behavior:, is_prorated:, rounding: nil)
                #   @param invoice_behavior [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::Proration::InvoiceBehavior]
                #   @param is_prorated [Boolean]
                #   @param rounding [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::Proration::Rounding]

                # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::Proration#invoice_behavior
                module InvoiceBehavior
                  extend MetronomeSDK::Internal::Type::Enum

                  BILL_IMMEDIATELY = :BILL_IMMEDIATELY
                  BILL_ON_NEXT_COLLECTION_DATE = :BILL_ON_NEXT_COLLECTION_DATE

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end

                # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::Proration#rounding
                class Rounding < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute decimal_places
                  #   Number of decimal places to round to. Applied directly to the stored monetary
                  #   representation. Negative values round to powers of 10 (e.g., -2 rounds to
                  #   nearest 100 in the stored unit).
                  #
                  #   @return [Float]
                  required :decimal_places, Float

                  # @!attribute rounding_method
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::Proration::Rounding::RoundingMethod]
                  required :rounding_method,
                           enum: -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::Proration::Rounding::RoundingMethod }

                  # @!method initialize(decimal_places:, rounding_method:)
                  #   Some parameter documentations has been truncated, see
                  #   {MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::Proration::Rounding}
                  #   for more details.
                  #
                  #   @param decimal_places [Float] Number of decimal places to round to. Applied directly to the stored monetary re
                  #
                  #   @param rounding_method [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::Proration::Rounding::RoundingMethod]

                  # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::Proration::Rounding#rounding_method
                  module RoundingMethod
                    extend MetronomeSDK::Internal::Type::Enum

                    HALF_UP = :HALF_UP
                    FLOOR = :FLOOR
                    CEILING = :CEILING

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end
              end

              # Determines how the subscription's quantity is controlled. Defaults to
              # QUANTITY_ONLY. **QUANTITY_ONLY**: The subscription quantity is specified
              # directly on the subscription. `initial_quantity` must be provided with this
              # option. Compatible with recurring commits/credits that use POOLED allocation.
              # **SEAT_BASED**: Use when you want to pass specific seat identifiers (e.g. add
              # user_123) to increment and decrement a subscription quantity, rather than
              # directly providing the quantity. You must use a **SEAT_BASED** subscription to
              # use a linked recurring credit with an allocation per seat. `seat_config` must be
              # provided with this option.
              #
              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription#quantity_management_mode
              module QuantityManagementMode
                extend MetronomeSDK::Internal::Type::Enum

                SEAT_BASED = :SEAT_BASED
                QUANTITY_ONLY = :QUANTITY_ONLY

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              class QuantitySchedule < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute quantity
                #
                #   @return [Float]
                required :quantity, Float

                # @!attribute starting_at
                #
                #   @return [Time]
                required :starting_at, Time

                # @!attribute ending_before
                #
                #   @return [Time, nil]
                optional :ending_before, Time

                # @!method initialize(quantity:, starting_at:, ending_before: nil)
                #   @param quantity [Float]
                #   @param starting_at [Time]
                #   @param ending_before [Time]
              end

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription#subscription_rate
              class SubscriptionRate < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute billing_frequency
                #
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::SubscriptionRate::BillingFrequency]
                required :billing_frequency,
                         enum: -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::SubscriptionRate::BillingFrequency }

                # @!attribute product
                #
                #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::SubscriptionRate::Product]
                required :product,
                         -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::SubscriptionRate::Product }

                # @!method initialize(billing_frequency:, product:)
                #   @param billing_frequency [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::SubscriptionRate::BillingFrequency]
                #   @param product [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::SubscriptionRate::Product]

                # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::SubscriptionRate#billing_frequency
                module BillingFrequency
                  extend MetronomeSDK::Internal::Type::Enum

                  MONTHLY = :MONTHLY
                  QUARTERLY = :QUARTERLY
                  ANNUAL = :ANNUAL
                  WEEKLY = :WEEKLY

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end

                # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::SubscriptionRate#product
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

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription#billing_cycle_config
              class BillingCycleConfig < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute anchor_date
                #   The date this subscription's billing cycle is anchored to.
                #
                #   @return [Time]
                required :anchor_date, Time

                # @!attribute invoice_placement
                #   Controls whether this subscription consolidates onto usage invoices or gets its
                #   own scheduled invoice.
                #
                #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingCycleConfig::InvoicePlacement]
                required :invoice_placement,
                         enum: -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingCycleConfig::InvoicePlacement }

                # @!method initialize(anchor_date:, invoice_placement:)
                #   Some parameter documentations has been truncated, see
                #   {MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingCycleConfig}
                #   for more details.
                #
                #   @param anchor_date [Time] The date this subscription's billing cycle is anchored to.
                #
                #   @param invoice_placement [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingCycleConfig::InvoicePlacement] Controls whether this subscription consolidates onto usage invoices or gets its

                # Controls whether this subscription consolidates onto usage invoices or gets its
                # own scheduled invoice.
                #
                # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::BillingCycleConfig#invoice_placement
                module InvoicePlacement
                  extend MetronomeSDK::Internal::Type::Enum

                  ON_SCHEDULED_INVOICE = :ON_SCHEDULED_INVOICE
                  ON_USAGE_INVOICE = :ON_USAGE_INVOICE

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription#seat_config
              class SeatConfig < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute seat_group_key
                #   The property name, sent on usage events, that identifies the seat ID associated
                #   with the usage event. For example, the property name might be seat_id or
                #   user_id. The property must be set as a group key on billable metrics and a
                #   presentation/pricing group key on contract products. This allows linked
                #   recurring credits with an allocation per seat to be consumed by only one seat's
                #   usage.
                #
                #   @return [String]
                required :seat_group_key, String

                # @!method initialize(seat_group_key:)
                #   Some parameter documentations has been truncated, see
                #   {MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddSubscription::SeatConfig}
                #   for more details.
                #
                #   @param seat_group_key [String] The property name, sent on usage events, that identifies the seat ID associated
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
              #   {MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::AddUsageFilter} for
              #   more details.
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
              #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::AccessSchedule, nil]
              optional :access_schedule,
                       -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::AccessSchedule }

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
              #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::InvoiceSchedule, nil]
              optional :invoice_schedule,
                       -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::InvoiceSchedule }

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
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::RateType, nil]
              optional :rate_type,
                       enum: -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::RateType }

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
              #   {MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit} for
              #   more details.
              #
              #   @param id [String]
              #
              #   @param access_schedule [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::AccessSchedule]
              #
              #   @param applicable_product_ids [Array<String>, nil] Which products the commit applies to. If applicable_product_ids, applicable_prod
              #
              #   @param applicable_product_tags [Array<String>, nil] Which tags the commit applies to. If applicable*product_ids, applicable_product*
              #
              #   @param description [String]
              #
              #   @param hierarchy_configuration [MetronomeSDK::Models::CommitHierarchyConfiguration] Optional configuration for commit hierarchy access control
              #
              #   @param invoice_schedule [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::InvoiceSchedule]
              #
              #   @param name [String]
              #
              #   @param netsuite_sales_order_id [String, nil]
              #
              #   @param priority [Float, nil] If multiple commits are applicable, the one with the lower priority will apply f
              #
              #   @param product_id [String]
              #
              #   @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::RateType] If set, the commit's rate type was updated to the specified value.
              #
              #   @param rollover_fraction [Float, nil]
              #
              #   @param specifiers [Array<MetronomeSDK::Models::CommitSpecifierInput>, nil] List of filters that determine what kind of customer usage draws down a commit o

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit#access_schedule
              class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute add_schedule_items
                #
                #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::AccessSchedule::AddScheduleItem>, nil]
                optional :add_schedule_items,
                         -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::AccessSchedule::AddScheduleItem] }

                # @!attribute remove_schedule_items
                #
                #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::AccessSchedule::RemoveScheduleItem>, nil]
                optional :remove_schedule_items,
                         -> do
                           MetronomeSDK::Internal::Type::ArrayOf[
                             MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::AccessSchedule::RemoveScheduleItem
                           ]
                         end

                # @!attribute update_schedule_items
                #
                #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::AccessSchedule::UpdateScheduleItem>, nil]
                optional :update_schedule_items,
                         -> do
                           MetronomeSDK::Internal::Type::ArrayOf[
                             MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::AccessSchedule::UpdateScheduleItem
                           ]
                         end

                # @!method initialize(add_schedule_items: nil, remove_schedule_items: nil, update_schedule_items: nil)
                #   @param add_schedule_items [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::AccessSchedule::AddScheduleItem>]
                #   @param remove_schedule_items [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::AccessSchedule::RemoveScheduleItem>]
                #   @param update_schedule_items [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::AccessSchedule::UpdateScheduleItem>]

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

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit#invoice_schedule
              class InvoiceSchedule < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute add_schedule_items
                #
                #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::InvoiceSchedule::AddScheduleItem>, nil]
                optional :add_schedule_items,
                         -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::InvoiceSchedule::AddScheduleItem] }

                # @!attribute remove_schedule_items
                #
                #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::InvoiceSchedule::RemoveScheduleItem>, nil]
                optional :remove_schedule_items,
                         -> do
                           MetronomeSDK::Internal::Type::ArrayOf[
                             MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::InvoiceSchedule::RemoveScheduleItem
                           ]
                         end

                # @!attribute update_schedule_items
                #
                #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::InvoiceSchedule::UpdateScheduleItem>, nil]
                optional :update_schedule_items,
                         -> do
                           MetronomeSDK::Internal::Type::ArrayOf[
                             MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::InvoiceSchedule::UpdateScheduleItem
                           ]
                         end

                # @!method initialize(add_schedule_items: nil, remove_schedule_items: nil, update_schedule_items: nil)
                #   @param add_schedule_items [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::InvoiceSchedule::AddScheduleItem>]
                #   @param remove_schedule_items [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::InvoiceSchedule::RemoveScheduleItem>]
                #   @param update_schedule_items [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit::InvoiceSchedule::UpdateScheduleItem>]

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
              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCommit#rate_type
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
              #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::AccessSchedule, nil]
              optional :access_schedule,
                       -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::AccessSchedule }

              # @!attribute applicable_product_ids
              #   Which products the credit applies to. If applicable_product_ids,
              #   applicable_product_tags or specifiers are not provided, the credit applies to
              #   all products.
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String], nil?: true

              # @!attribute applicable_product_tags
              #   Which tags the credit applies to. If applicable_product_ids,
              #   applicable_product_tags or specifiers are not provided, the credit applies to
              #   all products.
              #
              #   @return [Array<String>, nil]
              optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String], nil?: true

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

              # @!attribute product_id
              #
              #   @return [String, nil]
              optional :product_id, String

              # @!attribute rate_type
              #   If set, the credit's rate type was updated to the specified value.
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::RateType, nil]
              optional :rate_type,
                       enum: -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::RateType }

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

              # @!method initialize(id:, access_schedule: nil, applicable_product_ids: nil, applicable_product_tags: nil, description: nil, hierarchy_configuration: nil, name: nil, netsuite_sales_order_id: nil, priority: nil, product_id: nil, rate_type: nil, rollover_fraction: nil, specifiers: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit} for
              #   more details.
              #
              #   @param id [String]
              #
              #   @param access_schedule [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::AccessSchedule]
              #
              #   @param applicable_product_ids [Array<String>, nil] Which products the credit applies to. If applicable_product_ids, applicable_prod
              #
              #   @param applicable_product_tags [Array<String>, nil] Which tags the credit applies to. If applicable*product_ids, applicable_product*
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
              #   @param product_id [String]
              #
              #   @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::RateType] If set, the credit's rate type was updated to the specified value.
              #
              #   @param rollover_fraction [Float, nil]
              #
              #   @param specifiers [Array<MetronomeSDK::Models::CommitSpecifierInput>, nil] List of filters that determine what kind of customer usage draws down a commit o

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit#access_schedule
              class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute add_schedule_items
                #
                #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::AccessSchedule::AddScheduleItem>, nil]
                optional :add_schedule_items,
                         -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::AccessSchedule::AddScheduleItem] }

                # @!attribute remove_schedule_items
                #
                #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::AccessSchedule::RemoveScheduleItem>, nil]
                optional :remove_schedule_items,
                         -> do
                           MetronomeSDK::Internal::Type::ArrayOf[
                             MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::AccessSchedule::RemoveScheduleItem
                           ]
                         end

                # @!attribute update_schedule_items
                #
                #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::AccessSchedule::UpdateScheduleItem>, nil]
                optional :update_schedule_items,
                         -> do
                           MetronomeSDK::Internal::Type::ArrayOf[
                             MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::AccessSchedule::UpdateScheduleItem
                           ]
                         end

                # @!method initialize(add_schedule_items: nil, remove_schedule_items: nil, update_schedule_items: nil)
                #   @param add_schedule_items [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::AccessSchedule::AddScheduleItem>]
                #   @param remove_schedule_items [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::AccessSchedule::RemoveScheduleItem>]
                #   @param update_schedule_items [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit::AccessSchedule::UpdateScheduleItem>]

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
              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateCredit#rate_type
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
              #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule, nil]
              optional :schedule,
                       -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule }

              # @!method initialize(id:, custom_fields: nil, name: nil, netsuite_sales_order_id: nil, schedule: nil)
              #   @param id [String]
              #
              #   @param custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
              #
              #   @param name [String]
              #
              #   @param netsuite_sales_order_id [String]
              #
              #   @param schedule [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule] Must provide either schedule_items or recurring_schedule.

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount#schedule
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
                #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::RecurringSchedule, nil]
                optional :recurring_schedule,
                         -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::RecurringSchedule }

                # @!attribute schedule_items
                #   Either provide amount or provide both unit_price and quantity.
                #
                #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::ScheduleItem>, nil]
                optional :schedule_items,
                         -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::ScheduleItem] }

                # @!method initialize(credit_type_id: nil, do_not_invoice: nil, recurring_schedule: nil, schedule_items: nil)
                #   Some parameter documentations has been truncated, see
                #   {MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule}
                #   for more details.
                #
                #   Must provide either schedule_items or recurring_schedule.
                #
                #   @param credit_type_id [String] Defaults to USD (cents) if not passed.
                #
                #   @param do_not_invoice [Boolean] This field is only applicable to commit invoice schedules. If true, this schedul
                #
                #   @param recurring_schedule [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::RecurringSchedule] Enter the unit price and quantity for the charge or instead only send the amount
                #
                #   @param schedule_items [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::ScheduleItem>] Either provide amount or provide both unit_price and quantity.

                # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule#recurring_schedule
                class RecurringSchedule < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount_distribution
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::RecurringSchedule::AmountDistribution]
                  required :amount_distribution,
                           enum: -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::RecurringSchedule::AmountDistribution }

                  # @!attribute ending_before
                  #   RFC 3339 timestamp (exclusive).
                  #
                  #   @return [Time]
                  required :ending_before, Time

                  # @!attribute frequency
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::RecurringSchedule::Frequency]
                  required :frequency,
                           enum: -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::RecurringSchedule::Frequency }

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
                  #   {MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::RecurringSchedule}
                  #   for more details.
                  #
                  #   Enter the unit price and quantity for the charge or instead only send the
                  #   amount. If amount is sent, the unit price is assumed to be the amount and
                  #   quantity is inferred to be 1.
                  #
                  #   @param amount_distribution [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::RecurringSchedule::AmountDistribution]
                  #
                  #   @param ending_before [Time] RFC 3339 timestamp (exclusive).
                  #
                  #   @param frequency [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::RecurringSchedule::Frequency]
                  #
                  #   @param starting_at [Time] RFC 3339 timestamp (inclusive).
                  #
                  #   @param amount [Float] Amount for the charge. Can be provided instead of unit_price and quantity. If am
                  #
                  #   @param quantity [Float] Quantity for the charge. Will be multiplied by unit_price to determine the amoun
                  #
                  #   @param unit_price [Float] Unit price for the charge. Will be multiplied by quantity to determine the amoun

                  # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::RecurringSchedule#amount_distribution
                  module AmountDistribution
                    extend MetronomeSDK::Internal::Type::Enum

                    DIVIDED = :DIVIDED
                    DIVIDED_ROUNDED = :DIVIDED_ROUNDED
                    EACH = :EACH

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end

                  # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::RecurringSchedule#frequency
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
                  #   {MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateDiscount::Schedule::ScheduleItem}
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

            # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit#update_prepaid_balance_threshold_configuration
            class UpdatePrepaidBalanceThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute commit
              #
              #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::Commit, nil]
              optional :commit,
                       -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::Commit }

              # @!attribute custom_credit_type_id
              #   If provided, the threshold, recharge-to amount, and the resulting threshold
              #   commit amount will be in terms of this credit type instead of the fiat currency.
              #
              #   @return [String, nil]
              optional :custom_credit_type_id, String, nil?: true

              # @!attribute discount_configuration
              #
              #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::DiscountConfiguration, nil]
              optional :discount_configuration,
                       -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::DiscountConfiguration },
                       nil?: true

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

              # @!attribute threshold_balance_specifiers
              #   Determines which balances are excluded from remaining balance calculation for
              #   threshold billing.
              #
              #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier>, nil]
              optional :threshold_balance_specifiers,
                       -> do
                         MetronomeSDK::Internal::Type::ArrayOf[
                           MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier
                         ]
                       end,
                       nil?: true

              # @!method initialize(commit: nil, custom_credit_type_id: nil, discount_configuration: nil, is_enabled: nil, payment_gate_config: nil, recharge_to_amount: nil, threshold_amount: nil, threshold_balance_specifiers: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration}
              #   for more details.
              #
              #   @param commit [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::Commit]
              #
              #   @param custom_credit_type_id [String, nil] If provided, the threshold, recharge-to amount, and the resulting threshold comm
              #
              #   @param discount_configuration [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::DiscountConfiguration, nil]
              #
              #   @param is_enabled [Boolean] When set to false, the contract will not be evaluated against the threshold_amou
              #
              #   @param payment_gate_config [MetronomeSDK::Models::PaymentGateConfigV2]
              #
              #   @param recharge_to_amount [Float] Specify the amount the balance should be recharged to.
              #
              #   @param threshold_amount [Float] Specify the threshold amount for the contract. Each time the contract's balance
              #
              #   @param threshold_balance_specifiers [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier>, nil] Determines which balances are excluded from remaining balance calculation for th

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration#commit
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
                #   {MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::Commit}
                #   for more details.
                #
                #   @param applicable_product_ids [Array<String>, nil] Which products the threshold commit applies to. If both applicable_product_ids a
                #
                #   @param applicable_product_tags [Array<String>, nil] Which tags the threshold commit applies to. If both applicable_product_ids and a
                #
                #   @param specifiers [Array<MetronomeSDK::Models::CommitSpecifierInput>, nil] List of filters that determine what kind of customer usage draws down a commit o
              end

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration#discount_configuration
              class DiscountConfiguration < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute cap
                #   Update the discount cap. Set to null to remove an existing cap.
                #
                #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::DiscountConfiguration::Cap, nil]
                optional :cap,
                         -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::DiscountConfiguration::Cap },
                         nil?: true

                # @!attribute payment_fraction
                #   The fraction of the original amount that the customer pays after applying the
                #   discount. Set to null to remove the discount fraction. For example, 0.85 means
                #   the customer pays 85% of the original amount (a 15% discount).
                #
                #   @return [Float, nil]
                optional :payment_fraction, Float, nil?: true

                # @!method initialize(cap: nil, payment_fraction: nil)
                #   Some parameter documentations has been truncated, see
                #   {MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::DiscountConfiguration}
                #   for more details.
                #
                #   @param cap [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::DiscountConfiguration::Cap, nil] Update the discount cap. Set to null to remove an existing cap.
                #
                #   @param payment_fraction [Float, nil] The fraction of the original amount that the customer pays after applying the di

                # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::DiscountConfiguration#cap
                class Cap < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #   Accumulated spend ceiling above which the discount stops applying.
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute spend_tracker_alias
                  #   Alias of the spend tracker this cap is measured against.
                  #
                  #   @return [String]
                  required :spend_tracker_alias, String

                  # @!method initialize(amount:, spend_tracker_alias:)
                  #   Update the discount cap. Set to null to remove an existing cap.
                  #
                  #   @param amount [Float] Accumulated spend ceiling above which the discount stops applying.
                  #
                  #   @param spend_tracker_alias [String] Alias of the spend tracker this cap is measured against.
                end
              end

              class ThresholdBalanceSpecifier < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute exclude
                #
                #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier::Exclude>]
                required :exclude,
                         -> do
                           MetronomeSDK::Internal::Type::ArrayOf[
                             MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier::Exclude
                           ]
                         end

                # @!method initialize(exclude:)
                #   @param exclude [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier::Exclude>]

                class Exclude < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute custom_field_filters
                  #
                  #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier::Exclude::CustomFieldFilter>]
                  required :custom_field_filters,
                           -> do
                             MetronomeSDK::Internal::Type::ArrayOf[
                               MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier::Exclude::CustomFieldFilter
                             ]
                           end

                  # @!method initialize(custom_field_filters:)
                  #   @param custom_field_filters [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier::Exclude::CustomFieldFilter>]

                  class CustomFieldFilter < MetronomeSDK::Internal::Type::BaseModel
                    # @!attribute entity
                    #
                    #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier::Exclude::CustomFieldFilter::Entity]
                    required :entity,
                             enum: -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier::Exclude::CustomFieldFilter::Entity }

                    # @!attribute key
                    #
                    #   @return [String]
                    required :key, String

                    # @!attribute value
                    #
                    #   @return [String]
                    required :value, String

                    # @!method initialize(entity:, key:, value:)
                    #   @param entity [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier::Exclude::CustomFieldFilter::Entity]
                    #   @param key [String]
                    #   @param value [String]

                    # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdatePrepaidBalanceThresholdConfiguration::ThresholdBalanceSpecifier::Exclude::CustomFieldFilter#entity
                    module Entity
                      extend MetronomeSDK::Internal::Type::Enum

                      COMMIT = :Commit
                      CONTRACT_CREDIT = :ContractCredit
                      CONTRACT_CREDIT_OR_COMMIT = :ContractCreditOrCommit

                      # @!method self.values
                      #   @return [Array<Symbol>]
                    end
                  end
                end
              end
            end

            class UpdateRecurringCommit < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute access_amount
              #
              #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::AccessAmount, nil]
              optional :access_amount,
                       -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::AccessAmount }

              # @!attribute ending_before
              #
              #   @return [Time, nil]
              optional :ending_before, Time

              # @!attribute invoice_amount
              #
              #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::InvoiceAmount, nil]
              optional :invoice_amount,
                       -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::InvoiceAmount }

              # @!attribute proration_rounding
              #   Rounding configuration for prorated recurring commit amounts.
              #
              #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding, nil]
              optional :proration_rounding,
                       -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding },
                       nil?: true

              # @!attribute rate_type
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::RateType, nil]
              optional :rate_type,
                       enum: -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::RateType }

              # @!method initialize(id:, access_amount: nil, ending_before: nil, invoice_amount: nil, proration_rounding: nil, rate_type: nil)
              #   @param id [String]
              #
              #   @param access_amount [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::AccessAmount]
              #
              #   @param ending_before [Time]
              #
              #   @param invoice_amount [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::InvoiceAmount]
              #
              #   @param proration_rounding [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding, nil] Rounding configuration for prorated recurring commit amounts.
              #
              #   @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::RateType]

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit#access_amount
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

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit#invoice_amount
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

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit#proration_rounding
              class ProrationRounding < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute access
                #
                #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding::Access, nil]
                optional :access,
                         -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding::Access }

                # @!attribute invoice
                #
                #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding::Invoice, nil]
                optional :invoice,
                         -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding::Invoice }

                # @!method initialize(access: nil, invoice: nil)
                #   Rounding configuration for prorated recurring commit amounts.
                #
                #   @param access [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding::Access]
                #   @param invoice [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding::Invoice]

                # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding#access
                class Access < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute decimal_places
                  #   Number of decimal places to round to. Applied directly to the stored monetary
                  #   representation. Negative values round to powers of 10 (e.g., -2 rounds to
                  #   nearest 100 in the stored unit).
                  #
                  #   @return [Float]
                  required :decimal_places, Float

                  # @!attribute rounding_method
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding::Access::RoundingMethod]
                  required :rounding_method,
                           enum: -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding::Access::RoundingMethod }

                  # @!method initialize(decimal_places:, rounding_method:)
                  #   Some parameter documentations has been truncated, see
                  #   {MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding::Access}
                  #   for more details.
                  #
                  #   @param decimal_places [Float] Number of decimal places to round to. Applied directly to the stored monetary re
                  #
                  #   @param rounding_method [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding::Access::RoundingMethod]

                  # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding::Access#rounding_method
                  module RoundingMethod
                    extend MetronomeSDK::Internal::Type::Enum

                    HALF_UP = :HALF_UP
                    FLOOR = :FLOOR
                    CEILING = :CEILING

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding#invoice
                class Invoice < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute decimal_places
                  #   Number of decimal places to round to. Applied directly to the stored monetary
                  #   representation. Negative values round to powers of 10 (e.g., -2 rounds to
                  #   nearest 100 in the stored unit).
                  #
                  #   @return [Float]
                  required :decimal_places, Float

                  # @!attribute rounding_method
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding::Invoice::RoundingMethod]
                  required :rounding_method,
                           enum: -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding::Invoice::RoundingMethod }

                  # @!method initialize(decimal_places:, rounding_method:)
                  #   Some parameter documentations has been truncated, see
                  #   {MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding::Invoice}
                  #   for more details.
                  #
                  #   @param decimal_places [Float] Number of decimal places to round to. Applied directly to the stored monetary re
                  #
                  #   @param rounding_method [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding::Invoice::RoundingMethod]

                  # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit::ProrationRounding::Invoice#rounding_method
                  module RoundingMethod
                    extend MetronomeSDK::Internal::Type::Enum

                    HALF_UP = :HALF_UP
                    FLOOR = :FLOOR
                    CEILING = :CEILING

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end
              end

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCommit#rate_type
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
              #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::AccessAmount, nil]
              optional :access_amount,
                       -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::AccessAmount }

              # @!attribute ending_before
              #
              #   @return [Time, nil]
              optional :ending_before, Time

              # @!attribute proration_rounding
              #   Rounding configuration for prorated recurring credit amounts.
              #
              #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::ProrationRounding, nil]
              optional :proration_rounding,
                       -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::ProrationRounding },
                       nil?: true

              # @!attribute rate_type
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::RateType, nil]
              optional :rate_type,
                       enum: -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::RateType }

              # @!method initialize(id:, access_amount: nil, ending_before: nil, proration_rounding: nil, rate_type: nil)
              #   @param id [String]
              #
              #   @param access_amount [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::AccessAmount]
              #
              #   @param ending_before [Time]
              #
              #   @param proration_rounding [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::ProrationRounding, nil] Rounding configuration for prorated recurring credit amounts.
              #
              #   @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::RateType]

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit#access_amount
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

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit#proration_rounding
              class ProrationRounding < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute access
                #
                #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::ProrationRounding::Access, nil]
                optional :access,
                         -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::ProrationRounding::Access }

                # @!method initialize(access: nil)
                #   Rounding configuration for prorated recurring credit amounts.
                #
                #   @param access [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::ProrationRounding::Access]

                # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::ProrationRounding#access
                class Access < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute decimal_places
                  #   Number of decimal places to round to. Applied directly to the stored monetary
                  #   representation. Negative values round to powers of 10 (e.g., -2 rounds to
                  #   nearest 100 in the stored unit).
                  #
                  #   @return [Float]
                  required :decimal_places, Float

                  # @!attribute rounding_method
                  #
                  #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::ProrationRounding::Access::RoundingMethod]
                  required :rounding_method,
                           enum: -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::ProrationRounding::Access::RoundingMethod }

                  # @!method initialize(decimal_places:, rounding_method:)
                  #   Some parameter documentations has been truncated, see
                  #   {MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::ProrationRounding::Access}
                  #   for more details.
                  #
                  #   @param decimal_places [Float] Number of decimal places to round to. Applied directly to the stored monetary re
                  #
                  #   @param rounding_method [Symbol, MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::ProrationRounding::Access::RoundingMethod]

                  # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit::ProrationRounding::Access#rounding_method
                  module RoundingMethod
                    extend MetronomeSDK::Internal::Type::Enum

                    HALF_UP = :HALF_UP
                    FLOOR = :FLOOR
                    CEILING = :CEILING

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end
              end

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateRecurringCredit#rate_type
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
              #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateScheduledCharge::InvoiceSchedule, nil]
              optional :invoice_schedule,
                       -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateScheduledCharge::InvoiceSchedule }

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
              #   @param invoice_schedule [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateScheduledCharge::InvoiceSchedule]
              #   @param name [String]
              #   @param netsuite_sales_order_id [String, nil]

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateScheduledCharge#invoice_schedule
              class InvoiceSchedule < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute add_schedule_items
                #
                #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateScheduledCharge::InvoiceSchedule::AddScheduleItem>, nil]
                optional :add_schedule_items,
                         -> do
                           MetronomeSDK::Internal::Type::ArrayOf[
                             MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateScheduledCharge::InvoiceSchedule::AddScheduleItem
                           ]
                         end

                # @!attribute remove_schedule_items
                #
                #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateScheduledCharge::InvoiceSchedule::RemoveScheduleItem>, nil]
                optional :remove_schedule_items,
                         -> do
                           MetronomeSDK::Internal::Type::ArrayOf[
                             MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateScheduledCharge::InvoiceSchedule::RemoveScheduleItem
                           ]
                         end

                # @!attribute update_schedule_items
                #
                #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateScheduledCharge::InvoiceSchedule::UpdateScheduleItem>, nil]
                optional :update_schedule_items,
                         -> do
                           MetronomeSDK::Internal::Type::ArrayOf[
                             MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateScheduledCharge::InvoiceSchedule::UpdateScheduleItem
                           ]
                         end

                # @!method initialize(add_schedule_items: nil, remove_schedule_items: nil, update_schedule_items: nil)
                #   @param add_schedule_items [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateScheduledCharge::InvoiceSchedule::AddScheduleItem>]
                #   @param remove_schedule_items [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateScheduledCharge::InvoiceSchedule::RemoveScheduleItem>]
                #   @param update_schedule_items [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateScheduledCharge::InvoiceSchedule::UpdateScheduleItem>]

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

            # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit#update_spend_threshold_configuration
            class UpdateSpendThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute commit
              #
              #   @return [MetronomeSDK::Models::UpdateBaseThresholdCommit, nil]
              optional :commit, -> { MetronomeSDK::UpdateBaseThresholdCommit }

              # @!attribute discount_configuration
              #
              #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSpendThresholdConfiguration::DiscountConfiguration, nil]
              optional :discount_configuration,
                       -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSpendThresholdConfiguration::DiscountConfiguration },
                       nil?: true

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

              # @!method initialize(commit: nil, discount_configuration: nil, is_enabled: nil, payment_gate_config: nil, threshold_amount: nil)
              #   Some parameter documentations has been truncated, see
              #   {MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSpendThresholdConfiguration}
              #   for more details.
              #
              #   @param commit [MetronomeSDK::Models::UpdateBaseThresholdCommit]
              #
              #   @param discount_configuration [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSpendThresholdConfiguration::DiscountConfiguration, nil]
              #
              #   @param is_enabled [Boolean] When set to false, the contract will not be evaluated against the threshold_amou
              #
              #   @param payment_gate_config [MetronomeSDK::Models::PaymentGateConfigV2]
              #
              #   @param threshold_amount [Float] Specify the threshold amount for the contract. Each time the contract's usage hi

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSpendThresholdConfiguration#discount_configuration
              class DiscountConfiguration < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute cap
                #   Update the discount cap. Set to null to remove an existing cap.
                #
                #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSpendThresholdConfiguration::DiscountConfiguration::Cap, nil]
                optional :cap,
                         -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSpendThresholdConfiguration::DiscountConfiguration::Cap },
                         nil?: true

                # @!attribute payment_fraction
                #   The fraction of the original amount that the customer pays after applying the
                #   discount. Set to null to remove the discount fraction. For example, 0.85 means
                #   the customer pays 85% of the original amount (a 15% discount).
                #
                #   @return [Float, nil]
                optional :payment_fraction, Float, nil?: true

                # @!method initialize(cap: nil, payment_fraction: nil)
                #   Some parameter documentations has been truncated, see
                #   {MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSpendThresholdConfiguration::DiscountConfiguration}
                #   for more details.
                #
                #   @param cap [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSpendThresholdConfiguration::DiscountConfiguration::Cap, nil] Update the discount cap. Set to null to remove an existing cap.
                #
                #   @param payment_fraction [Float, nil] The fraction of the original amount that the customer pays after applying the di

                # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSpendThresholdConfiguration::DiscountConfiguration#cap
                class Cap < MetronomeSDK::Internal::Type::BaseModel
                  # @!attribute amount
                  #   Accumulated spend ceiling above which the discount stops applying.
                  #
                  #   @return [Float]
                  required :amount, Float

                  # @!attribute spend_tracker_alias
                  #   Alias of the spend tracker this cap is measured against.
                  #
                  #   @return [String]
                  required :spend_tracker_alias, String

                  # @!method initialize(amount:, spend_tracker_alias:)
                  #   Update the discount cap. Set to null to remove an existing cap.
                  #
                  #   @param amount [Float] Accumulated spend ceiling above which the discount stops applying.
                  #
                  #   @param spend_tracker_alias [String] Alias of the spend tracker this cap is measured against.
                end
              end
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
              #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::QuantityUpdate>, nil]
              optional :quantity_updates,
                       -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::QuantityUpdate] }

              # @!attribute seat_updates
              #   Manage subscription seats for subscriptions in SEAT_BASED mode.
              #
              #   @return [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::SeatUpdates, nil]
              optional :seat_updates,
                       -> { MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::SeatUpdates }

              # @!method initialize(id:, ending_before: nil, quantity_updates: nil, seat_updates: nil)
              #   @param id [String]
              #
              #   @param ending_before [Time]
              #
              #   @param quantity_updates [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::QuantityUpdate>]
              #
              #   @param seat_updates [MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::SeatUpdates] Manage subscription seats for subscriptions in SEAT_BASED mode.

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

              # @see MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription#seat_updates
              class SeatUpdates < MetronomeSDK::Internal::Type::BaseModel
                # @!attribute add_seat_ids
                #   Adds seat IDs to the subscription. If there are unassigned seats, the new seat
                #   IDs will fill these unassigned seats and not increase the total subscription
                #   quantity. Otherwise, if there are more new seat IDs than unassigned seats, the
                #   total subscription quantity will increase.
                #
                #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::SeatUpdates::AddSeatID>, nil]
                optional :add_seat_ids,
                         -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::SeatUpdates::AddSeatID] }

                # @!attribute add_unassigned_seats
                #   Adds unassigned seats to the subscription. This will increase the total
                #   subscription quantity.
                #
                #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::SeatUpdates::AddUnassignedSeat>, nil]
                optional :add_unassigned_seats,
                         -> do
                           MetronomeSDK::Internal::Type::ArrayOf[
                             MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::SeatUpdates::AddUnassignedSeat
                           ]
                         end

                # @!attribute remove_seat_ids
                #   Removes seat IDs from the subscription, if possible. If a seat ID is removed,
                #   the total subscription quantity will decrease. Otherwise, if the seat ID is not
                #   found on the subscription, this is a no-op.
                #
                #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::SeatUpdates::RemoveSeatID>, nil]
                optional :remove_seat_ids,
                         -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::SeatUpdates::RemoveSeatID] }

                # @!attribute remove_unassigned_seats
                #   Removes unassigned seats from the subscription. This will decrease the total
                #   subscription quantity if there are are unassigned seats.
                #
                #   @return [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::SeatUpdates::RemoveUnassignedSeat>, nil]
                optional :remove_unassigned_seats,
                         -> do
                           MetronomeSDK::Internal::Type::ArrayOf[
                             MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::SeatUpdates::RemoveUnassignedSeat
                           ]
                         end

                # @!method initialize(add_seat_ids: nil, add_unassigned_seats: nil, remove_seat_ids: nil, remove_unassigned_seats: nil)
                #   Some parameter documentations has been truncated, see
                #   {MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::SeatUpdates}
                #   for more details.
                #
                #   Manage subscription seats for subscriptions in SEAT_BASED mode.
                #
                #   @param add_seat_ids [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::SeatUpdates::AddSeatID>] Adds seat IDs to the subscription. If there are unassigned seats, the new seat
                #
                #   @param add_unassigned_seats [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::SeatUpdates::AddUnassignedSeat>] Adds unassigned seats to the subscription. This will increase the total subscrip
                #
                #   @param remove_seat_ids [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::SeatUpdates::RemoveSeatID>] Removes seat IDs from the subscription, if possible. If a seat ID is removed, t
                #
                #   @param remove_unassigned_seats [Array<MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::SeatUpdates::RemoveUnassignedSeat>] Removes unassigned seats from the subscription. This will decrease the total sub

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
                  #   {MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::SeatUpdates::AddUnassignedSeat}
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
                  #   {MetronomeSDK::Models::V2::ContractEditResponse::Data::Edit::UpdateSubscription::SeatUpdates::RemoveUnassignedSeat}
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
end
