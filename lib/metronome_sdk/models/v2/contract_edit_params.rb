# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V2
      # @see MetronomeSDK::Resources::V2::Contracts#edit
      class ContractEditParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute contract_id
        #   ID of the contract being edited
        #
        #   @return [String]
        required :contract_id, String

        # @!attribute customer_id
        #   ID of the customer whose contract is being edited
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute add_commits
        #
        #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddCommit>, nil]
        optional :add_commits,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::AddCommit] }

        # @!attribute add_credits
        #
        #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddCredit>, nil]
        optional :add_credits,
                 -> { MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::AddCredit] }

        # @!attribute add_discounts
        #
        #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddDiscount>, nil]
        optional :add_discounts,
                 -> {
                   MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::AddDiscount]
                 }

        # @!attribute add_overrides
        #
        #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddOverride>, nil]
        optional :add_overrides,
                 -> {
                   MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::AddOverride]
                 }

        # @!attribute add_prepaid_balance_threshold_configuration
        #
        #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration, nil]
        optional :add_prepaid_balance_threshold_configuration,
                 -> { MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration }

        # @!attribute add_professional_services
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddProfessionalService>, nil]
        optional :add_professional_services,
                 -> {
                   MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::AddProfessionalService]
                 }

        # @!attribute add_recurring_commits
        #
        #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit>, nil]
        optional :add_recurring_commits,
                 -> {
                   MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::AddRecurringCommit]
                 }

        # @!attribute add_recurring_credits
        #
        #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit>, nil]
        optional :add_recurring_credits,
                 -> {
                   MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::AddRecurringCredit]
                 }

        # @!attribute add_reseller_royalties
        #
        #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddResellerRoyalty>, nil]
        optional :add_reseller_royalties,
                 -> {
                   MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::AddResellerRoyalty]
                 }

        # @!attribute add_scheduled_charges
        #
        #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge>, nil]
        optional :add_scheduled_charges,
                 -> {
                   MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::AddScheduledCharge]
                 }

        # @!attribute add_spend_threshold_configuration
        #
        #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration, nil]
        optional :add_spend_threshold_configuration,
                 -> { MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration }

        # @!attribute add_subscriptions
        #   Optional list of
        #   [subscriptions](https://docs.metronome.com/manage-product-access/create-subscription/)
        #   to add to the contract.
        #
        #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddSubscription>, nil]
        optional :add_subscriptions,
                 -> {
                   MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::AddSubscription]
                 }

        # @!attribute allow_contract_ending_before_finalized_invoice
        #   If true, allows setting the contract end date earlier than the end_timestamp of
        #   existing finalized invoices. Finalized invoices will be unchanged; if you want
        #   to incorporate the new end date, you can void and regenerate finalized usage
        #   invoices. Defaults to true.
        #
        #   @return [Boolean, nil]
        optional :allow_contract_ending_before_finalized_invoice, MetronomeSDK::Internal::Type::Boolean

        # @!attribute archive_commits
        #   IDs of commits to archive
        #
        #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::ArchiveCommit>, nil]
        optional :archive_commits,
                 -> {
                   MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::ArchiveCommit]
                 }

        # @!attribute archive_credits
        #   IDs of credits to archive
        #
        #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::ArchiveCredit>, nil]
        optional :archive_credits,
                 -> {
                   MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::ArchiveCredit]
                 }

        # @!attribute archive_scheduled_charges
        #   IDs of scheduled charges to archive
        #
        #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::ArchiveScheduledCharge>, nil]
        optional :archive_scheduled_charges,
                 -> {
                   MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::ArchiveScheduledCharge]
                 }

        # @!attribute remove_overrides
        #   IDs of overrides to remove
        #
        #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::RemoveOverride>, nil]
        optional :remove_overrides,
                 -> {
                   MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::RemoveOverride]
                 }

        # @!attribute update_commits
        #
        #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit>, nil]
        optional :update_commits,
                 -> {
                   MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::UpdateCommit]
                 }

        # @!attribute update_contract_end_date
        #   RFC 3339 timestamp indicating when the contract will end (exclusive).
        #
        #   @return [Time, nil]
        optional :update_contract_end_date, Time, nil?: true

        # @!attribute update_contract_name
        #   Value to update the contract name to. If not provided, the contract name will
        #   remain unchanged.
        #
        #   @return [String, nil]
        optional :update_contract_name, String, nil?: true

        # @!attribute update_credits
        #
        #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit>, nil]
        optional :update_credits,
                 -> {
                   MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::UpdateCredit]
                 }

        # @!attribute update_prepaid_balance_threshold_configuration
        #
        #   @return [MetronomeSDK::Models::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration, nil]
        optional :update_prepaid_balance_threshold_configuration,
                 -> { MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration }

        # @!attribute update_recurring_commits
        #   Edits to these recurring commits will only affect commits whose access schedules
        #   has not started. Expired commits, and commits with an active access schedule
        #   will remain unchanged.
        #
        #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateRecurringCommit>, nil]
        optional :update_recurring_commits,
                 -> {
                   MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::UpdateRecurringCommit]
                 }

        # @!attribute update_recurring_credits
        #   Edits to these recurring credits will only affect credits whose access schedules
        #   has not started. Expired credits, and credits with an active access schedule
        #   will remain unchanged.
        #
        #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateRecurringCredit>, nil]
        optional :update_recurring_credits,
                 -> {
                   MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::UpdateRecurringCredit]
                 }

        # @!attribute update_scheduled_charges
        #
        #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge>, nil]
        optional :update_scheduled_charges,
                 -> {
                   MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::UpdateScheduledCharge]
                 }

        # @!attribute update_spend_threshold_configuration
        #
        #   @return [MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration, nil]
        optional :update_spend_threshold_configuration,
                 -> { MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration }

        # @!attribute update_subscriptions
        #   Optional list of subscriptions to update.
        #
        #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateSubscription>, nil]
        optional :update_subscriptions,
                 -> {
                   MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::UpdateSubscription]
                 }

        # @!method initialize(contract_id:, customer_id:, add_commits: nil, add_credits: nil, add_discounts: nil, add_overrides: nil, add_prepaid_balance_threshold_configuration: nil, add_professional_services: nil, add_recurring_commits: nil, add_recurring_credits: nil, add_reseller_royalties: nil, add_scheduled_charges: nil, add_spend_threshold_configuration: nil, add_subscriptions: nil, allow_contract_ending_before_finalized_invoice: nil, archive_commits: nil, archive_credits: nil, archive_scheduled_charges: nil, remove_overrides: nil, update_commits: nil, update_contract_end_date: nil, update_contract_name: nil, update_credits: nil, update_prepaid_balance_threshold_configuration: nil, update_recurring_commits: nil, update_recurring_credits: nil, update_scheduled_charges: nil, update_spend_threshold_configuration: nil, update_subscriptions: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V2::ContractEditParams} for more details.
        #
        #   @param contract_id [String] ID of the contract being edited
        #
        #   @param customer_id [String] ID of the customer whose contract is being edited
        #
        #   @param add_commits [Array<MetronomeSDK::Models::V2::ContractEditParams::AddCommit>]
        #
        #   @param add_credits [Array<MetronomeSDK::Models::V2::ContractEditParams::AddCredit>]
        #
        #   @param add_discounts [Array<MetronomeSDK::Models::V2::ContractEditParams::AddDiscount>]
        #
        #   @param add_overrides [Array<MetronomeSDK::Models::V2::ContractEditParams::AddOverride>]
        #
        #   @param add_prepaid_balance_threshold_configuration [MetronomeSDK::Models::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration]
        #
        #   @param add_professional_services [Array<MetronomeSDK::Models::V2::ContractEditParams::AddProfessionalService>] This field's availability is dependent on your client's configuration.
        #
        #   @param add_recurring_commits [Array<MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit>]
        #
        #   @param add_recurring_credits [Array<MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit>]
        #
        #   @param add_reseller_royalties [Array<MetronomeSDK::Models::V2::ContractEditParams::AddResellerRoyalty>]
        #
        #   @param add_scheduled_charges [Array<MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge>]
        #
        #   @param add_spend_threshold_configuration [MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration]
        #
        #   @param add_subscriptions [Array<MetronomeSDK::Models::V2::ContractEditParams::AddSubscription>] Optional list of [subscriptions](https://docs.metronome.com/manage-product-acces
        #
        #   @param allow_contract_ending_before_finalized_invoice [Boolean] If true, allows setting the contract end date earlier than the end_timestamp of
        #
        #   @param archive_commits [Array<MetronomeSDK::Models::V2::ContractEditParams::ArchiveCommit>] IDs of commits to archive
        #
        #   @param archive_credits [Array<MetronomeSDK::Models::V2::ContractEditParams::ArchiveCredit>] IDs of credits to archive
        #
        #   @param archive_scheduled_charges [Array<MetronomeSDK::Models::V2::ContractEditParams::ArchiveScheduledCharge>] IDs of scheduled charges to archive
        #
        #   @param remove_overrides [Array<MetronomeSDK::Models::V2::ContractEditParams::RemoveOverride>] IDs of overrides to remove
        #
        #   @param update_commits [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit>]
        #
        #   @param update_contract_end_date [Time, nil] RFC 3339 timestamp indicating when the contract will end (exclusive).
        #
        #   @param update_contract_name [String, nil] Value to update the contract name to. If not provided, the contract name will re
        #
        #   @param update_credits [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit>]
        #
        #   @param update_prepaid_balance_threshold_configuration [MetronomeSDK::Models::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration]
        #
        #   @param update_recurring_commits [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateRecurringCommit>] Edits to these recurring commits will only affect commits whose access schedules
        #
        #   @param update_recurring_credits [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateRecurringCredit>] Edits to these recurring credits will only affect credits whose access schedules
        #
        #   @param update_scheduled_charges [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge>]
        #
        #   @param update_spend_threshold_configuration [MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration]
        #
        #   @param update_subscriptions [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateSubscription>] Optional list of subscriptions to update.
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

        class AddCommit < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute product_id
          #
          #   @return [String]
          required :product_id, String

          # @!attribute type
          #
          #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddCommit::Type]
          required :type, enum: -> { MetronomeSDK::V2::ContractEditParams::AddCommit::Type }

          # @!attribute access_schedule
          #   Required: Schedule for distributing the commit to the customer. For "POSTPAID"
          #   commits only one schedule item is allowed and amount must match invoice_schedule
          #   total.
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddCommit::AccessSchedule, nil]
          optional :access_schedule, -> { MetronomeSDK::V2::ContractEditParams::AddCommit::AccessSchedule }

          # @!attribute amount
          #   (DEPRECATED) Use access_schedule and invoice_schedule instead.
          #
          #   @return [Float, nil]
          optional :amount, Float

          # @!attribute applicable_product_ids
          #   Which products the commit applies to. If applicable_product_ids,
          #   applicable_product_tags or specifiers are not provided, the commit applies to
          #   all products.
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!attribute applicable_product_tags
          #   Which tags the commit applies to. If applicable_product_ids,
          #   applicable_product_tags or specifiers are not provided, the commit applies to
          #   all products.
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!attribute custom_fields
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

          # @!attribute description
          #   Used only in UI/API. It is not exposed to end customers.
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute invoice_schedule
          #   Required for "POSTPAID" commits: the true up invoice will be generated at this
          #   time and only one schedule item is allowed; the total must match access_schedule
          #   amount. Optional for "PREPAID" commits: if not provided, this will be a
          #   "complimentary" commit with no invoice.
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule, nil]
          optional :invoice_schedule, -> { MetronomeSDK::V2::ContractEditParams::AddCommit::InvoiceSchedule }

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

          # @!attribute payment_gate_config
          #   optionally payment gate this commit
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddCommit::PaymentGateConfig, nil]
          optional :payment_gate_config,
                   -> {
                     MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig
                   }

          # @!attribute priority
          #   If multiple commits are applicable, the one with the lower priority will apply
          #   first.
          #
          #   @return [Float, nil]
          optional :priority, Float

          # @!attribute rate_type
          #
          #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddCommit::RateType, nil]
          optional :rate_type, enum: -> { MetronomeSDK::V2::ContractEditParams::AddCommit::RateType }

          # @!attribute rollover_fraction
          #   Fraction of unused segments that will be rolled over. Must be between 0 and 1.
          #
          #   @return [Float, nil]
          optional :rollover_fraction, Float

          # @!attribute specifiers
          #   List of filters that determine what kind of customer usage draws down a commit
          #   or credit. A customer's usage needs to meet the condition of at least one of the
          #   specifiers to contribute to a commit's or credit's drawdown. This field cannot
          #   be used together with `applicable_product_ids` or `applicable_product_tags`.
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddCommit::Specifier>, nil]
          optional :specifiers,
                   -> {
                     MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::AddCommit::Specifier]
                   }

          # @!attribute temporary_id
          #   A temporary ID for the commit that can be used to reference the commit for
          #   commit specific overrides.
          #
          #   @return [String, nil]
          optional :temporary_id, String

          # @!method initialize(product_id:, type:, access_schedule: nil, amount: nil, applicable_product_ids: nil, applicable_product_tags: nil, custom_fields: nil, description: nil, invoice_schedule: nil, name: nil, netsuite_sales_order_id: nil, payment_gate_config: nil, priority: nil, rate_type: nil, rollover_fraction: nil, specifiers: nil, temporary_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V2::ContractEditParams::AddCommit} for more details.
          #
          #   @param product_id [String]
          #
          #   @param type [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddCommit::Type]
          #
          #   @param access_schedule [MetronomeSDK::Models::V2::ContractEditParams::AddCommit::AccessSchedule] Required: Schedule for distributing the commit to the customer. For "POSTPAID" c
          #
          #   @param amount [Float] (DEPRECATED) Use access_schedule and invoice_schedule instead.
          #
          #   @param applicable_product_ids [Array<String>] Which products the commit applies to. If applicable_product_ids, applicable_prod
          #
          #   @param applicable_product_tags [Array<String>] Which tags the commit applies to. If applicable*product_ids, applicable_product*
          #
          #   @param custom_fields [Hash{Symbol=>String}]
          #
          #   @param description [String] Used only in UI/API. It is not exposed to end customers.
          #
          #   @param invoice_schedule [MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule] Required for "POSTPAID" commits: the true up invoice will be generated at this t
          #
          #   @param name [String] displayed on invoices
          #
          #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
          #
          #   @param payment_gate_config [MetronomeSDK::Models::V2::ContractEditParams::AddCommit::PaymentGateConfig] optionally payment gate this commit
          #
          #   @param priority [Float] If multiple commits are applicable, the one with the lower priority will apply f
          #
          #   @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddCommit::RateType]
          #
          #   @param rollover_fraction [Float] Fraction of unused segments that will be rolled over. Must be between 0 and 1.
          #
          #   @param specifiers [Array<MetronomeSDK::Models::V2::ContractEditParams::AddCommit::Specifier>] List of filters that determine what kind of customer usage draws down a commit o
          #
          #   @param temporary_id [String] A temporary ID for the commit that can be used to reference the commit for commi

          # @see MetronomeSDK::Models::V2::ContractEditParams::AddCommit#type
          module Type
            extend MetronomeSDK::Internal::Type::Enum

            PREPAID = :PREPAID
            POSTPAID = :POSTPAID

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see MetronomeSDK::Models::V2::ContractEditParams::AddCommit#access_schedule
          class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute schedule_items
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddCommit::AccessSchedule::ScheduleItem>]
            required :schedule_items,
                     -> {
                       MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::AddCommit::AccessSchedule::ScheduleItem]
                     }

            # @!attribute credit_type_id
            #
            #   @return [String, nil]
            optional :credit_type_id, String

            # @!method initialize(schedule_items:, credit_type_id: nil)
            #   Required: Schedule for distributing the commit to the customer. For "POSTPAID"
            #   commits only one schedule item is allowed and amount must match invoice_schedule
            #   total.
            #
            #   @param schedule_items [Array<MetronomeSDK::Models::V2::ContractEditParams::AddCommit::AccessSchedule::ScheduleItem>]
            #   @param credit_type_id [String]

            class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
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
          end

          # @see MetronomeSDK::Models::V2::ContractEditParams::AddCommit#invoice_schedule
          class InvoiceSchedule < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute credit_type_id
            #   Defaults to USD if not passed. Only USD is supported at this time.
            #
            #   @return [String, nil]
            optional :credit_type_id, String

            # @!attribute recurring_schedule
            #   Enter the unit price and quantity for the charge or instead only send the
            #   amount. If amount is sent, the unit price is assumed to be the amount and
            #   quantity is inferred to be 1.
            #
            #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule, nil]
            optional :recurring_schedule,
                     -> {
                       MetronomeSDK::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule
                     }

            # @!attribute schedule_items
            #   Either provide amount or provide both unit_price and quantity.
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule::ScheduleItem>, nil]
            optional :schedule_items,
                     -> {
                       MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::AddCommit::InvoiceSchedule::ScheduleItem]
                     }

            # @!method initialize(credit_type_id: nil, recurring_schedule: nil, schedule_items: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule} for
            #   more details.
            #
            #   Required for "POSTPAID" commits: the true up invoice will be generated at this
            #   time and only one schedule item is allowed; the total must match access_schedule
            #   amount. Optional for "PREPAID" commits: if not provided, this will be a
            #   "complimentary" commit with no invoice.
            #
            #   @param credit_type_id [String] Defaults to USD if not passed. Only USD is supported at this time.
            #
            #   @param recurring_schedule [MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule] Enter the unit price and quantity for the charge or instead only send the amount
            #
            #   @param schedule_items [Array<MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule::ScheduleItem>] Either provide amount or provide both unit_price and quantity.

            # @see MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule#recurring_schedule
            class RecurringSchedule < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute amount_distribution
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule::AmountDistribution]
              required :amount_distribution,
                       enum: -> {
                         MetronomeSDK::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule::AmountDistribution
                       }

              # @!attribute ending_before
              #   RFC 3339 timestamp (exclusive).
              #
              #   @return [Time]
              required :ending_before, Time

              # @!attribute frequency
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule::Frequency]
              required :frequency,
                       enum: -> {
                         MetronomeSDK::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule::Frequency
                       }

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
              #   {MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule}
              #   for more details.
              #
              #   Enter the unit price and quantity for the charge or instead only send the
              #   amount. If amount is sent, the unit price is assumed to be the amount and
              #   quantity is inferred to be 1.
              #
              #   @param amount_distribution [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule::AmountDistribution]
              #
              #   @param ending_before [Time] RFC 3339 timestamp (exclusive).
              #
              #   @param frequency [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule::Frequency]
              #
              #   @param starting_at [Time] RFC 3339 timestamp (inclusive).
              #
              #   @param amount [Float] Amount for the charge. Can be provided instead of unit_price and quantity. If am
              #
              #   @param quantity [Float] Quantity for the charge. Will be multiplied by unit_price to determine the amoun
              #
              #   @param unit_price [Float] Unit price for the charge. Will be multiplied by quantity to determine the amoun

              # @see MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule#amount_distribution
              module AmountDistribution
                extend MetronomeSDK::Internal::Type::Enum

                DIVIDED = :DIVIDED
                DIVIDED_ROUNDED = :DIVIDED_ROUNDED
                EACH = :EACH

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule#frequency
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
              #   {MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule::ScheduleItem}
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

          # @see MetronomeSDK::Models::V2::ContractEditParams::AddCommit#payment_gate_config
          class PaymentGateConfig < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute payment_gate_type
            #   Gate access to the commit balance based on successful collection of payment.
            #   Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
            #   facilitate payment using your own payment integration. Select NONE if you do not
            #   wish to payment gate the commit balance.
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddCommit::PaymentGateConfig::PaymentGateType]
            required :payment_gate_type,
                     enum: -> {
                       MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig::PaymentGateType
                     }

            # @!attribute stripe_config
            #   Only applicable if using Stripe as your payment gateway through Metronome.
            #
            #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddCommit::PaymentGateConfig::StripeConfig, nil]
            optional :stripe_config,
                     -> { MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig::StripeConfig }

            # @!attribute tax_type
            #   Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
            #   not wish Metronome to calculate tax on your behalf. Leaving this field blank
            #   will default to NONE.
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddCommit::PaymentGateConfig::TaxType, nil]
            optional :tax_type,
                     enum: -> { MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig::TaxType }

            # @!method initialize(payment_gate_type:, stripe_config: nil, tax_type: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V2::ContractEditParams::AddCommit::PaymentGateConfig} for
            #   more details.
            #
            #   optionally payment gate this commit
            #
            #   @param payment_gate_type [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddCommit::PaymentGateConfig::PaymentGateType] Gate access to the commit balance based on successful collection of payment. Sel
            #
            #   @param stripe_config [MetronomeSDK::Models::V2::ContractEditParams::AddCommit::PaymentGateConfig::StripeConfig] Only applicable if using Stripe as your payment gateway through Metronome.
            #
            #   @param tax_type [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddCommit::PaymentGateConfig::TaxType] Stripe tax is only supported for Stripe payment gateway. Select NONE if you do n

            # Gate access to the commit balance based on successful collection of payment.
            # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
            # facilitate payment using your own payment integration. Select NONE if you do not
            # wish to payment gate the commit balance.
            #
            # @see MetronomeSDK::Models::V2::ContractEditParams::AddCommit::PaymentGateConfig#payment_gate_type
            module PaymentGateType
              extend MetronomeSDK::Internal::Type::Enum

              NONE = :NONE
              STRIPE = :STRIPE
              EXTERNAL = :EXTERNAL

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see MetronomeSDK::Models::V2::ContractEditParams::AddCommit::PaymentGateConfig#stripe_config
            class StripeConfig < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute payment_type
              #   If left blank, will default to INVOICE
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddCommit::PaymentGateConfig::StripeConfig::PaymentType]
              required :payment_type,
                       enum: -> {
                         MetronomeSDK::V2::ContractEditParams::AddCommit::PaymentGateConfig::StripeConfig::PaymentType
                       }

              # @!method initialize(payment_type:)
              #   Only applicable if using Stripe as your payment gateway through Metronome.
              #
              #   @param payment_type [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddCommit::PaymentGateConfig::StripeConfig::PaymentType] If left blank, will default to INVOICE

              # If left blank, will default to INVOICE
              #
              # @see MetronomeSDK::Models::V2::ContractEditParams::AddCommit::PaymentGateConfig::StripeConfig#payment_type
              module PaymentType
                extend MetronomeSDK::Internal::Type::Enum

                INVOICE = :INVOICE
                PAYMENT_INTENT = :PAYMENT_INTENT

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
            # not wish Metronome to calculate tax on your behalf. Leaving this field blank
            # will default to NONE.
            #
            # @see MetronomeSDK::Models::V2::ContractEditParams::AddCommit::PaymentGateConfig#tax_type
            module TaxType
              extend MetronomeSDK::Internal::Type::Enum

              NONE = :NONE
              STRIPE = :STRIPE

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see MetronomeSDK::Models::V2::ContractEditParams::AddCommit#rate_type
          module RateType
            extend MetronomeSDK::Internal::Type::Enum

            COMMIT_RATE = :COMMIT_RATE
            LIST_RATE = :LIST_RATE

            # @!method self.values
            #   @return [Array<Symbol>]
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
            #   {MetronomeSDK::Models::V2::ContractEditParams::AddCommit::Specifier} for more
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

        class AddCredit < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute access_schedule
          #   Schedule for distributing the credit to the customer.
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddCredit::AccessSchedule]
          required :access_schedule, -> { MetronomeSDK::V2::ContractEditParams::AddCredit::AccessSchedule }

          # @!attribute product_id
          #
          #   @return [String]
          required :product_id, String

          # @!attribute applicable_product_ids
          #   Which products the credit applies to. If both applicable_product_ids and
          #   applicable_product_tags are not provided, the credit applies to all products.
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!attribute applicable_product_tags
          #   Which tags the credit applies to. If both applicable_product_ids and
          #   applicable_product_tags are not provided, the credit applies to all products.
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!attribute custom_fields
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

          # @!attribute description
          #   Used only in UI/API. It is not exposed to end customers.
          #
          #   @return [String, nil]
          optional :description, String

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

          # @!attribute priority
          #   If multiple credits are applicable, the one with the lower priority will apply
          #   first.
          #
          #   @return [Float, nil]
          optional :priority, Float

          # @!attribute rate_type
          #
          #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddCredit::RateType, nil]
          optional :rate_type, enum: -> { MetronomeSDK::V2::ContractEditParams::AddCredit::RateType }

          # @!attribute specifiers
          #   List of filters that determine what kind of customer usage draws down a commit
          #   or credit. A customer's usage needs to meet the condition of at least one of the
          #   specifiers to contribute to a commit's or credit's drawdown. This field cannot
          #   be used together with `applicable_product_ids` or `applicable_product_tags`.
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddCredit::Specifier>, nil]
          optional :specifiers,
                   -> {
                     MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::AddCredit::Specifier]
                   }

          # @!method initialize(access_schedule:, product_id:, applicable_product_ids: nil, applicable_product_tags: nil, custom_fields: nil, description: nil, name: nil, netsuite_sales_order_id: nil, priority: nil, rate_type: nil, specifiers: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V2::ContractEditParams::AddCredit} for more details.
          #
          #   @param access_schedule [MetronomeSDK::Models::V2::ContractEditParams::AddCredit::AccessSchedule] Schedule for distributing the credit to the customer.
          #
          #   @param product_id [String]
          #
          #   @param applicable_product_ids [Array<String>] Which products the credit applies to. If both applicable_product_ids and applica
          #
          #   @param applicable_product_tags [Array<String>] Which tags the credit applies to. If both applicable*product_ids and applicable*
          #
          #   @param custom_fields [Hash{Symbol=>String}]
          #
          #   @param description [String] Used only in UI/API. It is not exposed to end customers.
          #
          #   @param name [String] displayed on invoices
          #
          #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
          #
          #   @param priority [Float] If multiple credits are applicable, the one with the lower priority will apply f
          #
          #   @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddCredit::RateType]
          #
          #   @param specifiers [Array<MetronomeSDK::Models::V2::ContractEditParams::AddCredit::Specifier>] List of filters that determine what kind of customer usage draws down a commit o

          # @see MetronomeSDK::Models::V2::ContractEditParams::AddCredit#access_schedule
          class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute schedule_items
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddCredit::AccessSchedule::ScheduleItem>]
            required :schedule_items,
                     -> {
                       MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::AddCredit::AccessSchedule::ScheduleItem]
                     }

            # @!attribute credit_type_id
            #
            #   @return [String, nil]
            optional :credit_type_id, String

            # @!method initialize(schedule_items:, credit_type_id: nil)
            #   Schedule for distributing the credit to the customer.
            #
            #   @param schedule_items [Array<MetronomeSDK::Models::V2::ContractEditParams::AddCredit::AccessSchedule::ScheduleItem>]
            #   @param credit_type_id [String]

            class ScheduleItem < MetronomeSDK::Internal::Type::BaseModel
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
          end

          # @see MetronomeSDK::Models::V2::ContractEditParams::AddCredit#rate_type
          module RateType
            extend MetronomeSDK::Internal::Type::Enum

            COMMIT_RATE = :COMMIT_RATE
            LIST_RATE = :LIST_RATE

            # @!method self.values
            #   @return [Array<Symbol>]
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
            #   {MetronomeSDK::Models::V2::ContractEditParams::AddCredit::Specifier} for more
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

        class AddDiscount < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute product_id
          #
          #   @return [String]
          required :product_id, String

          # @!attribute schedule
          #   Must provide either schedule_items or recurring_schedule.
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule]
          required :schedule, -> { MetronomeSDK::V2::ContractEditParams::AddDiscount::Schedule }

          # @!attribute custom_fields
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

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

          # @!method initialize(product_id:, schedule:, custom_fields: nil, name: nil, netsuite_sales_order_id: nil)
          #   @param product_id [String]
          #
          #   @param schedule [MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule] Must provide either schedule_items or recurring_schedule.
          #
          #   @param custom_fields [Hash{Symbol=>String}]
          #
          #   @param name [String] displayed on invoices
          #
          #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.

          # @see MetronomeSDK::Models::V2::ContractEditParams::AddDiscount#schedule
          class Schedule < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute credit_type_id
            #   Defaults to USD if not passed. Only USD is supported at this time.
            #
            #   @return [String, nil]
            optional :credit_type_id, String

            # @!attribute recurring_schedule
            #   Enter the unit price and quantity for the charge or instead only send the
            #   amount. If amount is sent, the unit price is assumed to be the amount and
            #   quantity is inferred to be 1.
            #
            #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule, nil]
            optional :recurring_schedule,
                     -> { MetronomeSDK::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule }

            # @!attribute schedule_items
            #   Either provide amount or provide both unit_price and quantity.
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule::ScheduleItem>, nil]
            optional :schedule_items,
                     -> {
                       MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::AddDiscount::Schedule::ScheduleItem]
                     }

            # @!method initialize(credit_type_id: nil, recurring_schedule: nil, schedule_items: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule} for more
            #   details.
            #
            #   Must provide either schedule_items or recurring_schedule.
            #
            #   @param credit_type_id [String] Defaults to USD if not passed. Only USD is supported at this time.
            #
            #   @param recurring_schedule [MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule] Enter the unit price and quantity for the charge or instead only send the amount
            #
            #   @param schedule_items [Array<MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule::ScheduleItem>] Either provide amount or provide both unit_price and quantity.

            # @see MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule#recurring_schedule
            class RecurringSchedule < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute amount_distribution
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule::AmountDistribution]
              required :amount_distribution,
                       enum: -> {
                         MetronomeSDK::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule::AmountDistribution
                       }

              # @!attribute ending_before
              #   RFC 3339 timestamp (exclusive).
              #
              #   @return [Time]
              required :ending_before, Time

              # @!attribute frequency
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule::Frequency]
              required :frequency,
                       enum: -> {
                         MetronomeSDK::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule::Frequency
                       }

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
              #   {MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule}
              #   for more details.
              #
              #   Enter the unit price and quantity for the charge or instead only send the
              #   amount. If amount is sent, the unit price is assumed to be the amount and
              #   quantity is inferred to be 1.
              #
              #   @param amount_distribution [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule::AmountDistribution]
              #
              #   @param ending_before [Time] RFC 3339 timestamp (exclusive).
              #
              #   @param frequency [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule::Frequency]
              #
              #   @param starting_at [Time] RFC 3339 timestamp (inclusive).
              #
              #   @param amount [Float] Amount for the charge. Can be provided instead of unit_price and quantity. If am
              #
              #   @param quantity [Float] Quantity for the charge. Will be multiplied by unit_price to determine the amoun
              #
              #   @param unit_price [Float] Unit price for the charge. Will be multiplied by quantity to determine the amoun

              # @see MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule#amount_distribution
              module AmountDistribution
                extend MetronomeSDK::Internal::Type::Enum

                DIVIDED = :DIVIDED
                DIVIDED_ROUNDED = :DIVIDED_ROUNDED
                EACH = :EACH

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule#frequency
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
              #   {MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule::ScheduleItem}
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

        class AddOverride < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute starting_at
          #   RFC 3339 timestamp indicating when the override will start applying (inclusive)
          #
          #   @return [Time]
          required :starting_at, Time

          # @!attribute applicable_product_tags
          #   tags identifying products whose rates are being overridden
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!attribute ending_before
          #   RFC 3339 timestamp indicating when the override will stop applying (exclusive)
          #
          #   @return [Time, nil]
          optional :ending_before, Time

          # @!attribute entitled
          #
          #   @return [Boolean, nil]
          optional :entitled, MetronomeSDK::Internal::Type::Boolean

          # @!attribute is_commit_specific
          #   Indicates whether the override should only apply to commits. Defaults to
          #   `false`. If `true`, you can specify relevant commits in `override_specifiers` by
          #   passing `commit_ids`.
          #
          #   @return [Boolean, nil]
          optional :is_commit_specific, MetronomeSDK::Internal::Type::Boolean

          # @!attribute multiplier
          #   Required for MULTIPLIER type. Must be >=0.
          #
          #   @return [Float, nil]
          optional :multiplier, Float

          # @!attribute override_specifiers
          #   Cannot be used in conjunction with product_id or applicable_product_tags. If
          #   provided, the override will apply to all products with the specified specifiers.
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddOverride::OverrideSpecifier>, nil]
          optional :override_specifiers,
                   -> {
                     MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::AddOverride::OverrideSpecifier]
                   }

          # @!attribute overwrite_rate
          #   Required for OVERWRITE type.
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddOverride::OverwriteRate, nil]
          optional :overwrite_rate, -> { MetronomeSDK::V2::ContractEditParams::AddOverride::OverwriteRate }

          # @!attribute priority
          #   Required for EXPLICIT multiplier prioritization scheme and all TIERED overrides.
          #   Under EXPLICIT prioritization, overwrites are prioritized first, and then tiered
          #   and multiplier overrides are prioritized by their priority value (lowest first).
          #   Must be > 0.
          #
          #   @return [Float, nil]
          optional :priority, Float

          # @!attribute product_id
          #   ID of the product whose rate is being overridden
          #
          #   @return [String, nil]
          optional :product_id, String

          # @!attribute target
          #   Indicates whether the override applies to commit rates or list rates. Can only
          #   be used for overrides that have `is_commit_specific` set to `true`. Defaults to
          #   `"LIST_RATE"`.
          #
          #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddOverride::Target, nil]
          optional :target, enum: -> { MetronomeSDK::V2::ContractEditParams::AddOverride::Target }

          # @!attribute tiers
          #   Required for TIERED type. Must have at least one tier.
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddOverride::Tier>, nil]
          optional :tiers,
                   -> {
                     MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::AddOverride::Tier]
                   }

          # @!attribute type
          #   Overwrites are prioritized over multipliers and tiered overrides.
          #
          #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddOverride::Type, nil]
          optional :type, enum: -> { MetronomeSDK::V2::ContractEditParams::AddOverride::Type }

          # @!method initialize(starting_at:, applicable_product_tags: nil, ending_before: nil, entitled: nil, is_commit_specific: nil, multiplier: nil, override_specifiers: nil, overwrite_rate: nil, priority: nil, product_id: nil, target: nil, tiers: nil, type: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V2::ContractEditParams::AddOverride} for more details.
          #
          #   @param starting_at [Time] RFC 3339 timestamp indicating when the override will start applying (inclusive)
          #
          #   @param applicable_product_tags [Array<String>] tags identifying products whose rates are being overridden
          #
          #   @param ending_before [Time] RFC 3339 timestamp indicating when the override will stop applying (exclusive)
          #
          #   @param entitled [Boolean]
          #
          #   @param is_commit_specific [Boolean] Indicates whether the override should only apply to commits. Defaults to `false`
          #
          #   @param multiplier [Float] Required for MULTIPLIER type. Must be >=0.
          #
          #   @param override_specifiers [Array<MetronomeSDK::Models::V2::ContractEditParams::AddOverride::OverrideSpecifier>] Cannot be used in conjunction with product_id or applicable_product_tags. If pro
          #
          #   @param overwrite_rate [MetronomeSDK::Models::V2::ContractEditParams::AddOverride::OverwriteRate] Required for OVERWRITE type.
          #
          #   @param priority [Float] Required for EXPLICIT multiplier prioritization scheme and all TIERED overrides.
          #
          #   @param product_id [String] ID of the product whose rate is being overridden
          #
          #   @param target [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddOverride::Target] Indicates whether the override applies to commit rates or list rates. Can only b
          #
          #   @param tiers [Array<MetronomeSDK::Models::V2::ContractEditParams::AddOverride::Tier>] Required for TIERED type. Must have at least one tier.
          #
          #   @param type [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddOverride::Type] Overwrites are prioritized over multipliers and tiered overrides.

          class OverrideSpecifier < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute billing_frequency
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddOverride::OverrideSpecifier::BillingFrequency, nil]
            optional :billing_frequency,
                     enum: -> {
                       MetronomeSDK::V2::ContractEditParams::AddOverride::OverrideSpecifier::BillingFrequency
                     }

            # @!attribute commit_ids
            #   If provided, the override will only apply to the specified commits. Can only be
            #   used for commit specific overrides. If not provided, the override will apply to
            #   all commits.
            #
            #   @return [Array<String>, nil]
            optional :commit_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!attribute presentation_group_values
            #   A map of group names to values. The override will only apply to line items with
            #   the specified presentation group values. Can only be used for multiplier
            #   overrides.
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :presentation_group_values, MetronomeSDK::Internal::Type::HashOf[String]

            # @!attribute pricing_group_values
            #   A map of pricing group names to values. The override will only apply to products
            #   with the specified pricing group values.
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :pricing_group_values, MetronomeSDK::Internal::Type::HashOf[String]

            # @!attribute product_id
            #   If provided, the override will only apply to the product with the specified ID.
            #
            #   @return [String, nil]
            optional :product_id, String

            # @!attribute product_tags
            #   If provided, the override will only apply to products with all the specified
            #   tags.
            #
            #   @return [Array<String>, nil]
            optional :product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!attribute recurring_commit_ids
            #   Can only be used for commit specific overrides. Must be used in conjunction with
            #   one of product_id, product_tags, pricing_group_values, or
            #   presentation_group_values. If provided, the override will only apply to commits
            #   created by the specified recurring commit ids.
            #
            #   @return [Array<String>, nil]
            optional :recurring_commit_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!attribute recurring_credit_ids
            #   Can only be used for commit specific overrides. Must be used in conjunction with
            #   one of product_id, product_tags, pricing_group_values, or
            #   presentation_group_values. If provided, the override will only apply to commits
            #   created by the specified recurring credit ids.
            #
            #   @return [Array<String>, nil]
            optional :recurring_credit_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!method initialize(billing_frequency: nil, commit_ids: nil, presentation_group_values: nil, pricing_group_values: nil, product_id: nil, product_tags: nil, recurring_commit_ids: nil, recurring_credit_ids: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V2::ContractEditParams::AddOverride::OverrideSpecifier}
            #   for more details.
            #
            #   @param billing_frequency [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddOverride::OverrideSpecifier::BillingFrequency]
            #
            #   @param commit_ids [Array<String>] If provided, the override will only apply to the specified commits. Can only be
            #
            #   @param presentation_group_values [Hash{Symbol=>String}] A map of group names to values. The override will only apply to line items with
            #
            #   @param pricing_group_values [Hash{Symbol=>String}] A map of pricing group names to values. The override will only apply to products
            #
            #   @param product_id [String] If provided, the override will only apply to the product with the specified ID.
            #
            #   @param product_tags [Array<String>] If provided, the override will only apply to products with all the specified tag
            #
            #   @param recurring_commit_ids [Array<String>] Can only be used for commit specific overrides. Must be used in conjunction with
            #
            #   @param recurring_credit_ids [Array<String>] Can only be used for commit specific overrides. Must be used in conjunction with

            # @see MetronomeSDK::Models::V2::ContractEditParams::AddOverride::OverrideSpecifier#billing_frequency
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

          # @see MetronomeSDK::Models::V2::ContractEditParams::AddOverride#overwrite_rate
          class OverwriteRate < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute rate_type
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddOverride::OverwriteRate::RateType]
            required :rate_type,
                     enum: -> { MetronomeSDK::V2::ContractEditParams::AddOverride::OverwriteRate::RateType }

            # @!attribute credit_type_id
            #
            #   @return [String, nil]
            optional :credit_type_id, String

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

            # @!method initialize(rate_type:, credit_type_id: nil, custom_rate: nil, is_prorated: nil, price: nil, quantity: nil, tiers: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V2::ContractEditParams::AddOverride::OverwriteRate} for
            #   more details.
            #
            #   Required for OVERWRITE type.
            #
            #   @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddOverride::OverwriteRate::RateType]
            #
            #   @param credit_type_id [String]
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

            # @see MetronomeSDK::Models::V2::ContractEditParams::AddOverride::OverwriteRate#rate_type
            module RateType
              extend MetronomeSDK::Internal::Type::Enum

              FLAT = :FLAT
              PERCENTAGE = :PERCENTAGE
              SUBSCRIPTION = :SUBSCRIPTION
              TIERED = :TIERED
              CUSTOM = :CUSTOM

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # Indicates whether the override applies to commit rates or list rates. Can only
          # be used for overrides that have `is_commit_specific` set to `true`. Defaults to
          # `"LIST_RATE"`.
          #
          # @see MetronomeSDK::Models::V2::ContractEditParams::AddOverride#target
          module Target
            extend MetronomeSDK::Internal::Type::Enum

            COMMIT_RATE = :COMMIT_RATE
            LIST_RATE = :LIST_RATE

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          class Tier < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute multiplier
            #
            #   @return [Float]
            required :multiplier, Float

            # @!attribute size
            #
            #   @return [Float, nil]
            optional :size, Float

            # @!method initialize(multiplier:, size: nil)
            #   @param multiplier [Float]
            #   @param size [Float]
          end

          # Overwrites are prioritized over multipliers and tiered overrides.
          #
          # @see MetronomeSDK::Models::V2::ContractEditParams::AddOverride#type
          module Type
            extend MetronomeSDK::Internal::Type::Enum

            OVERWRITE = :OVERWRITE
            MULTIPLIER = :MULTIPLIER
            TIERED = :TIERED

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class AddPrepaidBalanceThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute commit
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::Commit]
          required :commit,
                   -> {
                     MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::Commit
                   }

          # @!attribute is_enabled
          #   When set to false, the contract will not be evaluated against the
          #   threshold_amount. Toggling to true will result an immediate evaluation,
          #   regardless of prior state.
          #
          #   @return [Boolean]
          required :is_enabled, MetronomeSDK::Internal::Type::Boolean

          # @!attribute payment_gate_config
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig]
          required :payment_gate_config,
                   -> {
                     MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig
                   }

          # @!attribute recharge_to_amount
          #   Specify the amount the balance should be recharged to.
          #
          #   @return [Float]
          required :recharge_to_amount, Float

          # @!attribute threshold_amount
          #   Specify the threshold amount for the contract. Each time the contract's balance
          #   lowers to this amount, a threshold charge will be initiated.
          #
          #   @return [Float]
          required :threshold_amount, Float

          # @!method initialize(commit:, is_enabled:, payment_gate_config:, recharge_to_amount:, threshold_amount:)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration}
          #   for more details.
          #
          #   @param commit [MetronomeSDK::Models::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::Commit]
          #
          #   @param is_enabled [Boolean] When set to false, the contract will not be evaluated against the threshold_amou
          #
          #   @param payment_gate_config [MetronomeSDK::Models::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig]
          #
          #   @param recharge_to_amount [Float] Specify the amount the balance should be recharged to.
          #
          #   @param threshold_amount [Float] Specify the threshold amount for the contract. Each time the contract's balance

          # @see MetronomeSDK::Models::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration#commit
          class Commit < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute product_id
            #   The commit product that will be used to generate the line item for commit
            #   payment.
            #
            #   @return [String]
            required :product_id, String

            # @!attribute applicable_product_ids
            #   Which products the threshold commit applies to. If applicable_product_ids,
            #   applicable_product_tags or specifiers are not provided, the commit applies to
            #   all products.
            #
            #   @return [Array<String>, nil]
            optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!attribute applicable_product_tags
            #   Which tags the threshold commit applies to. If applicable_product_ids,
            #   applicable_product_tags or specifiers are not provided, the commit applies to
            #   all products.
            #
            #   @return [Array<String>, nil]
            optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!attribute description
            #
            #   @return [String, nil]
            optional :description, String

            # @!attribute name
            #   Specify the name of the line item for the threshold charge. If left blank, it
            #   will default to the commit product name.
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute specifiers
            #   List of filters that determine what kind of customer usage draws down a commit
            #   or credit. A customer's usage needs to meet the condition of at least one of the
            #   specifiers to contribute to a commit's or credit's drawdown. This field cannot
            #   be used together with `applicable_product_ids` or `applicable_product_tags`.
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::Commit::Specifier>, nil]
            optional :specifiers,
                     -> {
                       MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::Commit::Specifier]
                     }

            # @!method initialize(product_id:, applicable_product_ids: nil, applicable_product_tags: nil, description: nil, name: nil, specifiers: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::Commit}
            #   for more details.
            #
            #   @param product_id [String] The commit product that will be used to generate the line item for commit paymen
            #
            #   @param applicable_product_ids [Array<String>] Which products the threshold commit applies to. If applicable_product_ids, appli
            #
            #   @param applicable_product_tags [Array<String>] Which tags the threshold commit applies to. If applicable_product_ids, applicabl
            #
            #   @param description [String]
            #
            #   @param name [String] Specify the name of the line item for the threshold charge. If left blank, it wi
            #
            #   @param specifiers [Array<MetronomeSDK::Models::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::Commit::Specifier>] List of filters that determine what kind of customer usage draws down a commit o

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
              #   {MetronomeSDK::Models::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::Commit::Specifier}
              #   for more details.
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

          # @see MetronomeSDK::Models::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration#payment_gate_config
          class PaymentGateConfig < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute payment_gate_type
            #   Gate access to the commit balance based on successful collection of payment.
            #   Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
            #   facilitate payment using your own payment integration. Select NONE if you do not
            #   wish to payment gate the commit balance.
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType]
            required :payment_gate_type,
                     enum: -> {
                       MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType
                     }

            # @!attribute stripe_config
            #   Only applicable if using Stripe as your payment gateway through Metronome.
            #
            #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig, nil]
            optional :stripe_config,
                     -> {
                       MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig
                     }

            # @!attribute tax_type
            #   Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
            #   not wish Metronome to calculate tax on your behalf. Leaving this field blank
            #   will default to NONE.
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType, nil]
            optional :tax_type,
                     enum: -> {
                       MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType
                     }

            # @!method initialize(payment_gate_type:, stripe_config: nil, tax_type: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig}
            #   for more details.
            #
            #   @param payment_gate_type [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType] Gate access to the commit balance based on successful collection of payment. Sel
            #
            #   @param stripe_config [MetronomeSDK::Models::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig] Only applicable if using Stripe as your payment gateway through Metronome.
            #
            #   @param tax_type [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType] Stripe tax is only supported for Stripe payment gateway. Select NONE if you do n

            # Gate access to the commit balance based on successful collection of payment.
            # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
            # facilitate payment using your own payment integration. Select NONE if you do not
            # wish to payment gate the commit balance.
            #
            # @see MetronomeSDK::Models::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig#payment_gate_type
            module PaymentGateType
              extend MetronomeSDK::Internal::Type::Enum

              NONE = :NONE
              STRIPE = :STRIPE
              EXTERNAL = :EXTERNAL

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see MetronomeSDK::Models::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig#stripe_config
            class StripeConfig < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute payment_type
              #   If left blank, will default to INVOICE
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType]
              required :payment_type,
                       enum: -> {
                         MetronomeSDK::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType
                       }

              # @!method initialize(payment_type:)
              #   Only applicable if using Stripe as your payment gateway through Metronome.
              #
              #   @param payment_type [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType] If left blank, will default to INVOICE

              # If left blank, will default to INVOICE
              #
              # @see MetronomeSDK::Models::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig#payment_type
              module PaymentType
                extend MetronomeSDK::Internal::Type::Enum

                INVOICE = :INVOICE
                PAYMENT_INTENT = :PAYMENT_INTENT

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
            # not wish Metronome to calculate tax on your behalf. Leaving this field blank
            # will default to NONE.
            #
            # @see MetronomeSDK::Models::V2::ContractEditParams::AddPrepaidBalanceThresholdConfiguration::PaymentGateConfig#tax_type
            module TaxType
              extend MetronomeSDK::Internal::Type::Enum

              NONE = :NONE
              STRIPE = :STRIPE

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end

        class AddProfessionalService < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute max_amount
          #   Maximum amount for the term.
          #
          #   @return [Float]
          required :max_amount, Float

          # @!attribute product_id
          #
          #   @return [String]
          required :product_id, String

          # @!attribute quantity
          #   Quantity for the charge. Will be multiplied by unit_price to determine the
          #   amount.
          #
          #   @return [Float]
          required :quantity, Float

          # @!attribute unit_price
          #   Unit price for the charge. Will be multiplied by quantity to determine the
          #   amount and must be specified.
          #
          #   @return [Float]
          required :unit_price, Float

          # @!attribute custom_fields
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

          # @!attribute description
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute netsuite_sales_order_id
          #   This field's availability is dependent on your client's configuration.
          #
          #   @return [String, nil]
          optional :netsuite_sales_order_id, String

          # @!method initialize(max_amount:, product_id:, quantity:, unit_price:, custom_fields: nil, description: nil, netsuite_sales_order_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V2::ContractEditParams::AddProfessionalService} for more
          #   details.
          #
          #   @param max_amount [Float] Maximum amount for the term.
          #
          #   @param product_id [String]
          #
          #   @param quantity [Float] Quantity for the charge. Will be multiplied by unit_price to determine the amoun
          #
          #   @param unit_price [Float] Unit price for the charge. Will be multiplied by quantity to determine the amoun
          #
          #   @param custom_fields [Hash{Symbol=>String}]
          #
          #   @param description [String]
          #
          #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.
        end

        class AddRecurringCommit < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute access_amount
          #   The amount of commit to grant.
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::AccessAmount]
          required :access_amount,
                   -> {
                     MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::AccessAmount
                   }

          # @!attribute commit_duration
          #   Defines the length of the access schedule for each created commit/credit. The
          #   value represents the number of units. Unit defaults to "PERIODS", where the
          #   length of a period is determined by the recurrence_frequency.
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::CommitDuration]
          required :commit_duration,
                   -> {
                     MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::CommitDuration
                   }

          # @!attribute priority
          #   Will be passed down to the individual commits
          #
          #   @return [Float]
          required :priority, Float

          # @!attribute product_id
          #
          #   @return [String]
          required :product_id, String

          # @!attribute starting_at
          #   determines the start time for the first commit
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

          # @!attribute description
          #   Will be passed down to the individual commits
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute ending_before
          #   Determines when the contract will stop creating recurring commits. optional
          #
          #   @return [Time, nil]
          optional :ending_before, Time

          # @!attribute invoice_amount
          #   The amount the customer should be billed for the commit. Not required.
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::InvoiceAmount, nil]
          optional :invoice_amount,
                   -> {
                     MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::InvoiceAmount
                   }

          # @!attribute name
          #   displayed on invoices. will be passed through to the individual commits
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
          #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::Proration, nil]
          optional :proration,
                   enum: -> {
                     MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::Proration
                   }

          # @!attribute rate_type
          #   Whether the created commits will use the commit rate or list rate
          #
          #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::RateType, nil]
          optional :rate_type, enum: -> { MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::RateType }

          # @!attribute recurrence_frequency
          #   The frequency at which the recurring commits will be created. If not provided: -
          #   The commits will be created on the usage invoice frequency. If provided: - The
          #   period defined in the duration will correspond to this frequency. - Commits will
          #   be created aligned with the recurring commit's starting_at rather than the usage
          #   invoice dates.
          #
          #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::RecurrenceFrequency, nil]
          optional :recurrence_frequency,
                   enum: -> { MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::RecurrenceFrequency }

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
          #   specifiers to contribute to a commit's or credit's drawdown. This field cannot
          #   be used together with `applicable_product_ids` or `applicable_product_tags`.
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::Specifier>, nil]
          optional :specifiers,
                   -> {
                     MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::Specifier]
                   }

          # @!attribute temporary_id
          #   A temporary ID that can be used to reference the recurring commit for commit
          #   specific overrides.
          #
          #   @return [String, nil]
          optional :temporary_id, String

          # @!method initialize(access_amount:, commit_duration:, priority:, product_id:, starting_at:, applicable_product_ids: nil, applicable_product_tags: nil, description: nil, ending_before: nil, invoice_amount: nil, name: nil, netsuite_sales_order_id: nil, proration: nil, rate_type: nil, recurrence_frequency: nil, rollover_fraction: nil, specifiers: nil, temporary_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit} for more
          #   details.
          #
          #   @param access_amount [MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::AccessAmount] The amount of commit to grant.
          #
          #   @param commit_duration [MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::CommitDuration] Defines the length of the access schedule for each created commit/credit. The va
          #
          #   @param priority [Float] Will be passed down to the individual commits
          #
          #   @param product_id [String]
          #
          #   @param starting_at [Time] determines the start time for the first commit
          #
          #   @param applicable_product_ids [Array<String>] Will be passed down to the individual commits
          #
          #   @param applicable_product_tags [Array<String>] Will be passed down to the individual commits
          #
          #   @param description [String] Will be passed down to the individual commits
          #
          #   @param ending_before [Time] Determines when the contract will stop creating recurring commits. optional
          #
          #   @param invoice_amount [MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::InvoiceAmount] The amount the customer should be billed for the commit. Not required.
          #
          #   @param name [String] displayed on invoices. will be passed through to the individual commits
          #
          #   @param netsuite_sales_order_id [String] Will be passed down to the individual commits
          #
          #   @param proration [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::Proration] Determines whether the first and last commit will be prorated. If not provided,
          #
          #   @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::RateType] Whether the created commits will use the commit rate or list rate
          #
          #   @param recurrence_frequency [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::RecurrenceFrequency] The frequency at which the recurring commits will be created. If not provided: -
          #
          #   @param rollover_fraction [Float] Will be passed down to the individual commits. This controls how much of an indi
          #
          #   @param specifiers [Array<MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::Specifier>] List of filters that determine what kind of customer usage draws down a commit o
          #
          #   @param temporary_id [String] A temporary ID that can be used to reference the recurring commit for commit spe

          # @see MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit#access_amount
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
            #   This field is currently required. Upcoming recurring commit/credit configuration
            #   options will allow it to be optional.
            #
            #   @return [Float, nil]
            optional :quantity, Float

            # @!method initialize(credit_type_id:, unit_price:, quantity: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::AccessAmount}
            #   for more details.
            #
            #   The amount of commit to grant.
            #
            #   @param credit_type_id [String]
            #
            #   @param unit_price [Float]
            #
            #   @param quantity [Float] This field is currently required. Upcoming recurring commit/credit configuration
          end

          # @see MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit#commit_duration
          class CommitDuration < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute value
            #
            #   @return [Float]
            required :value, Float

            # @!attribute unit
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::CommitDuration::Unit, nil]
            optional :unit,
                     enum: -> {
                       MetronomeSDK::V2::ContractEditParams::AddRecurringCommit::CommitDuration::Unit
                     }

            # @!method initialize(value:, unit: nil)
            #   Defines the length of the access schedule for each created commit/credit. The
            #   value represents the number of units. Unit defaults to "PERIODS", where the
            #   length of a period is determined by the recurrence_frequency.
            #
            #   @param value [Float]
            #   @param unit [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::CommitDuration::Unit]

            # @see MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::CommitDuration#unit
            module Unit
              extend MetronomeSDK::Internal::Type::Enum

              PERIODS = :PERIODS

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit#invoice_amount
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
          # @see MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit#proration
          module Proration
            extend MetronomeSDK::Internal::Type::Enum

            NONE = :NONE
            FIRST = :FIRST
            LAST = :LAST
            FIRST_AND_LAST = :FIRST_AND_LAST

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Whether the created commits will use the commit rate or list rate
          #
          # @see MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit#rate_type
          module RateType
            extend MetronomeSDK::Internal::Type::Enum

            COMMIT_RATE = :COMMIT_RATE
            LIST_RATE = :LIST_RATE

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The frequency at which the recurring commits will be created. If not provided: -
          # The commits will be created on the usage invoice frequency. If provided: - The
          # period defined in the duration will correspond to this frequency. - Commits will
          # be created aligned with the recurring commit's starting_at rather than the usage
          # invoice dates.
          #
          # @see MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit#recurrence_frequency
          module RecurrenceFrequency
            extend MetronomeSDK::Internal::Type::Enum

            MONTHLY = :MONTHLY
            QUARTERLY = :QUARTERLY
            ANNUAL = :ANNUAL
            WEEKLY = :WEEKLY

            # @!method self.values
            #   @return [Array<Symbol>]
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
            #   {MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::Specifier}
            #   for more details.
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

        class AddRecurringCredit < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute access_amount
          #   The amount of commit to grant.
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::AccessAmount]
          required :access_amount,
                   -> {
                     MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::AccessAmount
                   }

          # @!attribute commit_duration
          #   Defines the length of the access schedule for each created commit/credit. The
          #   value represents the number of units. Unit defaults to "PERIODS", where the
          #   length of a period is determined by the recurrence_frequency.
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::CommitDuration]
          required :commit_duration,
                   -> {
                     MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::CommitDuration
                   }

          # @!attribute priority
          #   Will be passed down to the individual commits
          #
          #   @return [Float]
          required :priority, Float

          # @!attribute product_id
          #
          #   @return [String]
          required :product_id, String

          # @!attribute starting_at
          #   determines the start time for the first commit
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

          # @!attribute description
          #   Will be passed down to the individual commits
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute ending_before
          #   Determines when the contract will stop creating recurring commits. optional
          #
          #   @return [Time, nil]
          optional :ending_before, Time

          # @!attribute name
          #   displayed on invoices. will be passed through to the individual commits
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
          #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::Proration, nil]
          optional :proration,
                   enum: -> {
                     MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::Proration
                   }

          # @!attribute rate_type
          #   Whether the created commits will use the commit rate or list rate
          #
          #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::RateType, nil]
          optional :rate_type, enum: -> { MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::RateType }

          # @!attribute recurrence_frequency
          #   The frequency at which the recurring commits will be created. If not provided: -
          #   The commits will be created on the usage invoice frequency. If provided: - The
          #   period defined in the duration will correspond to this frequency. - Commits will
          #   be created aligned with the recurring commit's starting_at rather than the usage
          #   invoice dates.
          #
          #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::RecurrenceFrequency, nil]
          optional :recurrence_frequency,
                   enum: -> { MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::RecurrenceFrequency }

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
          #   specifiers to contribute to a commit's or credit's drawdown. This field cannot
          #   be used together with `applicable_product_ids` or `applicable_product_tags`.
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::Specifier>, nil]
          optional :specifiers,
                   -> {
                     MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::Specifier]
                   }

          # @!attribute temporary_id
          #   A temporary ID that can be used to reference the recurring commit for commit
          #   specific overrides.
          #
          #   @return [String, nil]
          optional :temporary_id, String

          # @!method initialize(access_amount:, commit_duration:, priority:, product_id:, starting_at:, applicable_product_ids: nil, applicable_product_tags: nil, description: nil, ending_before: nil, name: nil, netsuite_sales_order_id: nil, proration: nil, rate_type: nil, recurrence_frequency: nil, rollover_fraction: nil, specifiers: nil, temporary_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit} for more
          #   details.
          #
          #   @param access_amount [MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::AccessAmount] The amount of commit to grant.
          #
          #   @param commit_duration [MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::CommitDuration] Defines the length of the access schedule for each created commit/credit. The va
          #
          #   @param priority [Float] Will be passed down to the individual commits
          #
          #   @param product_id [String]
          #
          #   @param starting_at [Time] determines the start time for the first commit
          #
          #   @param applicable_product_ids [Array<String>] Will be passed down to the individual commits
          #
          #   @param applicable_product_tags [Array<String>] Will be passed down to the individual commits
          #
          #   @param description [String] Will be passed down to the individual commits
          #
          #   @param ending_before [Time] Determines when the contract will stop creating recurring commits. optional
          #
          #   @param name [String] displayed on invoices. will be passed through to the individual commits
          #
          #   @param netsuite_sales_order_id [String] Will be passed down to the individual commits
          #
          #   @param proration [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::Proration] Determines whether the first and last commit will be prorated. If not provided,
          #
          #   @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::RateType] Whether the created commits will use the commit rate or list rate
          #
          #   @param recurrence_frequency [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::RecurrenceFrequency] The frequency at which the recurring commits will be created. If not provided: -
          #
          #   @param rollover_fraction [Float] Will be passed down to the individual commits. This controls how much of an indi
          #
          #   @param specifiers [Array<MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::Specifier>] List of filters that determine what kind of customer usage draws down a commit o
          #
          #   @param temporary_id [String] A temporary ID that can be used to reference the recurring commit for commit spe

          # @see MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit#access_amount
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
            #   This field is currently required. Upcoming recurring commit/credit configuration
            #   options will allow it to be optional.
            #
            #   @return [Float, nil]
            optional :quantity, Float

            # @!method initialize(credit_type_id:, unit_price:, quantity: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::AccessAmount}
            #   for more details.
            #
            #   The amount of commit to grant.
            #
            #   @param credit_type_id [String]
            #
            #   @param unit_price [Float]
            #
            #   @param quantity [Float] This field is currently required. Upcoming recurring commit/credit configuration
          end

          # @see MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit#commit_duration
          class CommitDuration < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute value
            #
            #   @return [Float]
            required :value, Float

            # @!attribute unit
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::CommitDuration::Unit, nil]
            optional :unit,
                     enum: -> {
                       MetronomeSDK::V2::ContractEditParams::AddRecurringCredit::CommitDuration::Unit
                     }

            # @!method initialize(value:, unit: nil)
            #   Defines the length of the access schedule for each created commit/credit. The
            #   value represents the number of units. Unit defaults to "PERIODS", where the
            #   length of a period is determined by the recurrence_frequency.
            #
            #   @param value [Float]
            #   @param unit [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::CommitDuration::Unit]

            # @see MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::CommitDuration#unit
            module Unit
              extend MetronomeSDK::Internal::Type::Enum

              PERIODS = :PERIODS

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # Determines whether the first and last commit will be prorated. If not provided,
          # the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
          #
          # @see MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit#proration
          module Proration
            extend MetronomeSDK::Internal::Type::Enum

            NONE = :NONE
            FIRST = :FIRST
            LAST = :LAST
            FIRST_AND_LAST = :FIRST_AND_LAST

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Whether the created commits will use the commit rate or list rate
          #
          # @see MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit#rate_type
          module RateType
            extend MetronomeSDK::Internal::Type::Enum

            COMMIT_RATE = :COMMIT_RATE
            LIST_RATE = :LIST_RATE

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The frequency at which the recurring commits will be created. If not provided: -
          # The commits will be created on the usage invoice frequency. If provided: - The
          # period defined in the duration will correspond to this frequency. - Commits will
          # be created aligned with the recurring commit's starting_at rather than the usage
          # invoice dates.
          #
          # @see MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit#recurrence_frequency
          module RecurrenceFrequency
            extend MetronomeSDK::Internal::Type::Enum

            MONTHLY = :MONTHLY
            QUARTERLY = :QUARTERLY
            ANNUAL = :ANNUAL
            WEEKLY = :WEEKLY

            # @!method self.values
            #   @return [Array<Symbol>]
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
            #   {MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::Specifier}
            #   for more details.
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

        class AddResellerRoyalty < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute reseller_type
          #
          #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddResellerRoyalty::ResellerType]
          required :reseller_type,
                   enum: -> { MetronomeSDK::V2::ContractEditParams::AddResellerRoyalty::ResellerType }

          # @!attribute applicable_product_ids
          #   Must provide at least one of applicable_product_ids or applicable_product_tags.
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!attribute applicable_product_tags
          #   Must provide at least one of applicable_product_ids or applicable_product_tags.
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_tags, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!attribute aws_options
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddResellerRoyalty::AwsOptions, nil]
          optional :aws_options, -> { MetronomeSDK::V2::ContractEditParams::AddResellerRoyalty::AwsOptions }

          # @!attribute ending_before
          #   Use null to indicate that the existing end timestamp should be removed.
          #
          #   @return [Time, nil]
          optional :ending_before, Time, nil?: true

          # @!attribute fraction
          #
          #   @return [Float, nil]
          optional :fraction, Float

          # @!attribute gcp_options
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddResellerRoyalty::GcpOptions, nil]
          optional :gcp_options, -> { MetronomeSDK::V2::ContractEditParams::AddResellerRoyalty::GcpOptions }

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

          # @!method initialize(reseller_type:, applicable_product_ids: nil, applicable_product_tags: nil, aws_options: nil, ending_before: nil, fraction: nil, gcp_options: nil, netsuite_reseller_id: nil, reseller_contract_value: nil, starting_at: nil)
          #   @param reseller_type [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddResellerRoyalty::ResellerType]
          #
          #   @param applicable_product_ids [Array<String>] Must provide at least one of applicable_product_ids or applicable_product_tags.
          #
          #   @param applicable_product_tags [Array<String>] Must provide at least one of applicable_product_ids or applicable_product_tags.
          #
          #   @param aws_options [MetronomeSDK::Models::V2::ContractEditParams::AddResellerRoyalty::AwsOptions]
          #
          #   @param ending_before [Time, nil] Use null to indicate that the existing end timestamp should be removed.
          #
          #   @param fraction [Float]
          #
          #   @param gcp_options [MetronomeSDK::Models::V2::ContractEditParams::AddResellerRoyalty::GcpOptions]
          #
          #   @param netsuite_reseller_id [String]
          #
          #   @param reseller_contract_value [Float]
          #
          #   @param starting_at [Time]

          # @see MetronomeSDK::Models::V2::ContractEditParams::AddResellerRoyalty#reseller_type
          module ResellerType
            extend MetronomeSDK::Internal::Type::Enum

            AWS = :AWS
            AWS_PRO_SERVICE = :AWS_PRO_SERVICE
            GCP = :GCP
            GCP_PRO_SERVICE = :GCP_PRO_SERVICE

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see MetronomeSDK::Models::V2::ContractEditParams::AddResellerRoyalty#aws_options
          class AwsOptions < MetronomeSDK::Internal::Type::BaseModel
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

            # @!method initialize(aws_account_number: nil, aws_offer_id: nil, aws_payer_reference_id: nil)
            #   @param aws_account_number [String]
            #   @param aws_offer_id [String]
            #   @param aws_payer_reference_id [String]
          end

          # @see MetronomeSDK::Models::V2::ContractEditParams::AddResellerRoyalty#gcp_options
          class GcpOptions < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute gcp_account_id
            #
            #   @return [String, nil]
            optional :gcp_account_id, String

            # @!attribute gcp_offer_id
            #
            #   @return [String, nil]
            optional :gcp_offer_id, String

            # @!method initialize(gcp_account_id: nil, gcp_offer_id: nil)
            #   @param gcp_account_id [String]
            #   @param gcp_offer_id [String]
          end
        end

        class AddScheduledCharge < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute product_id
          #
          #   @return [String]
          required :product_id, String

          # @!attribute schedule
          #   Must provide either schedule_items or recurring_schedule.
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule]
          required :schedule, -> { MetronomeSDK::V2::ContractEditParams::AddScheduledCharge::Schedule }

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

          # @!method initialize(product_id:, schedule:, name: nil, netsuite_sales_order_id: nil)
          #   @param product_id [String]
          #
          #   @param schedule [MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule] Must provide either schedule_items or recurring_schedule.
          #
          #   @param name [String] displayed on invoices
          #
          #   @param netsuite_sales_order_id [String] This field's availability is dependent on your client's configuration.

          # @see MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge#schedule
          class Schedule < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute credit_type_id
            #   Defaults to USD if not passed. Only USD is supported at this time.
            #
            #   @return [String, nil]
            optional :credit_type_id, String

            # @!attribute recurring_schedule
            #   Enter the unit price and quantity for the charge or instead only send the
            #   amount. If amount is sent, the unit price is assumed to be the amount and
            #   quantity is inferred to be 1.
            #
            #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule, nil]
            optional :recurring_schedule,
                     -> {
                       MetronomeSDK::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule
                     }

            # @!attribute schedule_items
            #   Either provide amount or provide both unit_price and quantity.
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule::ScheduleItem>, nil]
            optional :schedule_items,
                     -> {
                       MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::AddScheduledCharge::Schedule::ScheduleItem]
                     }

            # @!method initialize(credit_type_id: nil, recurring_schedule: nil, schedule_items: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule} for
            #   more details.
            #
            #   Must provide either schedule_items or recurring_schedule.
            #
            #   @param credit_type_id [String] Defaults to USD if not passed. Only USD is supported at this time.
            #
            #   @param recurring_schedule [MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule] Enter the unit price and quantity for the charge or instead only send the amount
            #
            #   @param schedule_items [Array<MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule::ScheduleItem>] Either provide amount or provide both unit_price and quantity.

            # @see MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule#recurring_schedule
            class RecurringSchedule < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute amount_distribution
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule::AmountDistribution]
              required :amount_distribution,
                       enum: -> {
                         MetronomeSDK::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule::AmountDistribution
                       }

              # @!attribute ending_before
              #   RFC 3339 timestamp (exclusive).
              #
              #   @return [Time]
              required :ending_before, Time

              # @!attribute frequency
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule::Frequency]
              required :frequency,
                       enum: -> {
                         MetronomeSDK::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule::Frequency
                       }

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
              #   {MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule}
              #   for more details.
              #
              #   Enter the unit price and quantity for the charge or instead only send the
              #   amount. If amount is sent, the unit price is assumed to be the amount and
              #   quantity is inferred to be 1.
              #
              #   @param amount_distribution [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule::AmountDistribution]
              #
              #   @param ending_before [Time] RFC 3339 timestamp (exclusive).
              #
              #   @param frequency [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule::Frequency]
              #
              #   @param starting_at [Time] RFC 3339 timestamp (inclusive).
              #
              #   @param amount [Float] Amount for the charge. Can be provided instead of unit_price and quantity. If am
              #
              #   @param quantity [Float] Quantity for the charge. Will be multiplied by unit_price to determine the amoun
              #
              #   @param unit_price [Float] Unit price for the charge. Will be multiplied by quantity to determine the amoun

              # @see MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule#amount_distribution
              module AmountDistribution
                extend MetronomeSDK::Internal::Type::Enum

                DIVIDED = :DIVIDED
                DIVIDED_ROUNDED = :DIVIDED_ROUNDED
                EACH = :EACH

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule#frequency
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
              #   {MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule::ScheduleItem}
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

        class AddSpendThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute commit
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::Commit]
          required :commit,
                   -> {
                     MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::Commit
                   }

          # @!attribute is_enabled
          #   When set to false, the contract will not be evaluated against the
          #   threshold_amount. Toggling to true will result an immediate evaluation,
          #   regardless of prior state.
          #
          #   @return [Boolean]
          required :is_enabled, MetronomeSDK::Internal::Type::Boolean

          # @!attribute payment_gate_config
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig]
          required :payment_gate_config,
                   -> {
                     MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig
                   }

          # @!attribute threshold_amount
          #   Specify the threshold amount for the contract. Each time the contract's usage
          #   hits this amount, a threshold charge will be initiated.
          #
          #   @return [Float]
          required :threshold_amount, Float

          # @!method initialize(commit:, is_enabled:, payment_gate_config:, threshold_amount:)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration}
          #   for more details.
          #
          #   @param commit [MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::Commit]
          #
          #   @param is_enabled [Boolean] When set to false, the contract will not be evaluated against the threshold_amou
          #
          #   @param payment_gate_config [MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig]
          #
          #   @param threshold_amount [Float] Specify the threshold amount for the contract. Each time the contract's usage hi

          # @see MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration#commit
          class Commit < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute product_id
            #   The commit product that will be used to generate the line item for commit
            #   payment.
            #
            #   @return [String]
            required :product_id, String

            # @!attribute description
            #
            #   @return [String, nil]
            optional :description, String

            # @!attribute name
            #   Specify the name of the line item for the threshold charge. If left blank, it
            #   will default to the commit product name.
            #
            #   @return [String, nil]
            optional :name, String

            # @!method initialize(product_id:, description: nil, name: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::Commit}
            #   for more details.
            #
            #   @param product_id [String] The commit product that will be used to generate the line item for commit paymen
            #
            #   @param description [String]
            #
            #   @param name [String] Specify the name of the line item for the threshold charge. If left blank, it wi
          end

          # @see MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration#payment_gate_config
          class PaymentGateConfig < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute payment_gate_type
            #   Gate access to the commit balance based on successful collection of payment.
            #   Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
            #   facilitate payment using your own payment integration. Select NONE if you do not
            #   wish to payment gate the commit balance.
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::PaymentGateType]
            required :payment_gate_type,
                     enum: -> {
                       MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::PaymentGateType
                     }

            # @!attribute stripe_config
            #   Only applicable if using Stripe as your payment gateway through Metronome.
            #
            #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::StripeConfig, nil]
            optional :stripe_config,
                     -> {
                       MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::StripeConfig
                     }

            # @!attribute tax_type
            #   Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
            #   not wish Metronome to calculate tax on your behalf. Leaving this field blank
            #   will default to NONE.
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::TaxType, nil]
            optional :tax_type,
                     enum: -> {
                       MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::TaxType
                     }

            # @!method initialize(payment_gate_type:, stripe_config: nil, tax_type: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig}
            #   for more details.
            #
            #   @param payment_gate_type [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::PaymentGateType] Gate access to the commit balance based on successful collection of payment. Sel
            #
            #   @param stripe_config [MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::StripeConfig] Only applicable if using Stripe as your payment gateway through Metronome.
            #
            #   @param tax_type [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::TaxType] Stripe tax is only supported for Stripe payment gateway. Select NONE if you do n

            # Gate access to the commit balance based on successful collection of payment.
            # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
            # facilitate payment using your own payment integration. Select NONE if you do not
            # wish to payment gate the commit balance.
            #
            # @see MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig#payment_gate_type
            module PaymentGateType
              extend MetronomeSDK::Internal::Type::Enum

              NONE = :NONE
              STRIPE = :STRIPE
              EXTERNAL = :EXTERNAL

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig#stripe_config
            class StripeConfig < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute payment_type
              #   If left blank, will default to INVOICE
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType]
              required :payment_type,
                       enum: -> {
                         MetronomeSDK::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType
                       }

              # @!method initialize(payment_type:)
              #   Only applicable if using Stripe as your payment gateway through Metronome.
              #
              #   @param payment_type [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType] If left blank, will default to INVOICE

              # If left blank, will default to INVOICE
              #
              # @see MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::StripeConfig#payment_type
              module PaymentType
                extend MetronomeSDK::Internal::Type::Enum

                INVOICE = :INVOICE
                PAYMENT_INTENT = :PAYMENT_INTENT

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
            # not wish Metronome to calculate tax on your behalf. Leaving this field blank
            # will default to NONE.
            #
            # @see MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig#tax_type
            module TaxType
              extend MetronomeSDK::Internal::Type::Enum

              NONE = :NONE
              STRIPE = :STRIPE

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end

        class AddSubscription < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute collection_schedule
          #
          #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddSubscription::CollectionSchedule]
          required :collection_schedule,
                   enum: -> { MetronomeSDK::V2::ContractEditParams::AddSubscription::CollectionSchedule }

          # @!attribute initial_quantity
          #
          #   @return [Float]
          required :initial_quantity, Float

          # @!attribute proration
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddSubscription::Proration]
          required :proration, -> { MetronomeSDK::V2::ContractEditParams::AddSubscription::Proration }

          # @!attribute subscription_rate
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddSubscription::SubscriptionRate]
          required :subscription_rate,
                   -> { MetronomeSDK::V2::ContractEditParams::AddSubscription::SubscriptionRate }

          # @!attribute custom_fields
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

          # @!attribute description
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute ending_before
          #   Exclusive end time for the subscription. If not provided, subscription inherits
          #   contract end date.
          #
          #   @return [Time, nil]
          optional :ending_before, Time

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute starting_at
          #   Inclusive start time for the subscription. If not provided, defaults to contract
          #   start date
          #
          #   @return [Time, nil]
          optional :starting_at, Time

          # @!method initialize(collection_schedule:, initial_quantity:, proration:, subscription_rate:, custom_fields: nil, description: nil, ending_before: nil, name: nil, starting_at: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V2::ContractEditParams::AddSubscription} for more
          #   details.
          #
          #   @param collection_schedule [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddSubscription::CollectionSchedule]
          #
          #   @param initial_quantity [Float]
          #
          #   @param proration [MetronomeSDK::Models::V2::ContractEditParams::AddSubscription::Proration]
          #
          #   @param subscription_rate [MetronomeSDK::Models::V2::ContractEditParams::AddSubscription::SubscriptionRate]
          #
          #   @param custom_fields [Hash{Symbol=>String}]
          #
          #   @param description [String]
          #
          #   @param ending_before [Time] Exclusive end time for the subscription. If not provided, subscription inherits
          #
          #   @param name [String]
          #
          #   @param starting_at [Time] Inclusive start time for the subscription. If not provided, defaults to contract

          # @see MetronomeSDK::Models::V2::ContractEditParams::AddSubscription#collection_schedule
          module CollectionSchedule
            extend MetronomeSDK::Internal::Type::Enum

            ADVANCE = :ADVANCE
            ARREARS = :ARREARS

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see MetronomeSDK::Models::V2::ContractEditParams::AddSubscription#proration
          class Proration < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute invoice_behavior
            #   Indicates how mid-period quantity adjustments are invoiced. If BILL_IMMEDIATELY
            #   is selected, the quantity increase will be billed on the scheduled date. If
            #   BILL_ON_NEXT_COLLECTION_DATE is selected, the quantity increase will be billed
            #   for in-arrears at the end of the period.
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddSubscription::Proration::InvoiceBehavior, nil]
            optional :invoice_behavior,
                     enum: -> {
                       MetronomeSDK::V2::ContractEditParams::AddSubscription::Proration::InvoiceBehavior
                     }

            # @!attribute is_prorated
            #   Indicates if the partial period will be prorated or charged a full amount.
            #
            #   @return [Boolean, nil]
            optional :is_prorated, MetronomeSDK::Internal::Type::Boolean

            # @!method initialize(invoice_behavior: nil, is_prorated: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V2::ContractEditParams::AddSubscription::Proration} for
            #   more details.
            #
            #   @param invoice_behavior [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddSubscription::Proration::InvoiceBehavior] Indicates how mid-period quantity adjustments are invoiced. If BILL_IMMEDIATELY
            #
            #   @param is_prorated [Boolean] Indicates if the partial period will be prorated or charged a full amount.

            # Indicates how mid-period quantity adjustments are invoiced. If BILL_IMMEDIATELY
            # is selected, the quantity increase will be billed on the scheduled date. If
            # BILL_ON_NEXT_COLLECTION_DATE is selected, the quantity increase will be billed
            # for in-arrears at the end of the period.
            #
            # @see MetronomeSDK::Models::V2::ContractEditParams::AddSubscription::Proration#invoice_behavior
            module InvoiceBehavior
              extend MetronomeSDK::Internal::Type::Enum

              BILL_IMMEDIATELY = :BILL_IMMEDIATELY
              BILL_ON_NEXT_COLLECTION_DATE = :BILL_ON_NEXT_COLLECTION_DATE

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see MetronomeSDK::Models::V2::ContractEditParams::AddSubscription#subscription_rate
          class SubscriptionRate < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute billing_frequency
            #   Frequency to bill subscription with. Together with product_id, must match
            #   existing rate on the rate card.
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddSubscription::SubscriptionRate::BillingFrequency]
            required :billing_frequency,
                     enum: -> {
                       MetronomeSDK::V2::ContractEditParams::AddSubscription::SubscriptionRate::BillingFrequency
                     }

            # @!attribute product_id
            #   Must be subscription type product
            #
            #   @return [String]
            required :product_id, String

            # @!method initialize(billing_frequency:, product_id:)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V2::ContractEditParams::AddSubscription::SubscriptionRate}
            #   for more details.
            #
            #   @param billing_frequency [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddSubscription::SubscriptionRate::BillingFrequency] Frequency to bill subscription with. Together with product_id, must match existi
            #
            #   @param product_id [String] Must be subscription type product

            # Frequency to bill subscription with. Together with product_id, must match
            # existing rate on the rate card.
            #
            # @see MetronomeSDK::Models::V2::ContractEditParams::AddSubscription::SubscriptionRate#billing_frequency
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
          # @!attribute commit_id
          #
          #   @return [String]
          required :commit_id, String

          # @!attribute access_schedule
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::AccessSchedule, nil]
          optional :access_schedule, -> { MetronomeSDK::V2::ContractEditParams::UpdateCommit::AccessSchedule }

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

          # @!attribute invoice_schedule
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::InvoiceSchedule, nil]
          optional :invoice_schedule,
                   -> {
                     MetronomeSDK::V2::ContractEditParams::UpdateCommit::InvoiceSchedule
                   }

          # @!attribute netsuite_sales_order_id
          #
          #   @return [String, nil]
          optional :netsuite_sales_order_id, String, nil?: true

          # @!attribute product_id
          #
          #   @return [String, nil]
          optional :product_id, String

          # @!attribute rollover_fraction
          #
          #   @return [Float, nil]
          optional :rollover_fraction, Float, nil?: true

          # @!method initialize(commit_id:, access_schedule: nil, applicable_product_ids: nil, applicable_product_tags: nil, invoice_schedule: nil, netsuite_sales_order_id: nil, product_id: nil, rollover_fraction: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit} for more details.
          #
          #   @param commit_id [String]
          #
          #   @param access_schedule [MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::AccessSchedule]
          #
          #   @param applicable_product_ids [Array<String>, nil] Which products the commit applies to. If applicable_product_ids, applicable_prod
          #
          #   @param applicable_product_tags [Array<String>, nil] Which tags the commit applies to. If applicable*product_ids, applicable_product*
          #
          #   @param invoice_schedule [MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::InvoiceSchedule]
          #
          #   @param netsuite_sales_order_id [String, nil]
          #
          #   @param product_id [String]
          #
          #   @param rollover_fraction [Float, nil]

          # @see MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit#access_schedule
          class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute add_schedule_items
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::AccessSchedule::AddScheduleItem>, nil]
            optional :add_schedule_items,
                     -> {
                       MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::UpdateCommit::AccessSchedule::AddScheduleItem]
                     }

            # @!attribute remove_schedule_items
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::AccessSchedule::RemoveScheduleItem>, nil]
            optional :remove_schedule_items,
                     -> {
                       MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::UpdateCommit::AccessSchedule::RemoveScheduleItem]
                     }

            # @!attribute update_schedule_items
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::AccessSchedule::UpdateScheduleItem>, nil]
            optional :update_schedule_items,
                     -> {
                       MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::UpdateCommit::AccessSchedule::UpdateScheduleItem]
                     }

            # @!method initialize(add_schedule_items: nil, remove_schedule_items: nil, update_schedule_items: nil)
            #   @param add_schedule_items [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::AccessSchedule::AddScheduleItem>]
            #   @param remove_schedule_items [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::AccessSchedule::RemoveScheduleItem>]
            #   @param update_schedule_items [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::AccessSchedule::UpdateScheduleItem>]

            class AddScheduleItem < MetronomeSDK::Internal::Type::BaseModel
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

              # @!method initialize(amount:, ending_before:, starting_at:)
              #   @param amount [Float]
              #   @param ending_before [Time]
              #   @param starting_at [Time]
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
              #
              #   @return [Time, nil]
              optional :ending_before, Time

              # @!attribute starting_at
              #
              #   @return [Time, nil]
              optional :starting_at, Time

              # @!method initialize(id:, amount: nil, ending_before: nil, starting_at: nil)
              #   @param id [String]
              #   @param amount [Float]
              #   @param ending_before [Time]
              #   @param starting_at [Time]
            end
          end

          # @see MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit#invoice_schedule
          class InvoiceSchedule < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute add_schedule_items
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::AddScheduleItem>, nil]
            optional :add_schedule_items,
                     -> {
                       MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::AddScheduleItem]
                     }

            # @!attribute remove_schedule_items
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::RemoveScheduleItem>, nil]
            optional :remove_schedule_items,
                     -> {
                       MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::RemoveScheduleItem]
                     }

            # @!attribute update_schedule_items
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::UpdateScheduleItem>, nil]
            optional :update_schedule_items,
                     -> {
                       MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::UpdateScheduleItem]
                     }

            # @!method initialize(add_schedule_items: nil, remove_schedule_items: nil, update_schedule_items: nil)
            #   @param add_schedule_items [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::AddScheduleItem>]
            #   @param remove_schedule_items [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::RemoveScheduleItem>]
            #   @param update_schedule_items [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::UpdateScheduleItem>]

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

        class UpdateCredit < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute credit_id
          #
          #   @return [String]
          required :credit_id, String

          # @!attribute access_schedule
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit::AccessSchedule, nil]
          optional :access_schedule, -> { MetronomeSDK::V2::ContractEditParams::UpdateCredit::AccessSchedule }

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

          # @!attribute netsuite_sales_order_id
          #
          #   @return [String, nil]
          optional :netsuite_sales_order_id, String, nil?: true

          # @!attribute product_id
          #
          #   @return [String, nil]
          optional :product_id, String

          # @!method initialize(credit_id:, access_schedule: nil, applicable_product_ids: nil, applicable_product_tags: nil, netsuite_sales_order_id: nil, product_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit} for more details.
          #
          #   @param credit_id [String]
          #
          #   @param access_schedule [MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit::AccessSchedule]
          #
          #   @param applicable_product_ids [Array<String>, nil] Which products the commit applies to. If applicable_product_ids, applicable_prod
          #
          #   @param applicable_product_tags [Array<String>, nil] Which tags the commit applies to. If applicable*product_ids, applicable_product*
          #
          #   @param netsuite_sales_order_id [String, nil]
          #
          #   @param product_id [String]

          # @see MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit#access_schedule
          class AccessSchedule < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute add_schedule_items
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit::AccessSchedule::AddScheduleItem>, nil]
            optional :add_schedule_items,
                     -> {
                       MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::UpdateCredit::AccessSchedule::AddScheduleItem]
                     }

            # @!attribute remove_schedule_items
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit::AccessSchedule::RemoveScheduleItem>, nil]
            optional :remove_schedule_items,
                     -> {
                       MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::UpdateCredit::AccessSchedule::RemoveScheduleItem]
                     }

            # @!attribute update_schedule_items
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit::AccessSchedule::UpdateScheduleItem>, nil]
            optional :update_schedule_items,
                     -> {
                       MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::UpdateCredit::AccessSchedule::UpdateScheduleItem]
                     }

            # @!method initialize(add_schedule_items: nil, remove_schedule_items: nil, update_schedule_items: nil)
            #   @param add_schedule_items [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit::AccessSchedule::AddScheduleItem>]
            #   @param remove_schedule_items [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit::AccessSchedule::RemoveScheduleItem>]
            #   @param update_schedule_items [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit::AccessSchedule::UpdateScheduleItem>]

            class AddScheduleItem < MetronomeSDK::Internal::Type::BaseModel
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

              # @!method initialize(amount:, ending_before:, starting_at:)
              #   @param amount [Float]
              #   @param ending_before [Time]
              #   @param starting_at [Time]
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
              #
              #   @return [Time, nil]
              optional :ending_before, Time

              # @!attribute starting_at
              #
              #   @return [Time, nil]
              optional :starting_at, Time

              # @!method initialize(id:, amount: nil, ending_before: nil, starting_at: nil)
              #   @param id [String]
              #   @param amount [Float]
              #   @param ending_before [Time]
              #   @param starting_at [Time]
            end
          end
        end

        class UpdatePrepaidBalanceThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute commit
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::Commit, nil]
          optional :commit,
                   -> {
                     MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::Commit
                   }

          # @!attribute is_enabled
          #   When set to false, the contract will not be evaluated against the
          #   threshold_amount. Toggling to true will result an immediate evaluation,
          #   regardless of prior state.
          #
          #   @return [Boolean, nil]
          optional :is_enabled, MetronomeSDK::Internal::Type::Boolean

          # @!attribute payment_gate_config
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig, nil]
          optional :payment_gate_config,
                   -> {
                     MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig
                   }

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

          # @!method initialize(commit: nil, is_enabled: nil, payment_gate_config: nil, recharge_to_amount: nil, threshold_amount: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration}
          #   for more details.
          #
          #   @param commit [MetronomeSDK::Models::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::Commit]
          #
          #   @param is_enabled [Boolean] When set to false, the contract will not be evaluated against the threshold_amou
          #
          #   @param payment_gate_config [MetronomeSDK::Models::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig]
          #
          #   @param recharge_to_amount [Float] Specify the amount the balance should be recharged to.
          #
          #   @param threshold_amount [Float] Specify the threshold amount for the contract. Each time the contract's balance

          # @see MetronomeSDK::Models::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration#commit
          class Commit < MetronomeSDK::Internal::Type::BaseModel
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

            # @!attribute description
            #
            #   @return [String, nil]
            optional :description, String

            # @!attribute name
            #   Specify the name of the line item for the threshold charge. If left blank, it
            #   will default to the commit product name.
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute product_id
            #   The commit product that will be used to generate the line item for commit
            #   payment.
            #
            #   @return [String, nil]
            optional :product_id, String

            # @!attribute specifiers
            #   List of filters that determine what kind of customer usage draws down a commit
            #   or credit. A customer's usage needs to meet the condition of at least one of the
            #   specifiers to contribute to a commit's or credit's drawdown. This field cannot
            #   be used together with `applicable_product_ids` or `applicable_product_tags`.
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::Commit::Specifier>, nil]
            optional :specifiers,
                     -> {
                       MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::Commit::Specifier]
                     },
                     nil?: true

            # @!method initialize(applicable_product_ids: nil, applicable_product_tags: nil, description: nil, name: nil, product_id: nil, specifiers: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::Commit}
            #   for more details.
            #
            #   @param applicable_product_ids [Array<String>, nil] Which products the threshold commit applies to. If both applicable_product_ids a
            #
            #   @param applicable_product_tags [Array<String>, nil] Which tags the threshold commit applies to. If both applicable_product_ids and a
            #
            #   @param description [String]
            #
            #   @param name [String] Specify the name of the line item for the threshold charge. If left blank, it wi
            #
            #   @param product_id [String] The commit product that will be used to generate the line item for commit paymen
            #
            #   @param specifiers [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::Commit::Specifier>, nil] List of filters that determine what kind of customer usage draws down a commit o

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
              #   {MetronomeSDK::Models::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::Commit::Specifier}
              #   for more details.
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

          # @see MetronomeSDK::Models::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration#payment_gate_config
          class PaymentGateConfig < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute payment_gate_type
            #   Gate access to the commit balance based on successful collection of payment.
            #   Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
            #   facilitate payment using your own payment integration. Select NONE if you do not
            #   wish to payment gate the commit balance.
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType]
            required :payment_gate_type,
                     enum: -> {
                       MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType
                     }

            # @!attribute stripe_config
            #   Only applicable if using Stripe as your payment gateway through Metronome.
            #
            #   @return [MetronomeSDK::Models::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig, nil]
            optional :stripe_config,
                     -> {
                       MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig
                     }

            # @!attribute tax_type
            #   Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
            #   not wish Metronome to calculate tax on your behalf. Leaving this field blank
            #   will default to NONE.
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType, nil]
            optional :tax_type,
                     enum: -> {
                       MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType
                     }

            # @!method initialize(payment_gate_type:, stripe_config: nil, tax_type: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig}
            #   for more details.
            #
            #   @param payment_gate_type [Symbol, MetronomeSDK::Models::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::PaymentGateType] Gate access to the commit balance based on successful collection of payment. Sel
            #
            #   @param stripe_config [MetronomeSDK::Models::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig] Only applicable if using Stripe as your payment gateway through Metronome.
            #
            #   @param tax_type [Symbol, MetronomeSDK::Models::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::TaxType] Stripe tax is only supported for Stripe payment gateway. Select NONE if you do n

            # Gate access to the commit balance based on successful collection of payment.
            # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
            # facilitate payment using your own payment integration. Select NONE if you do not
            # wish to payment gate the commit balance.
            #
            # @see MetronomeSDK::Models::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig#payment_gate_type
            module PaymentGateType
              extend MetronomeSDK::Internal::Type::Enum

              NONE = :NONE
              STRIPE = :STRIPE
              EXTERNAL = :EXTERNAL

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see MetronomeSDK::Models::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig#stripe_config
            class StripeConfig < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute payment_type
              #   If left blank, will default to INVOICE
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType]
              required :payment_type,
                       enum: -> {
                         MetronomeSDK::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType
                       }

              # @!method initialize(payment_type:)
              #   Only applicable if using Stripe as your payment gateway through Metronome.
              #
              #   @param payment_type [Symbol, MetronomeSDK::Models::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType] If left blank, will default to INVOICE

              # If left blank, will default to INVOICE
              #
              # @see MetronomeSDK::Models::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig::StripeConfig#payment_type
              module PaymentType
                extend MetronomeSDK::Internal::Type::Enum

                INVOICE = :INVOICE
                PAYMENT_INTENT = :PAYMENT_INTENT

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
            # not wish Metronome to calculate tax on your behalf. Leaving this field blank
            # will default to NONE.
            #
            # @see MetronomeSDK::Models::V2::ContractEditParams::UpdatePrepaidBalanceThresholdConfiguration::PaymentGateConfig#tax_type
            module TaxType
              extend MetronomeSDK::Internal::Type::Enum

              NONE = :NONE
              STRIPE = :STRIPE

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end

        class UpdateRecurringCommit < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute recurring_commit_id
          #
          #   @return [String]
          required :recurring_commit_id, String

          # @!attribute access_amount
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::UpdateRecurringCommit::AccessAmount, nil]
          optional :access_amount,
                   -> {
                     MetronomeSDK::V2::ContractEditParams::UpdateRecurringCommit::AccessAmount
                   }

          # @!attribute ending_before
          #
          #   @return [Time, nil]
          optional :ending_before, Time, nil?: true

          # @!attribute invoice_amount
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::UpdateRecurringCommit::InvoiceAmount, nil]
          optional :invoice_amount,
                   -> { MetronomeSDK::V2::ContractEditParams::UpdateRecurringCommit::InvoiceAmount }

          # @!method initialize(recurring_commit_id:, access_amount: nil, ending_before: nil, invoice_amount: nil)
          #   @param recurring_commit_id [String]
          #   @param access_amount [MetronomeSDK::Models::V2::ContractEditParams::UpdateRecurringCommit::AccessAmount]
          #   @param ending_before [Time, nil]
          #   @param invoice_amount [MetronomeSDK::Models::V2::ContractEditParams::UpdateRecurringCommit::InvoiceAmount]

          # @see MetronomeSDK::Models::V2::ContractEditParams::UpdateRecurringCommit#access_amount
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

          # @see MetronomeSDK::Models::V2::ContractEditParams::UpdateRecurringCommit#invoice_amount
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
        end

        class UpdateRecurringCredit < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute recurring_credit_id
          #
          #   @return [String]
          required :recurring_credit_id, String

          # @!attribute access_amount
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::UpdateRecurringCredit::AccessAmount, nil]
          optional :access_amount,
                   -> {
                     MetronomeSDK::V2::ContractEditParams::UpdateRecurringCredit::AccessAmount
                   }

          # @!attribute ending_before
          #
          #   @return [Time, nil]
          optional :ending_before, Time, nil?: true

          # @!method initialize(recurring_credit_id:, access_amount: nil, ending_before: nil)
          #   @param recurring_credit_id [String]
          #   @param access_amount [MetronomeSDK::Models::V2::ContractEditParams::UpdateRecurringCredit::AccessAmount]
          #   @param ending_before [Time, nil]

          # @see MetronomeSDK::Models::V2::ContractEditParams::UpdateRecurringCredit#access_amount
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
        end

        class UpdateScheduledCharge < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute scheduled_charge_id
          #
          #   @return [String]
          required :scheduled_charge_id, String

          # @!attribute invoice_schedule
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule, nil]
          optional :invoice_schedule,
                   -> { MetronomeSDK::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule }

          # @!attribute netsuite_sales_order_id
          #
          #   @return [String, nil]
          optional :netsuite_sales_order_id, String, nil?: true

          # @!method initialize(scheduled_charge_id:, invoice_schedule: nil, netsuite_sales_order_id: nil)
          #   @param scheduled_charge_id [String]
          #   @param invoice_schedule [MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule]
          #   @param netsuite_sales_order_id [String, nil]

          # @see MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge#invoice_schedule
          class InvoiceSchedule < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute add_schedule_items
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::AddScheduleItem>, nil]
            optional :add_schedule_items,
                     -> {
                       MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::AddScheduleItem]
                     }

            # @!attribute remove_schedule_items
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::RemoveScheduleItem>, nil]
            optional :remove_schedule_items,
                     -> {
                       MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::RemoveScheduleItem]
                     }

            # @!attribute update_schedule_items
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::UpdateScheduleItem>, nil]
            optional :update_schedule_items,
                     -> {
                       MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::UpdateScheduleItem]
                     }

            # @!method initialize(add_schedule_items: nil, remove_schedule_items: nil, update_schedule_items: nil)
            #   @param add_schedule_items [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::AddScheduleItem>]
            #   @param remove_schedule_items [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::RemoveScheduleItem>]
            #   @param update_schedule_items [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::UpdateScheduleItem>]

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

        class UpdateSpendThresholdConfiguration < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute commit
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::Commit, nil]
          optional :commit,
                   -> {
                     MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::Commit
                   }

          # @!attribute is_enabled
          #   When set to false, the contract will not be evaluated against the
          #   threshold_amount. Toggling to true will result an immediate evaluation,
          #   regardless of prior state.
          #
          #   @return [Boolean, nil]
          optional :is_enabled, MetronomeSDK::Internal::Type::Boolean

          # @!attribute payment_gate_config
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig, nil]
          optional :payment_gate_config,
                   -> {
                     MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig
                   }

          # @!attribute threshold_amount
          #   Specify the threshold amount for the contract. Each time the contract's usage
          #   hits this amount, a threshold charge will be initiated.
          #
          #   @return [Float, nil]
          optional :threshold_amount, Float

          # @!method initialize(commit: nil, is_enabled: nil, payment_gate_config: nil, threshold_amount: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration}
          #   for more details.
          #
          #   @param commit [MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::Commit]
          #
          #   @param is_enabled [Boolean] When set to false, the contract will not be evaluated against the threshold_amou
          #
          #   @param payment_gate_config [MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig]
          #
          #   @param threshold_amount [Float] Specify the threshold amount for the contract. Each time the contract's usage hi

          # @see MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration#commit
          class Commit < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute description
            #
            #   @return [String, nil]
            optional :description, String

            # @!attribute name
            #   Specify the name of the line item for the threshold charge. If left blank, it
            #   will default to the commit product name.
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute product_id
            #   The commit product that will be used to generate the line item for commit
            #   payment.
            #
            #   @return [String, nil]
            optional :product_id, String

            # @!method initialize(description: nil, name: nil, product_id: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::Commit}
            #   for more details.
            #
            #   @param description [String]
            #
            #   @param name [String] Specify the name of the line item for the threshold charge. If left blank, it wi
            #
            #   @param product_id [String] The commit product that will be used to generate the line item for commit paymen
          end

          # @see MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration#payment_gate_config
          class PaymentGateConfig < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute payment_gate_type
            #   Gate access to the commit balance based on successful collection of payment.
            #   Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
            #   facilitate payment using your own payment integration. Select NONE if you do not
            #   wish to payment gate the commit balance.
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::PaymentGateType]
            required :payment_gate_type,
                     enum: -> {
                       MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::PaymentGateType
                     }

            # @!attribute stripe_config
            #   Only applicable if using Stripe as your payment gateway through Metronome.
            #
            #   @return [MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::StripeConfig, nil]
            optional :stripe_config,
                     -> {
                       MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::StripeConfig
                     }

            # @!attribute tax_type
            #   Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
            #   not wish Metronome to calculate tax on your behalf. Leaving this field blank
            #   will default to NONE.
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::TaxType, nil]
            optional :tax_type,
                     enum: -> {
                       MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::TaxType
                     }

            # @!method initialize(payment_gate_type:, stripe_config: nil, tax_type: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig}
            #   for more details.
            #
            #   @param payment_gate_type [Symbol, MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::PaymentGateType] Gate access to the commit balance based on successful collection of payment. Sel
            #
            #   @param stripe_config [MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::StripeConfig] Only applicable if using Stripe as your payment gateway through Metronome.
            #
            #   @param tax_type [Symbol, MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::TaxType] Stripe tax is only supported for Stripe payment gateway. Select NONE if you do n

            # Gate access to the commit balance based on successful collection of payment.
            # Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
            # facilitate payment using your own payment integration. Select NONE if you do not
            # wish to payment gate the commit balance.
            #
            # @see MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig#payment_gate_type
            module PaymentGateType
              extend MetronomeSDK::Internal::Type::Enum

              NONE = :NONE
              STRIPE = :STRIPE
              EXTERNAL = :EXTERNAL

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig#stripe_config
            class StripeConfig < MetronomeSDK::Internal::Type::BaseModel
              # @!attribute payment_type
              #   If left blank, will default to INVOICE
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType]
              required :payment_type,
                       enum: -> {
                         MetronomeSDK::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType
                       }

              # @!method initialize(payment_type:)
              #   Only applicable if using Stripe as your payment gateway through Metronome.
              #
              #   @param payment_type [Symbol, MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType] If left blank, will default to INVOICE

              # If left blank, will default to INVOICE
              #
              # @see MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::StripeConfig#payment_type
              module PaymentType
                extend MetronomeSDK::Internal::Type::Enum

                INVOICE = :INVOICE
                PAYMENT_INTENT = :PAYMENT_INTENT

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
            # not wish Metronome to calculate tax on your behalf. Leaving this field blank
            # will default to NONE.
            #
            # @see MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig#tax_type
            module TaxType
              extend MetronomeSDK::Internal::Type::Enum

              NONE = :NONE
              STRIPE = :STRIPE

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end

        class UpdateSubscription < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute subscription_id
          #
          #   @return [String]
          required :subscription_id, String

          # @!attribute ending_before
          #
          #   @return [Time, nil]
          optional :ending_before, Time, nil?: true

          # @!attribute quantity_updates
          #   Quantity changes are applied on the effective date based on the order which they
          #   are sent. For example, if I scheduled the quantity to be 12 on May 21 and then
          #   scheduled a quantity delta change of -1, the result from that day would be 11.
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateSubscription::QuantityUpdate>, nil]
          optional :quantity_updates,
                   -> {
                     MetronomeSDK::Internal::Type::ArrayOf[MetronomeSDK::V2::ContractEditParams::UpdateSubscription::QuantityUpdate]
                   }

          # @!method initialize(subscription_id:, ending_before: nil, quantity_updates: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V2::ContractEditParams::UpdateSubscription} for more
          #   details.
          #
          #   @param subscription_id [String]
          #
          #   @param ending_before [Time, nil]
          #
          #   @param quantity_updates [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateSubscription::QuantityUpdate>] Quantity changes are applied on the effective date based on the order which they

          class QuantityUpdate < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute starting_at
            #
            #   @return [Time]
            required :starting_at, Time

            # @!attribute quantity
            #   The new quantity for the subscription. Must be provided if quantity_delta is not
            #   provided. Must be non-negative.
            #
            #   @return [Float, nil]
            optional :quantity, Float

            # @!attribute quantity_delta
            #   The delta to add to the subscription's quantity. Must be provided if quantity is
            #   not provided. Can't be zero. It also can't result in a negative quantity on the
            #   subscription.
            #
            #   @return [Float, nil]
            optional :quantity_delta, Float

            # @!method initialize(starting_at:, quantity: nil, quantity_delta: nil)
            #   Some parameter documentations has been truncated, see
            #   {MetronomeSDK::Models::V2::ContractEditParams::UpdateSubscription::QuantityUpdate}
            #   for more details.
            #
            #   @param starting_at [Time]
            #
            #   @param quantity [Float] The new quantity for the subscription. Must be provided if quantity_delta is not
            #
            #   @param quantity_delta [Float] The delta to add to the subscription's quantity. Must be provided if quantity is
          end
        end
      end
    end
  end
end
