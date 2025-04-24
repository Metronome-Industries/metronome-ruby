# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V2
      class ContractEditParams < MetronomeSDK::BaseModel
        # @!parse
        #   extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

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

        # @!attribute [r] add_commits
        #
        #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddCommit>, nil]
        optional :add_commits,
                 -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractEditParams::AddCommit] }

        # @!parse
        #   # @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddCommit>]
        #   attr_writer :add_commits

        # @!attribute [r] add_credits
        #
        #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddCredit>, nil]
        optional :add_credits,
                 -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractEditParams::AddCredit] }

        # @!parse
        #   # @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddCredit>]
        #   attr_writer :add_credits

        # @!attribute [r] add_discounts
        #
        #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddDiscount>, nil]
        optional :add_discounts,
                 -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractEditParams::AddDiscount] }

        # @!parse
        #   # @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddDiscount>]
        #   attr_writer :add_discounts

        # @!attribute [r] add_overrides
        #
        #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddOverride>, nil]
        optional :add_overrides,
                 -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractEditParams::AddOverride] }

        # @!parse
        #   # @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddOverride>]
        #   attr_writer :add_overrides

        # @!attribute [r] add_professional_services
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddProfessionalService>, nil]
        optional :add_professional_services,
                 -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractEditParams::AddProfessionalService] }

        # @!parse
        #   # @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddProfessionalService>]
        #   attr_writer :add_professional_services

        # @!attribute [r] add_recurring_commits
        #
        #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit>, nil]
        optional :add_recurring_commits,
                 -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit] }

        # @!parse
        #   # @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit>]
        #   attr_writer :add_recurring_commits

        # @!attribute [r] add_recurring_credits
        #
        #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit>, nil]
        optional :add_recurring_credits,
                 -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit] }

        # @!parse
        #   # @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit>]
        #   attr_writer :add_recurring_credits

        # @!attribute [r] add_reseller_royalties
        #
        #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddResellerRoyalty>, nil]
        optional :add_reseller_royalties,
                 -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractEditParams::AddResellerRoyalty] }

        # @!parse
        #   # @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddResellerRoyalty>]
        #   attr_writer :add_reseller_royalties

        # @!attribute [r] add_scheduled_charges
        #
        #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge>, nil]
        optional :add_scheduled_charges,
                 -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge] }

        # @!parse
        #   # @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge>]
        #   attr_writer :add_scheduled_charges

        # @!attribute [r] add_spend_threshold_configuration
        #
        #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration, nil]
        optional :add_spend_threshold_configuration,
                 -> { MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration }

        # @!parse
        #   # @return [MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration]
        #   attr_writer :add_spend_threshold_configuration

        # @!attribute [r] archive_commits
        #   IDs of commits to archive
        #
        #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::ArchiveCommit>, nil]
        optional :archive_commits,
                 -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractEditParams::ArchiveCommit] }

        # @!parse
        #   # @return [Array<MetronomeSDK::Models::V2::ContractEditParams::ArchiveCommit>]
        #   attr_writer :archive_commits

        # @!attribute [r] archive_credits
        #   IDs of credits to archive
        #
        #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::ArchiveCredit>, nil]
        optional :archive_credits,
                 -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractEditParams::ArchiveCredit] }

        # @!parse
        #   # @return [Array<MetronomeSDK::Models::V2::ContractEditParams::ArchiveCredit>]
        #   attr_writer :archive_credits

        # @!attribute [r] archive_scheduled_charges
        #   IDs of scheduled charges to archive
        #
        #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::ArchiveScheduledCharge>, nil]
        optional :archive_scheduled_charges,
                 -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractEditParams::ArchiveScheduledCharge] }

        # @!parse
        #   # @return [Array<MetronomeSDK::Models::V2::ContractEditParams::ArchiveScheduledCharge>]
        #   attr_writer :archive_scheduled_charges

        # @!attribute [r] remove_overrides
        #   IDs of overrides to remove
        #
        #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::RemoveOverride>, nil]
        optional :remove_overrides,
                 -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractEditParams::RemoveOverride] }

        # @!parse
        #   # @return [Array<MetronomeSDK::Models::V2::ContractEditParams::RemoveOverride>]
        #   attr_writer :remove_overrides

        # @!attribute [r] update_commits
        #
        #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit>, nil]
        optional :update_commits,
                 -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit] }

        # @!parse
        #   # @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit>]
        #   attr_writer :update_commits

        # @!attribute [r] update_credits
        #
        #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit>, nil]
        optional :update_credits,
                 -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit] }

        # @!parse
        #   # @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit>]
        #   attr_writer :update_credits

        # @!attribute [r] update_scheduled_charges
        #
        #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge>, nil]
        optional :update_scheduled_charges,
                 -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge] }

        # @!parse
        #   # @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge>]
        #   attr_writer :update_scheduled_charges

        # @!attribute [r] update_spend_threshold_configuration
        #
        #   @return [MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration, nil]
        optional :update_spend_threshold_configuration,
                 -> { MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration }

        # @!parse
        #   # @return [MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration]
        #   attr_writer :update_spend_threshold_configuration

        # @!parse
        #   # @param contract_id [String]
        #   # @param customer_id [String]
        #   # @param add_commits [Array<MetronomeSDK::Models::V2::ContractEditParams::AddCommit>]
        #   # @param add_credits [Array<MetronomeSDK::Models::V2::ContractEditParams::AddCredit>]
        #   # @param add_discounts [Array<MetronomeSDK::Models::V2::ContractEditParams::AddDiscount>]
        #   # @param add_overrides [Array<MetronomeSDK::Models::V2::ContractEditParams::AddOverride>]
        #   # @param add_professional_services [Array<MetronomeSDK::Models::V2::ContractEditParams::AddProfessionalService>]
        #   # @param add_recurring_commits [Array<MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit>]
        #   # @param add_recurring_credits [Array<MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit>]
        #   # @param add_reseller_royalties [Array<MetronomeSDK::Models::V2::ContractEditParams::AddResellerRoyalty>]
        #   # @param add_scheduled_charges [Array<MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge>]
        #   # @param add_spend_threshold_configuration [MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration]
        #   # @param archive_commits [Array<MetronomeSDK::Models::V2::ContractEditParams::ArchiveCommit>]
        #   # @param archive_credits [Array<MetronomeSDK::Models::V2::ContractEditParams::ArchiveCredit>]
        #   # @param archive_scheduled_charges [Array<MetronomeSDK::Models::V2::ContractEditParams::ArchiveScheduledCharge>]
        #   # @param remove_overrides [Array<MetronomeSDK::Models::V2::ContractEditParams::RemoveOverride>]
        #   # @param update_commits [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit>]
        #   # @param update_credits [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit>]
        #   # @param update_scheduled_charges [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge>]
        #   # @param update_spend_threshold_configuration [MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration]
        #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(
        #     contract_id:,
        #     customer_id:,
        #     add_commits: nil,
        #     add_credits: nil,
        #     add_discounts: nil,
        #     add_overrides: nil,
        #     add_professional_services: nil,
        #     add_recurring_commits: nil,
        #     add_recurring_credits: nil,
        #     add_reseller_royalties: nil,
        #     add_scheduled_charges: nil,
        #     add_spend_threshold_configuration: nil,
        #     archive_commits: nil,
        #     archive_credits: nil,
        #     archive_scheduled_charges: nil,
        #     remove_overrides: nil,
        #     update_commits: nil,
        #     update_credits: nil,
        #     update_scheduled_charges: nil,
        #     update_spend_threshold_configuration: nil,
        #     request_options: {},
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

        class AddCommit < MetronomeSDK::BaseModel
          # @!attribute product_id
          #
          #   @return [String]
          required :product_id, String

          # @!attribute type
          #
          #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddCommit::Type]
          required :type, enum: -> { MetronomeSDK::Models::V2::ContractEditParams::AddCommit::Type }

          # @!attribute [r] access_schedule
          #   Required: Schedule for distributing the commit to the customer. For "POSTPAID"
          #     commits only one schedule item is allowed and amount must match invoice_schedule
          #     total.
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddCommit::AccessSchedule, nil]
          optional :access_schedule, -> { MetronomeSDK::Models::V2::ContractEditParams::AddCommit::AccessSchedule }

          # @!parse
          #   # @return [MetronomeSDK::Models::V2::ContractEditParams::AddCommit::AccessSchedule]
          #   attr_writer :access_schedule

          # @!attribute [r] amount
          #   (DEPRECATED) Use access_schedule and invoice_schedule instead.
          #
          #   @return [Float, nil]
          optional :amount, Float

          # @!parse
          #   # @return [Float]
          #   attr_writer :amount

          # @!attribute [r] applicable_product_ids
          #   Which products the commit applies to. If both applicable_product_ids and
          #     applicable_product_tags are not provided, the commit applies to all products.
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_ids, MetronomeSDK::ArrayOf[String]

          # @!parse
          #   # @return [Array<String>]
          #   attr_writer :applicable_product_ids

          # @!attribute [r] applicable_product_tags
          #   Which tags the commit applies to. If both applicable_product_ids and
          #     applicable_product_tags are not provided, the commit applies to all products.
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_tags, MetronomeSDK::ArrayOf[String]

          # @!parse
          #   # @return [Array<String>]
          #   attr_writer :applicable_product_tags

          # @!attribute [r] custom_fields
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :custom_fields, MetronomeSDK::HashOf[String]

          # @!parse
          #   # @return [Hash{Symbol=>String}]
          #   attr_writer :custom_fields

          # @!attribute [r] description
          #   Used only in UI/API. It is not exposed to end customers.
          #
          #   @return [String, nil]
          optional :description, String

          # @!parse
          #   # @return [String]
          #   attr_writer :description

          # @!attribute [r] invoice_schedule
          #   Required for "POSTPAID" commits: the true up invoice will be generated at this
          #     time and only one schedule item is allowed; the total must match access_schedule
          #     amount. Optional for "PREPAID" commits: if not provided, this will be a
          #     "complimentary" commit with no invoice.
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule, nil]
          optional :invoice_schedule,
                   -> { MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule }

          # @!parse
          #   # @return [MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule]
          #   attr_writer :invoice_schedule

          # @!attribute [r] name
          #   displayed on invoices
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

          # @!attribute [r] payment_gate_config
          #   optionally payment gate this commit
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddCommit::PaymentGateConfig, nil]
          optional :payment_gate_config,
                   -> { MetronomeSDK::Models::V2::ContractEditParams::AddCommit::PaymentGateConfig }

          # @!parse
          #   # @return [MetronomeSDK::Models::V2::ContractEditParams::AddCommit::PaymentGateConfig]
          #   attr_writer :payment_gate_config

          # @!attribute [r] priority
          #   If multiple commits are applicable, the one with the lower priority will apply
          #     first.
          #
          #   @return [Float, nil]
          optional :priority, Float

          # @!parse
          #   # @return [Float]
          #   attr_writer :priority

          # @!attribute [r] rate_type
          #
          #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddCommit::RateType, nil]
          optional :rate_type, enum: -> { MetronomeSDK::Models::V2::ContractEditParams::AddCommit::RateType }

          # @!parse
          #   # @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddCommit::RateType]
          #   attr_writer :rate_type

          # @!attribute [r] rollover_fraction
          #   Fraction of unused segments that will be rolled over. Must be between 0 and 1.
          #
          #   @return [Float, nil]
          optional :rollover_fraction, Float

          # @!parse
          #   # @return [Float]
          #   attr_writer :rollover_fraction

          # @!attribute [r] temporary_id
          #   A temporary ID for the commit that can be used to reference the commit for
          #     commit specific overrides.
          #
          #   @return [String, nil]
          optional :temporary_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :temporary_id

          # @!parse
          #   # @param product_id [String]
          #   # @param type [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddCommit::Type]
          #   # @param access_schedule [MetronomeSDK::Models::V2::ContractEditParams::AddCommit::AccessSchedule]
          #   # @param amount [Float]
          #   # @param applicable_product_ids [Array<String>]
          #   # @param applicable_product_tags [Array<String>]
          #   # @param custom_fields [Hash{Symbol=>String}]
          #   # @param description [String]
          #   # @param invoice_schedule [MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule]
          #   # @param name [String]
          #   # @param netsuite_sales_order_id [String]
          #   # @param payment_gate_config [MetronomeSDK::Models::V2::ContractEditParams::AddCommit::PaymentGateConfig]
          #   # @param priority [Float]
          #   # @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddCommit::RateType]
          #   # @param rollover_fraction [Float]
          #   # @param temporary_id [String]
          #   #
          #   def initialize(
          #     product_id:,
          #     type:,
          #     access_schedule: nil,
          #     amount: nil,
          #     applicable_product_ids: nil,
          #     applicable_product_tags: nil,
          #     custom_fields: nil,
          #     description: nil,
          #     invoice_schedule: nil,
          #     name: nil,
          #     netsuite_sales_order_id: nil,
          #     payment_gate_config: nil,
          #     priority: nil,
          #     rate_type: nil,
          #     rollover_fraction: nil,
          #     temporary_id: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

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
          class Type < MetronomeSDK::Enum
            PREPAID = :PREPAID
            POSTPAID = :POSTPAID

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end

          class AccessSchedule < MetronomeSDK::BaseModel
            # @!attribute schedule_items
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddCommit::AccessSchedule::ScheduleItem>]
            required :schedule_items,
                     -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractEditParams::AddCommit::AccessSchedule::ScheduleItem] }

            # @!attribute [r] credit_type_id
            #
            #   @return [String, nil]
            optional :credit_type_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :credit_type_id

            # @!parse
            #   # Required: Schedule for distributing the commit to the customer. For "POSTPAID"
            #   #   commits only one schedule item is allowed and amount must match invoice_schedule
            #   #   total.
            #   #
            #   # @param schedule_items [Array<MetronomeSDK::Models::V2::ContractEditParams::AddCommit::AccessSchedule::ScheduleItem>]
            #   # @param credit_type_id [String]
            #   #
            #   def initialize(schedule_items:, credit_type_id: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class ScheduleItem < MetronomeSDK::BaseModel
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

              # @!parse
              #   # @param amount [Float]
              #   # @param ending_before [Time]
              #   # @param starting_at [Time]
              #   #
              #   def initialize(amount:, ending_before:, starting_at:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end
          end

          class InvoiceSchedule < MetronomeSDK::BaseModel
            # @!attribute [r] credit_type_id
            #   Defaults to USD if not passed. Only USD is supported at this time.
            #
            #   @return [String, nil]
            optional :credit_type_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :credit_type_id

            # @!attribute [r] recurring_schedule
            #   Enter the unit price and quantity for the charge or instead only send the
            #     amount. If amount is sent, the unit price is assumed to be the amount and
            #     quantity is inferred to be 1.
            #
            #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule, nil]
            optional :recurring_schedule,
                     -> { MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule }

            # @!parse
            #   # @return [MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule]
            #   attr_writer :recurring_schedule

            # @!attribute [r] schedule_items
            #   Either provide amount or provide both unit_price and quantity.
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule::ScheduleItem>, nil]
            optional :schedule_items,
                     -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule::ScheduleItem] }

            # @!parse
            #   # @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule::ScheduleItem>]
            #   attr_writer :schedule_items

            # @!parse
            #   # Required for "POSTPAID" commits: the true up invoice will be generated at this
            #   #   time and only one schedule item is allowed; the total must match access_schedule
            #   #   amount. Optional for "PREPAID" commits: if not provided, this will be a
            #   #   "complimentary" commit with no invoice.
            #   #
            #   # @param credit_type_id [String]
            #   # @param recurring_schedule [MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule]
            #   # @param schedule_items [Array<MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule::ScheduleItem>]
            #   #
            #   def initialize(credit_type_id: nil, recurring_schedule: nil, schedule_items: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class RecurringSchedule < MetronomeSDK::BaseModel
              # @!attribute amount_distribution
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule::AmountDistribution]
              required :amount_distribution,
                       enum: -> { MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule::AmountDistribution }

              # @!attribute ending_before
              #   RFC 3339 timestamp (exclusive).
              #
              #   @return [Time]
              required :ending_before, Time

              # @!attribute frequency
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule::Frequency]
              required :frequency,
                       enum: -> { MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule::Frequency }

              # @!attribute starting_at
              #   RFC 3339 timestamp (inclusive).
              #
              #   @return [Time]
              required :starting_at, Time

              # @!attribute [r] amount
              #   Amount for the charge. Can be provided instead of unit_price and quantity. If
              #     amount is sent, the unit_price is assumed to be the amount and quantity is
              #     inferred to be 1.
              #
              #   @return [Float, nil]
              optional :amount, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :amount

              # @!attribute [r] quantity
              #   Quantity for the charge. Will be multiplied by unit_price to determine the
              #     amount and must be specified with unit_price. If specified amount cannot be
              #     provided.
              #
              #   @return [Float, nil]
              optional :quantity, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :quantity

              # @!attribute [r] unit_price
              #   Unit price for the charge. Will be multiplied by quantity to determine the
              #     amount and must be specified with quantity. If specified amount cannot be
              #     provided.
              #
              #   @return [Float, nil]
              optional :unit_price, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :unit_price

              # @!parse
              #   # Enter the unit price and quantity for the charge or instead only send the
              #   #   amount. If amount is sent, the unit price is assumed to be the amount and
              #   #   quantity is inferred to be 1.
              #   #
              #   # @param amount_distribution [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule::AmountDistribution]
              #   # @param ending_before [Time]
              #   # @param frequency [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddCommit::InvoiceSchedule::RecurringSchedule::Frequency]
              #   # @param starting_at [Time]
              #   # @param amount [Float]
              #   # @param quantity [Float]
              #   # @param unit_price [Float]
              #   #
              #   def initialize(
              #     amount_distribution:,
              #     ending_before:,
              #     frequency:,
              #     starting_at:,
              #     amount: nil,
              #     quantity: nil,
              #     unit_price: nil,
              #     **
              #   )
              #     super
              #   end

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

              # @abstract
              #
              # @example
              # ```ruby
              # case amount_distribution
              # in :DIVIDED
              #   # ...
              # in :DIVIDED_ROUNDED
              #   # ...
              # in :EACH
              #   # ...
              # end
              # ```
              class AmountDistribution < MetronomeSDK::Enum
                DIVIDED = :DIVIDED
                DIVIDED_ROUNDED = :DIVIDED_ROUNDED
                EACH = :EACH

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end

              # @abstract
              #
              # @example
              # ```ruby
              # case frequency
              # in :MONTHLY
              #   # ...
              # in :QUARTERLY
              #   # ...
              # in :SEMI_ANNUAL
              #   # ...
              # in :ANNUAL
              #   # ...
              # in :WEEKLY
              #   # ...
              # end
              # ```
              class Frequency < MetronomeSDK::Enum
                MONTHLY = :MONTHLY
                QUARTERLY = :QUARTERLY
                SEMI_ANNUAL = :SEMI_ANNUAL
                ANNUAL = :ANNUAL
                WEEKLY = :WEEKLY

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class ScheduleItem < MetronomeSDK::BaseModel
              # @!attribute timestamp
              #   timestamp of the scheduled event
              #
              #   @return [Time]
              required :timestamp, Time

              # @!attribute [r] amount
              #   Amount for the charge. Can be provided instead of unit_price and quantity. If
              #     amount is sent, the unit_price is assumed to be the amount and quantity is
              #     inferred to be 1.
              #
              #   @return [Float, nil]
              optional :amount, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :amount

              # @!attribute [r] quantity
              #   Quantity for the charge. Will be multiplied by unit_price to determine the
              #     amount and must be specified with unit_price. If specified amount cannot be
              #     provided.
              #
              #   @return [Float, nil]
              optional :quantity, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :quantity

              # @!attribute [r] unit_price
              #   Unit price for the charge. Will be multiplied by quantity to determine the
              #     amount and must be specified with quantity. If specified amount cannot be
              #     provided.
              #
              #   @return [Float, nil]
              optional :unit_price, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :unit_price

              # @!parse
              #   # @param timestamp [Time]
              #   # @param amount [Float]
              #   # @param quantity [Float]
              #   # @param unit_price [Float]
              #   #
              #   def initialize(timestamp:, amount: nil, quantity: nil, unit_price: nil, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end
          end

          class PaymentGateConfig < MetronomeSDK::BaseModel
            # @!attribute payment_gate_type
            #   Gate access to the commit balance based on successful collection of payment.
            #     Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
            #     facilitate payment using your own payment integration. Select NONE if you do not
            #     wish to payment gate the commit balance.
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddCommit::PaymentGateConfig::PaymentGateType]
            required :payment_gate_type,
                     enum: -> { MetronomeSDK::Models::V2::ContractEditParams::AddCommit::PaymentGateConfig::PaymentGateType }

            # @!attribute [r] stripe_config
            #   Only applicable if using Stripe as your payment gateway through Metronome.
            #
            #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddCommit::PaymentGateConfig::StripeConfig, nil]
            optional :stripe_config,
                     -> { MetronomeSDK::Models::V2::ContractEditParams::AddCommit::PaymentGateConfig::StripeConfig }

            # @!parse
            #   # @return [MetronomeSDK::Models::V2::ContractEditParams::AddCommit::PaymentGateConfig::StripeConfig]
            #   attr_writer :stripe_config

            # @!attribute [r] tax_type
            #   Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
            #     not wish Metronome to calculate tax on your behalf. Leaving this field blank
            #     will default to NONE.
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddCommit::PaymentGateConfig::TaxType, nil]
            optional :tax_type,
                     enum: -> { MetronomeSDK::Models::V2::ContractEditParams::AddCommit::PaymentGateConfig::TaxType }

            # @!parse
            #   # @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddCommit::PaymentGateConfig::TaxType]
            #   attr_writer :tax_type

            # @!parse
            #   # optionally payment gate this commit
            #   #
            #   # @param payment_gate_type [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddCommit::PaymentGateConfig::PaymentGateType]
            #   # @param stripe_config [MetronomeSDK::Models::V2::ContractEditParams::AddCommit::PaymentGateConfig::StripeConfig]
            #   # @param tax_type [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddCommit::PaymentGateConfig::TaxType]
            #   #
            #   def initialize(payment_gate_type:, stripe_config: nil, tax_type: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            # @abstract
            #
            # Gate access to the commit balance based on successful collection of payment.
            #   Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
            #   facilitate payment using your own payment integration. Select NONE if you do not
            #   wish to payment gate the commit balance.
            #
            # @example
            # ```ruby
            # case payment_gate_type
            # in :NONE
            #   # ...
            # in :STRIPE
            #   # ...
            # in :EXTERNAL
            #   # ...
            # end
            # ```
            class PaymentGateType < MetronomeSDK::Enum
              NONE = :NONE
              STRIPE = :STRIPE
              EXTERNAL = :EXTERNAL

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class StripeConfig < MetronomeSDK::BaseModel
              # @!attribute payment_type
              #   If left blank, will default to INVOICE
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddCommit::PaymentGateConfig::StripeConfig::PaymentType]
              required :payment_type,
                       enum: -> { MetronomeSDK::Models::V2::ContractEditParams::AddCommit::PaymentGateConfig::StripeConfig::PaymentType }

              # @!parse
              #   # Only applicable if using Stripe as your payment gateway through Metronome.
              #   #
              #   # @param payment_type [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddCommit::PaymentGateConfig::StripeConfig::PaymentType]
              #   #
              #   def initialize(payment_type:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

              # @abstract
              #
              # If left blank, will default to INVOICE
              #
              # @example
              # ```ruby
              # case payment_type
              # in :INVOICE
              #   # ...
              # in :PAYMENT_INTENT
              #   # ...
              # end
              # ```
              class PaymentType < MetronomeSDK::Enum
                INVOICE = :INVOICE
                PAYMENT_INTENT = :PAYMENT_INTENT

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            # @abstract
            #
            # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
            #   not wish Metronome to calculate tax on your behalf. Leaving this field blank
            #   will default to NONE.
            #
            # @example
            # ```ruby
            # case tax_type
            # in :NONE
            #   # ...
            # in :STRIPE
            #   # ...
            # end
            # ```
            class TaxType < MetronomeSDK::Enum
              NONE = :NONE
              STRIPE = :STRIPE

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
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
          class RateType < MetronomeSDK::Enum
            COMMIT_RATE = :COMMIT_RATE
            LIST_RATE = :LIST_RATE

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        class AddCredit < MetronomeSDK::BaseModel
          # @!attribute access_schedule
          #   Schedule for distributing the credit to the customer.
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddCredit::AccessSchedule]
          required :access_schedule, -> { MetronomeSDK::Models::V2::ContractEditParams::AddCredit::AccessSchedule }

          # @!attribute product_id
          #
          #   @return [String]
          required :product_id, String

          # @!attribute [r] applicable_product_ids
          #   Which products the credit applies to. If both applicable_product_ids and
          #     applicable_product_tags are not provided, the credit applies to all products.
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_ids, MetronomeSDK::ArrayOf[String]

          # @!parse
          #   # @return [Array<String>]
          #   attr_writer :applicable_product_ids

          # @!attribute [r] applicable_product_tags
          #   Which tags the credit applies to. If both applicable_product_ids and
          #     applicable_product_tags are not provided, the credit applies to all products.
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_tags, MetronomeSDK::ArrayOf[String]

          # @!parse
          #   # @return [Array<String>]
          #   attr_writer :applicable_product_tags

          # @!attribute [r] custom_fields
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :custom_fields, MetronomeSDK::HashOf[String]

          # @!parse
          #   # @return [Hash{Symbol=>String}]
          #   attr_writer :custom_fields

          # @!attribute [r] description
          #   Used only in UI/API. It is not exposed to end customers.
          #
          #   @return [String, nil]
          optional :description, String

          # @!parse
          #   # @return [String]
          #   attr_writer :description

          # @!attribute [r] name
          #   displayed on invoices
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
          #   If multiple credits are applicable, the one with the lower priority will apply
          #     first.
          #
          #   @return [Float, nil]
          optional :priority, Float

          # @!parse
          #   # @return [Float]
          #   attr_writer :priority

          # @!attribute [r] rate_type
          #
          #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddCredit::RateType, nil]
          optional :rate_type, enum: -> { MetronomeSDK::Models::V2::ContractEditParams::AddCredit::RateType }

          # @!parse
          #   # @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddCredit::RateType]
          #   attr_writer :rate_type

          # @!parse
          #   # @param access_schedule [MetronomeSDK::Models::V2::ContractEditParams::AddCredit::AccessSchedule]
          #   # @param product_id [String]
          #   # @param applicable_product_ids [Array<String>]
          #   # @param applicable_product_tags [Array<String>]
          #   # @param custom_fields [Hash{Symbol=>String}]
          #   # @param description [String]
          #   # @param name [String]
          #   # @param netsuite_sales_order_id [String]
          #   # @param priority [Float]
          #   # @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddCredit::RateType]
          #   #
          #   def initialize(
          #     access_schedule:,
          #     product_id:,
          #     applicable_product_ids: nil,
          #     applicable_product_tags: nil,
          #     custom_fields: nil,
          #     description: nil,
          #     name: nil,
          #     netsuite_sales_order_id: nil,
          #     priority: nil,
          #     rate_type: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          class AccessSchedule < MetronomeSDK::BaseModel
            # @!attribute schedule_items
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddCredit::AccessSchedule::ScheduleItem>]
            required :schedule_items,
                     -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractEditParams::AddCredit::AccessSchedule::ScheduleItem] }

            # @!attribute [r] credit_type_id
            #
            #   @return [String, nil]
            optional :credit_type_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :credit_type_id

            # @!parse
            #   # Schedule for distributing the credit to the customer.
            #   #
            #   # @param schedule_items [Array<MetronomeSDK::Models::V2::ContractEditParams::AddCredit::AccessSchedule::ScheduleItem>]
            #   # @param credit_type_id [String]
            #   #
            #   def initialize(schedule_items:, credit_type_id: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class ScheduleItem < MetronomeSDK::BaseModel
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

              # @!parse
              #   # @param amount [Float]
              #   # @param ending_before [Time]
              #   # @param starting_at [Time]
              #   #
              #   def initialize(amount:, ending_before:, starting_at:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
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
          class RateType < MetronomeSDK::Enum
            COMMIT_RATE = :COMMIT_RATE
            LIST_RATE = :LIST_RATE

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        class AddDiscount < MetronomeSDK::BaseModel
          # @!attribute product_id
          #
          #   @return [String]
          required :product_id, String

          # @!attribute schedule
          #   Must provide either schedule_items or recurring_schedule.
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule]
          required :schedule, -> { MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule }

          # @!attribute [r] custom_fields
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :custom_fields, MetronomeSDK::HashOf[String]

          # @!parse
          #   # @return [Hash{Symbol=>String}]
          #   attr_writer :custom_fields

          # @!attribute [r] name
          #   displayed on invoices
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

          # @!parse
          #   # @param product_id [String]
          #   # @param schedule [MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule]
          #   # @param custom_fields [Hash{Symbol=>String}]
          #   # @param name [String]
          #   # @param netsuite_sales_order_id [String]
          #   #
          #   def initialize(product_id:, schedule:, custom_fields: nil, name: nil, netsuite_sales_order_id: nil, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          class Schedule < MetronomeSDK::BaseModel
            # @!attribute [r] credit_type_id
            #   Defaults to USD if not passed. Only USD is supported at this time.
            #
            #   @return [String, nil]
            optional :credit_type_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :credit_type_id

            # @!attribute [r] recurring_schedule
            #   Enter the unit price and quantity for the charge or instead only send the
            #     amount. If amount is sent, the unit price is assumed to be the amount and
            #     quantity is inferred to be 1.
            #
            #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule, nil]
            optional :recurring_schedule,
                     -> { MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule }

            # @!parse
            #   # @return [MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule]
            #   attr_writer :recurring_schedule

            # @!attribute [r] schedule_items
            #   Either provide amount or provide both unit_price and quantity.
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule::ScheduleItem>, nil]
            optional :schedule_items,
                     -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule::ScheduleItem] }

            # @!parse
            #   # @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule::ScheduleItem>]
            #   attr_writer :schedule_items

            # @!parse
            #   # Must provide either schedule_items or recurring_schedule.
            #   #
            #   # @param credit_type_id [String]
            #   # @param recurring_schedule [MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule]
            #   # @param schedule_items [Array<MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule::ScheduleItem>]
            #   #
            #   def initialize(credit_type_id: nil, recurring_schedule: nil, schedule_items: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class RecurringSchedule < MetronomeSDK::BaseModel
              # @!attribute amount_distribution
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule::AmountDistribution]
              required :amount_distribution,
                       enum: -> { MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule::AmountDistribution }

              # @!attribute ending_before
              #   RFC 3339 timestamp (exclusive).
              #
              #   @return [Time]
              required :ending_before, Time

              # @!attribute frequency
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule::Frequency]
              required :frequency,
                       enum: -> { MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule::Frequency }

              # @!attribute starting_at
              #   RFC 3339 timestamp (inclusive).
              #
              #   @return [Time]
              required :starting_at, Time

              # @!attribute [r] amount
              #   Amount for the charge. Can be provided instead of unit_price and quantity. If
              #     amount is sent, the unit_price is assumed to be the amount and quantity is
              #     inferred to be 1.
              #
              #   @return [Float, nil]
              optional :amount, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :amount

              # @!attribute [r] quantity
              #   Quantity for the charge. Will be multiplied by unit_price to determine the
              #     amount and must be specified with unit_price. If specified amount cannot be
              #     provided.
              #
              #   @return [Float, nil]
              optional :quantity, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :quantity

              # @!attribute [r] unit_price
              #   Unit price for the charge. Will be multiplied by quantity to determine the
              #     amount and must be specified with quantity. If specified amount cannot be
              #     provided.
              #
              #   @return [Float, nil]
              optional :unit_price, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :unit_price

              # @!parse
              #   # Enter the unit price and quantity for the charge or instead only send the
              #   #   amount. If amount is sent, the unit price is assumed to be the amount and
              #   #   quantity is inferred to be 1.
              #   #
              #   # @param amount_distribution [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule::AmountDistribution]
              #   # @param ending_before [Time]
              #   # @param frequency [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddDiscount::Schedule::RecurringSchedule::Frequency]
              #   # @param starting_at [Time]
              #   # @param amount [Float]
              #   # @param quantity [Float]
              #   # @param unit_price [Float]
              #   #
              #   def initialize(
              #     amount_distribution:,
              #     ending_before:,
              #     frequency:,
              #     starting_at:,
              #     amount: nil,
              #     quantity: nil,
              #     unit_price: nil,
              #     **
              #   )
              #     super
              #   end

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

              # @abstract
              #
              # @example
              # ```ruby
              # case amount_distribution
              # in :DIVIDED
              #   # ...
              # in :DIVIDED_ROUNDED
              #   # ...
              # in :EACH
              #   # ...
              # end
              # ```
              class AmountDistribution < MetronomeSDK::Enum
                DIVIDED = :DIVIDED
                DIVIDED_ROUNDED = :DIVIDED_ROUNDED
                EACH = :EACH

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end

              # @abstract
              #
              # @example
              # ```ruby
              # case frequency
              # in :MONTHLY
              #   # ...
              # in :QUARTERLY
              #   # ...
              # in :SEMI_ANNUAL
              #   # ...
              # in :ANNUAL
              #   # ...
              # in :WEEKLY
              #   # ...
              # end
              # ```
              class Frequency < MetronomeSDK::Enum
                MONTHLY = :MONTHLY
                QUARTERLY = :QUARTERLY
                SEMI_ANNUAL = :SEMI_ANNUAL
                ANNUAL = :ANNUAL
                WEEKLY = :WEEKLY

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class ScheduleItem < MetronomeSDK::BaseModel
              # @!attribute timestamp
              #   timestamp of the scheduled event
              #
              #   @return [Time]
              required :timestamp, Time

              # @!attribute [r] amount
              #   Amount for the charge. Can be provided instead of unit_price and quantity. If
              #     amount is sent, the unit_price is assumed to be the amount and quantity is
              #     inferred to be 1.
              #
              #   @return [Float, nil]
              optional :amount, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :amount

              # @!attribute [r] quantity
              #   Quantity for the charge. Will be multiplied by unit_price to determine the
              #     amount and must be specified with unit_price. If specified amount cannot be
              #     provided.
              #
              #   @return [Float, nil]
              optional :quantity, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :quantity

              # @!attribute [r] unit_price
              #   Unit price for the charge. Will be multiplied by quantity to determine the
              #     amount and must be specified with quantity. If specified amount cannot be
              #     provided.
              #
              #   @return [Float, nil]
              optional :unit_price, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :unit_price

              # @!parse
              #   # @param timestamp [Time]
              #   # @param amount [Float]
              #   # @param quantity [Float]
              #   # @param unit_price [Float]
              #   #
              #   def initialize(timestamp:, amount: nil, quantity: nil, unit_price: nil, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end
          end
        end

        class AddOverride < MetronomeSDK::BaseModel
          # @!attribute starting_at
          #   RFC 3339 timestamp indicating when the override will start applying (inclusive)
          #
          #   @return [Time]
          required :starting_at, Time

          # @!attribute [r] applicable_product_tags
          #   tags identifying products whose rates are being overridden
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_tags, MetronomeSDK::ArrayOf[String]

          # @!parse
          #   # @return [Array<String>]
          #   attr_writer :applicable_product_tags

          # @!attribute [r] ending_before
          #   RFC 3339 timestamp indicating when the override will stop applying (exclusive)
          #
          #   @return [Time, nil]
          optional :ending_before, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :ending_before

          # @!attribute [r] entitled
          #
          #   @return [Boolean, nil]
          optional :entitled, MetronomeSDK::BooleanModel

          # @!parse
          #   # @return [Boolean]
          #   attr_writer :entitled

          # @!attribute [r] is_commit_specific
          #   Indicates whether the override should only apply to commits. Defaults to
          #     `false`. If `true`, you can specify relevant commits in `override_specifiers` by
          #     passing `commit_ids`.
          #
          #   @return [Boolean, nil]
          optional :is_commit_specific, MetronomeSDK::BooleanModel

          # @!parse
          #   # @return [Boolean]
          #   attr_writer :is_commit_specific

          # @!attribute [r] multiplier
          #   Required for MULTIPLIER type. Must be >=0.
          #
          #   @return [Float, nil]
          optional :multiplier, Float

          # @!parse
          #   # @return [Float]
          #   attr_writer :multiplier

          # @!attribute [r] override_specifiers
          #   Cannot be used in conjunction with product_id or applicable_product_tags. If
          #     provided, the override will apply to all products with the specified specifiers.
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddOverride::OverrideSpecifier>, nil]
          optional :override_specifiers,
                   -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractEditParams::AddOverride::OverrideSpecifier] }

          # @!parse
          #   # @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddOverride::OverrideSpecifier>]
          #   attr_writer :override_specifiers

          # @!attribute [r] overwrite_rate
          #   Required for OVERWRITE type.
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddOverride::OverwriteRate, nil]
          optional :overwrite_rate, -> { MetronomeSDK::Models::V2::ContractEditParams::AddOverride::OverwriteRate }

          # @!parse
          #   # @return [MetronomeSDK::Models::V2::ContractEditParams::AddOverride::OverwriteRate]
          #   attr_writer :overwrite_rate

          # @!attribute [r] priority
          #   Required for EXPLICIT multiplier prioritization scheme and all TIERED overrides.
          #     Under EXPLICIT prioritization, overwrites are prioritized first, and then tiered
          #     and multiplier overrides are prioritized by their priority value (lowest first).
          #     Must be > 0.
          #
          #   @return [Float, nil]
          optional :priority, Float

          # @!parse
          #   # @return [Float]
          #   attr_writer :priority

          # @!attribute [r] product_id
          #   ID of the product whose rate is being overridden
          #
          #   @return [String, nil]
          optional :product_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :product_id

          # @!attribute [r] target
          #   Indicates whether the override applies to commit rates or list rates. Can only
          #     be used for overrides that have `is_commit_specific` set to `true`. Defaults to
          #     `"LIST_RATE"`.
          #
          #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddOverride::Target, nil]
          optional :target, enum: -> { MetronomeSDK::Models::V2::ContractEditParams::AddOverride::Target }

          # @!parse
          #   # @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddOverride::Target]
          #   attr_writer :target

          # @!attribute [r] tiers
          #   Required for TIERED type. Must have at least one tier.
          #
          #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddOverride::Tier>, nil]
          optional :tiers,
                   -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractEditParams::AddOverride::Tier] }

          # @!parse
          #   # @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddOverride::Tier>]
          #   attr_writer :tiers

          # @!attribute [r] type
          #   Overwrites are prioritized over multipliers and tiered overrides.
          #
          #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddOverride::Type, nil]
          optional :type, enum: -> { MetronomeSDK::Models::V2::ContractEditParams::AddOverride::Type }

          # @!parse
          #   # @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddOverride::Type]
          #   attr_writer :type

          # @!parse
          #   # @param starting_at [Time]
          #   # @param applicable_product_tags [Array<String>]
          #   # @param ending_before [Time]
          #   # @param entitled [Boolean]
          #   # @param is_commit_specific [Boolean]
          #   # @param multiplier [Float]
          #   # @param override_specifiers [Array<MetronomeSDK::Models::V2::ContractEditParams::AddOverride::OverrideSpecifier>]
          #   # @param overwrite_rate [MetronomeSDK::Models::V2::ContractEditParams::AddOverride::OverwriteRate]
          #   # @param priority [Float]
          #   # @param product_id [String]
          #   # @param target [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddOverride::Target]
          #   # @param tiers [Array<MetronomeSDK::Models::V2::ContractEditParams::AddOverride::Tier>]
          #   # @param type [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddOverride::Type]
          #   #
          #   def initialize(
          #     starting_at:,
          #     applicable_product_tags: nil,
          #     ending_before: nil,
          #     entitled: nil,
          #     is_commit_specific: nil,
          #     multiplier: nil,
          #     override_specifiers: nil,
          #     overwrite_rate: nil,
          #     priority: nil,
          #     product_id: nil,
          #     target: nil,
          #     tiers: nil,
          #     type: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          class OverrideSpecifier < MetronomeSDK::BaseModel
            # @!attribute [r] commit_ids
            #   If provided, the override will only apply to the specified commits. Can only be
            #     used for commit specific overrides. If not provided, the override will apply to
            #     all commits.
            #
            #   @return [Array<String>, nil]
            optional :commit_ids, MetronomeSDK::ArrayOf[String]

            # @!parse
            #   # @return [Array<String>]
            #   attr_writer :commit_ids

            # @!attribute [r] presentation_group_values
            #   A map of group names to values. The override will only apply to line items with
            #     the specified presentation group values. Can only be used for multiplier
            #     overrides.
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :presentation_group_values, MetronomeSDK::HashOf[String]

            # @!parse
            #   # @return [Hash{Symbol=>String}]
            #   attr_writer :presentation_group_values

            # @!attribute [r] pricing_group_values
            #   A map of pricing group names to values. The override will only apply to products
            #     with the specified pricing group values.
            #
            #   @return [Hash{Symbol=>String}, nil]
            optional :pricing_group_values, MetronomeSDK::HashOf[String]

            # @!parse
            #   # @return [Hash{Symbol=>String}]
            #   attr_writer :pricing_group_values

            # @!attribute [r] product_id
            #   If provided, the override will only apply to the product with the specified ID.
            #
            #   @return [String, nil]
            optional :product_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :product_id

            # @!attribute [r] product_tags
            #   If provided, the override will only apply to products with all the specified
            #     tags.
            #
            #   @return [Array<String>, nil]
            optional :product_tags, MetronomeSDK::ArrayOf[String]

            # @!parse
            #   # @return [Array<String>]
            #   attr_writer :product_tags

            # @!attribute [r] recurring_commit_ids
            #   Can only be used for commit specific overrides. Must be used in conjunction with
            #     one of product_id, product_tags, pricing_group_values, or
            #     presentation_group_values. If provided, the override will only apply to commits
            #     created by the specified recurring commit ids.
            #
            #   @return [Array<String>, nil]
            optional :recurring_commit_ids, MetronomeSDK::ArrayOf[String]

            # @!parse
            #   # @return [Array<String>]
            #   attr_writer :recurring_commit_ids

            # @!attribute [r] recurring_credit_ids
            #   Can only be used for commit specific overrides. Must be used in conjunction with
            #     one of product_id, product_tags, pricing_group_values, or
            #     presentation_group_values. If provided, the override will only apply to commits
            #     created by the specified recurring credit ids.
            #
            #   @return [Array<String>, nil]
            optional :recurring_credit_ids, MetronomeSDK::ArrayOf[String]

            # @!parse
            #   # @return [Array<String>]
            #   attr_writer :recurring_credit_ids

            # @!parse
            #   # @param commit_ids [Array<String>]
            #   # @param presentation_group_values [Hash{Symbol=>String}]
            #   # @param pricing_group_values [Hash{Symbol=>String}]
            #   # @param product_id [String]
            #   # @param product_tags [Array<String>]
            #   # @param recurring_commit_ids [Array<String>]
            #   # @param recurring_credit_ids [Array<String>]
            #   #
            #   def initialize(
            #     commit_ids: nil,
            #     presentation_group_values: nil,
            #     pricing_group_values: nil,
            #     product_id: nil,
            #     product_tags: nil,
            #     recurring_commit_ids: nil,
            #     recurring_credit_ids: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
          end

          class OverwriteRate < MetronomeSDK::BaseModel
            # @!attribute rate_type
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddOverride::OverwriteRate::RateType]
            required :rate_type,
                     enum: -> { MetronomeSDK::Models::V2::ContractEditParams::AddOverride::OverwriteRate::RateType }

            # @!attribute [r] credit_type_id
            #
            #   @return [String, nil]
            optional :credit_type_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :credit_type_id

            # @!attribute [r] custom_rate
            #   Only set for CUSTOM rate_type. This field is interpreted by custom rate
            #     processors.
            #
            #   @return [Hash{Symbol=>Object}, nil]
            optional :custom_rate, MetronomeSDK::HashOf[MetronomeSDK::Unknown]

            # @!parse
            #   # @return [Hash{Symbol=>Object}]
            #   attr_writer :custom_rate

            # @!attribute [r] is_prorated
            #   Default proration configuration. Only valid for SUBSCRIPTION rate_type. Must be
            #     set to true.
            #
            #   @return [Boolean, nil]
            optional :is_prorated, MetronomeSDK::BooleanModel

            # @!parse
            #   # @return [Boolean]
            #   attr_writer :is_prorated

            # @!attribute [r] price
            #   Default price. For FLAT rate_type, this must be >=0. For PERCENTAGE rate_type,
            #     this is a decimal fraction, e.g. use 0.1 for 10%; this must be >=0 and <=1.
            #
            #   @return [Float, nil]
            optional :price, Float

            # @!parse
            #   # @return [Float]
            #   attr_writer :price

            # @!attribute [r] quantity
            #   Default quantity. For SUBSCRIPTION rate_type, this must be >=0.
            #
            #   @return [Float, nil]
            optional :quantity, Float

            # @!parse
            #   # @return [Float]
            #   attr_writer :quantity

            # @!attribute [r] tiers
            #   Only set for TIERED rate_type.
            #
            #   @return [Array<MetronomeSDK::Models::Tier>, nil]
            optional :tiers, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::Tier] }

            # @!parse
            #   # @return [Array<MetronomeSDK::Models::Tier>]
            #   attr_writer :tiers

            # @!parse
            #   # Required for OVERWRITE type.
            #   #
            #   # @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddOverride::OverwriteRate::RateType]
            #   # @param credit_type_id [String]
            #   # @param custom_rate [Hash{Symbol=>Object}]
            #   # @param is_prorated [Boolean]
            #   # @param price [Float]
            #   # @param quantity [Float]
            #   # @param tiers [Array<MetronomeSDK::Models::Tier>]
            #   #
            #   def initialize(
            #     rate_type:,
            #     credit_type_id: nil,
            #     custom_rate: nil,
            #     is_prorated: nil,
            #     price: nil,
            #     quantity: nil,
            #     tiers: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            # @abstract
            #
            # @example
            # ```ruby
            # case rate_type
            # in :FLAT
            #   # ...
            # in :PERCENTAGE
            #   # ...
            # in :SUBSCRIPTION
            #   # ...
            # in :TIERED
            #   # ...
            # in :CUSTOM
            #   # ...
            # end
            # ```
            class RateType < MetronomeSDK::Enum
              FLAT = :FLAT
              PERCENTAGE = :PERCENTAGE
              SUBSCRIPTION = :SUBSCRIPTION
              TIERED = :TIERED
              CUSTOM = :CUSTOM

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          # @abstract
          #
          # Indicates whether the override applies to commit rates or list rates. Can only
          #   be used for overrides that have `is_commit_specific` set to `true`. Defaults to
          #   `"LIST_RATE"`.
          #
          # @example
          # ```ruby
          # case target
          # in :COMMIT_RATE
          #   # ...
          # in :LIST_RATE
          #   # ...
          # end
          # ```
          class Target < MetronomeSDK::Enum
            COMMIT_RATE = :COMMIT_RATE
            LIST_RATE = :LIST_RATE

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end

          class Tier < MetronomeSDK::BaseModel
            # @!attribute multiplier
            #
            #   @return [Float]
            required :multiplier, Float

            # @!attribute [r] size
            #
            #   @return [Float, nil]
            optional :size, Float

            # @!parse
            #   # @return [Float]
            #   attr_writer :size

            # @!parse
            #   # @param multiplier [Float]
            #   # @param size [Float]
            #   #
            #   def initialize(multiplier:, size: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
          end

          # @abstract
          #
          # Overwrites are prioritized over multipliers and tiered overrides.
          #
          # @example
          # ```ruby
          # case type
          # in :OVERWRITE
          #   # ...
          # in :MULTIPLIER
          #   # ...
          # in :TIERED
          #   # ...
          # end
          # ```
          class Type < MetronomeSDK::Enum
            OVERWRITE = :OVERWRITE
            MULTIPLIER = :MULTIPLIER
            TIERED = :TIERED

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        class AddProfessionalService < MetronomeSDK::BaseModel
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
          #     amount.
          #
          #   @return [Float]
          required :quantity, Float

          # @!attribute unit_price
          #   Unit price for the charge. Will be multiplied by quantity to determine the
          #     amount and must be specified.
          #
          #   @return [Float]
          required :unit_price, Float

          # @!attribute [r] custom_fields
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :custom_fields, MetronomeSDK::HashOf[String]

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

          # @!attribute [r] netsuite_sales_order_id
          #   This field's availability is dependent on your client's configuration.
          #
          #   @return [String, nil]
          optional :netsuite_sales_order_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :netsuite_sales_order_id

          # @!parse
          #   # @param max_amount [Float]
          #   # @param product_id [String]
          #   # @param quantity [Float]
          #   # @param unit_price [Float]
          #   # @param custom_fields [Hash{Symbol=>String}]
          #   # @param description [String]
          #   # @param netsuite_sales_order_id [String]
          #   #
          #   def initialize(
          #     max_amount:,
          #     product_id:,
          #     quantity:,
          #     unit_price:,
          #     custom_fields: nil,
          #     description: nil,
          #     netsuite_sales_order_id: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
        end

        class AddRecurringCommit < MetronomeSDK::BaseModel
          # @!attribute access_amount
          #   The amount of commit to grant.
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::AccessAmount]
          required :access_amount,
                   -> { MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::AccessAmount }

          # @!attribute commit_duration
          #   The amount of time the created commits will be valid for.
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::CommitDuration]
          required :commit_duration,
                   -> { MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::CommitDuration }

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

          # @!attribute [r] applicable_product_ids
          #   Will be passed down to the individual commits
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_ids, MetronomeSDK::ArrayOf[String]

          # @!parse
          #   # @return [Array<String>]
          #   attr_writer :applicable_product_ids

          # @!attribute [r] applicable_product_tags
          #   Will be passed down to the individual commits
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_tags, MetronomeSDK::ArrayOf[String]

          # @!parse
          #   # @return [Array<String>]
          #   attr_writer :applicable_product_tags

          # @!attribute [r] description
          #   Will be passed down to the individual commits
          #
          #   @return [String, nil]
          optional :description, String

          # @!parse
          #   # @return [String]
          #   attr_writer :description

          # @!attribute [r] ending_before
          #   Determines when the contract will stop creating recurring commits. optional
          #
          #   @return [Time, nil]
          optional :ending_before, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :ending_before

          # @!attribute [r] invoice_amount
          #   The amount the customer should be billed for the commit. Not required.
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::InvoiceAmount, nil]
          optional :invoice_amount,
                   -> { MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::InvoiceAmount }

          # @!parse
          #   # @return [MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::InvoiceAmount]
          #   attr_writer :invoice_amount

          # @!attribute [r] name
          #   displayed on invoices. will be passed through to the individual commits
          #
          #   @return [String, nil]
          optional :name, String

          # @!parse
          #   # @return [String]
          #   attr_writer :name

          # @!attribute [r] netsuite_sales_order_id
          #   Will be passed down to the individual commits
          #
          #   @return [String, nil]
          optional :netsuite_sales_order_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :netsuite_sales_order_id

          # @!attribute [r] proration
          #   Determines whether the first and last commit will be prorated. If not provided,
          #     the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
          #
          #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::Proration, nil]
          optional :proration,
                   enum: -> { MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::Proration }

          # @!parse
          #   # @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::Proration]
          #   attr_writer :proration

          # @!attribute [r] rate_type
          #   Whether the created commits will use the commit rate or list rate
          #
          #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::RateType, nil]
          optional :rate_type,
                   enum: -> { MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::RateType }

          # @!parse
          #   # @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::RateType]
          #   attr_writer :rate_type

          # @!attribute [r] recurrence_frequency
          #   The frequency at which the recurring commits will be created. If not provided: -
          #     The commits will be created on the usage invoice frequency. If provided: - The
          #     period defined in the duration will correspond to this frequency. - Commits will
          #     be created aligned with the recurring commit's start_date rather than the usage
          #     invoice dates.
          #
          #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::RecurrenceFrequency, nil]
          optional :recurrence_frequency,
                   enum: -> { MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::RecurrenceFrequency }

          # @!parse
          #   # @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::RecurrenceFrequency]
          #   attr_writer :recurrence_frequency

          # @!attribute [r] rollover_fraction
          #   Will be passed down to the individual commits. This controls how much of an
          #     individual unexpired commit will roll over upon contract transition. Must be
          #     between 0 and 1.
          #
          #   @return [Float, nil]
          optional :rollover_fraction, Float

          # @!parse
          #   # @return [Float]
          #   attr_writer :rollover_fraction

          # @!attribute [r] temporary_id
          #   A temporary ID that can be used to reference the recurring commit for commit
          #     specific overrides.
          #
          #   @return [String, nil]
          optional :temporary_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :temporary_id

          # @!parse
          #   # @param access_amount [MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::AccessAmount]
          #   # @param commit_duration [MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::CommitDuration]
          #   # @param priority [Float]
          #   # @param product_id [String]
          #   # @param starting_at [Time]
          #   # @param applicable_product_ids [Array<String>]
          #   # @param applicable_product_tags [Array<String>]
          #   # @param description [String]
          #   # @param ending_before [Time]
          #   # @param invoice_amount [MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::InvoiceAmount]
          #   # @param name [String]
          #   # @param netsuite_sales_order_id [String]
          #   # @param proration [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::Proration]
          #   # @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::RateType]
          #   # @param recurrence_frequency [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::RecurrenceFrequency]
          #   # @param rollover_fraction [Float]
          #   # @param temporary_id [String]
          #   #
          #   def initialize(
          #     access_amount:,
          #     commit_duration:,
          #     priority:,
          #     product_id:,
          #     starting_at:,
          #     applicable_product_ids: nil,
          #     applicable_product_tags: nil,
          #     description: nil,
          #     ending_before: nil,
          #     invoice_amount: nil,
          #     name: nil,
          #     netsuite_sales_order_id: nil,
          #     proration: nil,
          #     rate_type: nil,
          #     recurrence_frequency: nil,
          #     rollover_fraction: nil,
          #     temporary_id: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          class AccessAmount < MetronomeSDK::BaseModel
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

            # @!parse
            #   # The amount of commit to grant.
            #   #
            #   # @param credit_type_id [String]
            #   # @param quantity [Float]
            #   # @param unit_price [Float]
            #   #
            #   def initialize(credit_type_id:, quantity:, unit_price:, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
          end

          class CommitDuration < MetronomeSDK::BaseModel
            # @!attribute unit
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::CommitDuration::Unit]
            required :unit,
                     enum: -> { MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::CommitDuration::Unit }

            # @!attribute value
            #
            #   @return [Float]
            required :value, Float

            # @!parse
            #   # The amount of time the created commits will be valid for.
            #   #
            #   # @param unit [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCommit::CommitDuration::Unit]
            #   # @param value [Float]
            #   #
            #   def initialize(unit:, value:, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            # @abstract
            #
            # @example
            # ```ruby
            # case unit
            # in :PERIODS
            #   # ...
            # end
            # ```
            class Unit < MetronomeSDK::Enum
              PERIODS = :PERIODS

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          class InvoiceAmount < MetronomeSDK::BaseModel
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

            # @!parse
            #   # The amount the customer should be billed for the commit. Not required.
            #   #
            #   # @param credit_type_id [String]
            #   # @param quantity [Float]
            #   # @param unit_price [Float]
            #   #
            #   def initialize(credit_type_id:, quantity:, unit_price:, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
          end

          # @abstract
          #
          # Determines whether the first and last commit will be prorated. If not provided,
          #   the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
          #
          # @example
          # ```ruby
          # case proration
          # in :NONE
          #   # ...
          # in :FIRST
          #   # ...
          # in :LAST
          #   # ...
          # in :FIRST_AND_LAST
          #   # ...
          # end
          # ```
          class Proration < MetronomeSDK::Enum
            NONE = :NONE
            FIRST = :FIRST
            LAST = :LAST
            FIRST_AND_LAST = :FIRST_AND_LAST

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end

          # @abstract
          #
          # Whether the created commits will use the commit rate or list rate
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
          class RateType < MetronomeSDK::Enum
            COMMIT_RATE = :COMMIT_RATE
            LIST_RATE = :LIST_RATE

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end

          # @abstract
          #
          # The frequency at which the recurring commits will be created. If not provided: -
          #   The commits will be created on the usage invoice frequency. If provided: - The
          #   period defined in the duration will correspond to this frequency. - Commits will
          #   be created aligned with the recurring commit's start_date rather than the usage
          #   invoice dates.
          #
          # @example
          # ```ruby
          # case recurrence_frequency
          # in :MONTHLY
          #   # ...
          # in :QUARTERLY
          #   # ...
          # in :ANNUAL
          #   # ...
          # in :WEEKLY
          #   # ...
          # end
          # ```
          class RecurrenceFrequency < MetronomeSDK::Enum
            MONTHLY = :MONTHLY
            QUARTERLY = :QUARTERLY
            ANNUAL = :ANNUAL
            WEEKLY = :WEEKLY

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        class AddRecurringCredit < MetronomeSDK::BaseModel
          # @!attribute access_amount
          #   The amount of commit to grant.
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::AccessAmount]
          required :access_amount,
                   -> { MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::AccessAmount }

          # @!attribute commit_duration
          #   The amount of time the created commits will be valid for.
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::CommitDuration]
          required :commit_duration,
                   -> { MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::CommitDuration }

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

          # @!attribute [r] applicable_product_ids
          #   Will be passed down to the individual commits
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_ids, MetronomeSDK::ArrayOf[String]

          # @!parse
          #   # @return [Array<String>]
          #   attr_writer :applicable_product_ids

          # @!attribute [r] applicable_product_tags
          #   Will be passed down to the individual commits
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_tags, MetronomeSDK::ArrayOf[String]

          # @!parse
          #   # @return [Array<String>]
          #   attr_writer :applicable_product_tags

          # @!attribute [r] description
          #   Will be passed down to the individual commits
          #
          #   @return [String, nil]
          optional :description, String

          # @!parse
          #   # @return [String]
          #   attr_writer :description

          # @!attribute [r] ending_before
          #   Determines when the contract will stop creating recurring commits. optional
          #
          #   @return [Time, nil]
          optional :ending_before, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :ending_before

          # @!attribute [r] name
          #   displayed on invoices. will be passed through to the individual commits
          #
          #   @return [String, nil]
          optional :name, String

          # @!parse
          #   # @return [String]
          #   attr_writer :name

          # @!attribute [r] netsuite_sales_order_id
          #   Will be passed down to the individual commits
          #
          #   @return [String, nil]
          optional :netsuite_sales_order_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :netsuite_sales_order_id

          # @!attribute [r] proration
          #   Determines whether the first and last commit will be prorated. If not provided,
          #     the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
          #
          #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::Proration, nil]
          optional :proration,
                   enum: -> { MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::Proration }

          # @!parse
          #   # @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::Proration]
          #   attr_writer :proration

          # @!attribute [r] rate_type
          #   Whether the created commits will use the commit rate or list rate
          #
          #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::RateType, nil]
          optional :rate_type,
                   enum: -> { MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::RateType }

          # @!parse
          #   # @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::RateType]
          #   attr_writer :rate_type

          # @!attribute [r] recurrence_frequency
          #   The frequency at which the recurring commits will be created. If not provided: -
          #     The commits will be created on the usage invoice frequency. If provided: - The
          #     period defined in the duration will correspond to this frequency. - Commits will
          #     be created aligned with the recurring commit's start_date rather than the usage
          #     invoice dates.
          #
          #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::RecurrenceFrequency, nil]
          optional :recurrence_frequency,
                   enum: -> { MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::RecurrenceFrequency }

          # @!parse
          #   # @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::RecurrenceFrequency]
          #   attr_writer :recurrence_frequency

          # @!attribute [r] rollover_fraction
          #   Will be passed down to the individual commits. This controls how much of an
          #     individual unexpired commit will roll over upon contract transition. Must be
          #     between 0 and 1.
          #
          #   @return [Float, nil]
          optional :rollover_fraction, Float

          # @!parse
          #   # @return [Float]
          #   attr_writer :rollover_fraction

          # @!attribute [r] temporary_id
          #   A temporary ID that can be used to reference the recurring commit for commit
          #     specific overrides.
          #
          #   @return [String, nil]
          optional :temporary_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :temporary_id

          # @!parse
          #   # @param access_amount [MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::AccessAmount]
          #   # @param commit_duration [MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::CommitDuration]
          #   # @param priority [Float]
          #   # @param product_id [String]
          #   # @param starting_at [Time]
          #   # @param applicable_product_ids [Array<String>]
          #   # @param applicable_product_tags [Array<String>]
          #   # @param description [String]
          #   # @param ending_before [Time]
          #   # @param name [String]
          #   # @param netsuite_sales_order_id [String]
          #   # @param proration [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::Proration]
          #   # @param rate_type [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::RateType]
          #   # @param recurrence_frequency [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::RecurrenceFrequency]
          #   # @param rollover_fraction [Float]
          #   # @param temporary_id [String]
          #   #
          #   def initialize(
          #     access_amount:,
          #     commit_duration:,
          #     priority:,
          #     product_id:,
          #     starting_at:,
          #     applicable_product_ids: nil,
          #     applicable_product_tags: nil,
          #     description: nil,
          #     ending_before: nil,
          #     name: nil,
          #     netsuite_sales_order_id: nil,
          #     proration: nil,
          #     rate_type: nil,
          #     recurrence_frequency: nil,
          #     rollover_fraction: nil,
          #     temporary_id: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          class AccessAmount < MetronomeSDK::BaseModel
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

            # @!parse
            #   # The amount of commit to grant.
            #   #
            #   # @param credit_type_id [String]
            #   # @param quantity [Float]
            #   # @param unit_price [Float]
            #   #
            #   def initialize(credit_type_id:, quantity:, unit_price:, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
          end

          class CommitDuration < MetronomeSDK::BaseModel
            # @!attribute unit
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::CommitDuration::Unit]
            required :unit,
                     enum: -> { MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::CommitDuration::Unit }

            # @!attribute value
            #
            #   @return [Float]
            required :value, Float

            # @!parse
            #   # The amount of time the created commits will be valid for.
            #   #
            #   # @param unit [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddRecurringCredit::CommitDuration::Unit]
            #   # @param value [Float]
            #   #
            #   def initialize(unit:, value:, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            # @abstract
            #
            # @example
            # ```ruby
            # case unit
            # in :PERIODS
            #   # ...
            # end
            # ```
            class Unit < MetronomeSDK::Enum
              PERIODS = :PERIODS

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end

          # @abstract
          #
          # Determines whether the first and last commit will be prorated. If not provided,
          #   the default is FIRST_AND_LAST (i.e. prorate both the first and last commits).
          #
          # @example
          # ```ruby
          # case proration
          # in :NONE
          #   # ...
          # in :FIRST
          #   # ...
          # in :LAST
          #   # ...
          # in :FIRST_AND_LAST
          #   # ...
          # end
          # ```
          class Proration < MetronomeSDK::Enum
            NONE = :NONE
            FIRST = :FIRST
            LAST = :LAST
            FIRST_AND_LAST = :FIRST_AND_LAST

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end

          # @abstract
          #
          # Whether the created commits will use the commit rate or list rate
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
          class RateType < MetronomeSDK::Enum
            COMMIT_RATE = :COMMIT_RATE
            LIST_RATE = :LIST_RATE

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end

          # @abstract
          #
          # The frequency at which the recurring commits will be created. If not provided: -
          #   The commits will be created on the usage invoice frequency. If provided: - The
          #   period defined in the duration will correspond to this frequency. - Commits will
          #   be created aligned with the recurring commit's start_date rather than the usage
          #   invoice dates.
          #
          # @example
          # ```ruby
          # case recurrence_frequency
          # in :MONTHLY
          #   # ...
          # in :QUARTERLY
          #   # ...
          # in :ANNUAL
          #   # ...
          # in :WEEKLY
          #   # ...
          # end
          # ```
          class RecurrenceFrequency < MetronomeSDK::Enum
            MONTHLY = :MONTHLY
            QUARTERLY = :QUARTERLY
            ANNUAL = :ANNUAL
            WEEKLY = :WEEKLY

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end
        end

        class AddResellerRoyalty < MetronomeSDK::BaseModel
          # @!attribute reseller_type
          #
          #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddResellerRoyalty::ResellerType]
          required :reseller_type,
                   enum: -> { MetronomeSDK::Models::V2::ContractEditParams::AddResellerRoyalty::ResellerType }

          # @!attribute [r] applicable_product_ids
          #   Must provide at least one of applicable_product_ids or applicable_product_tags.
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_ids, MetronomeSDK::ArrayOf[String]

          # @!parse
          #   # @return [Array<String>]
          #   attr_writer :applicable_product_ids

          # @!attribute [r] applicable_product_tags
          #   Must provide at least one of applicable_product_ids or applicable_product_tags.
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_tags, MetronomeSDK::ArrayOf[String]

          # @!parse
          #   # @return [Array<String>]
          #   attr_writer :applicable_product_tags

          # @!attribute [r] aws_options
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddResellerRoyalty::AwsOptions, nil]
          optional :aws_options, -> { MetronomeSDK::Models::V2::ContractEditParams::AddResellerRoyalty::AwsOptions }

          # @!parse
          #   # @return [MetronomeSDK::Models::V2::ContractEditParams::AddResellerRoyalty::AwsOptions]
          #   attr_writer :aws_options

          # @!attribute ending_before
          #   Use null to indicate that the existing end timestamp should be removed.
          #
          #   @return [Time, nil]
          optional :ending_before, Time, nil?: true

          # @!attribute [r] fraction
          #
          #   @return [Float, nil]
          optional :fraction, Float

          # @!parse
          #   # @return [Float]
          #   attr_writer :fraction

          # @!attribute [r] gcp_options
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddResellerRoyalty::GcpOptions, nil]
          optional :gcp_options, -> { MetronomeSDK::Models::V2::ContractEditParams::AddResellerRoyalty::GcpOptions }

          # @!parse
          #   # @return [MetronomeSDK::Models::V2::ContractEditParams::AddResellerRoyalty::GcpOptions]
          #   attr_writer :gcp_options

          # @!attribute [r] netsuite_reseller_id
          #
          #   @return [String, nil]
          optional :netsuite_reseller_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :netsuite_reseller_id

          # @!attribute [r] reseller_contract_value
          #
          #   @return [Float, nil]
          optional :reseller_contract_value, Float

          # @!parse
          #   # @return [Float]
          #   attr_writer :reseller_contract_value

          # @!attribute [r] starting_at
          #
          #   @return [Time, nil]
          optional :starting_at, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :starting_at

          # @!parse
          #   # @param reseller_type [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddResellerRoyalty::ResellerType]
          #   # @param applicable_product_ids [Array<String>]
          #   # @param applicable_product_tags [Array<String>]
          #   # @param aws_options [MetronomeSDK::Models::V2::ContractEditParams::AddResellerRoyalty::AwsOptions]
          #   # @param ending_before [Time, nil]
          #   # @param fraction [Float]
          #   # @param gcp_options [MetronomeSDK::Models::V2::ContractEditParams::AddResellerRoyalty::GcpOptions]
          #   # @param netsuite_reseller_id [String]
          #   # @param reseller_contract_value [Float]
          #   # @param starting_at [Time]
          #   #
          #   def initialize(
          #     reseller_type:,
          #     applicable_product_ids: nil,
          #     applicable_product_tags: nil,
          #     aws_options: nil,
          #     ending_before: nil,
          #     fraction: nil,
          #     gcp_options: nil,
          #     netsuite_reseller_id: nil,
          #     reseller_contract_value: nil,
          #     starting_at: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          # @abstract
          #
          # @example
          # ```ruby
          # case reseller_type
          # in :AWS
          #   # ...
          # in :AWS_PRO_SERVICE
          #   # ...
          # in :GCP
          #   # ...
          # in :GCP_PRO_SERVICE
          #   # ...
          # end
          # ```
          class ResellerType < MetronomeSDK::Enum
            AWS = :AWS
            AWS_PRO_SERVICE = :AWS_PRO_SERVICE
            GCP = :GCP
            GCP_PRO_SERVICE = :GCP_PRO_SERVICE

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   #
            #   def self.values; end
          end

          class AwsOptions < MetronomeSDK::BaseModel
            # @!attribute [r] aws_account_number
            #
            #   @return [String, nil]
            optional :aws_account_number, String

            # @!parse
            #   # @return [String]
            #   attr_writer :aws_account_number

            # @!attribute [r] aws_offer_id
            #
            #   @return [String, nil]
            optional :aws_offer_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :aws_offer_id

            # @!attribute [r] aws_payer_reference_id
            #
            #   @return [String, nil]
            optional :aws_payer_reference_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :aws_payer_reference_id

            # @!parse
            #   # @param aws_account_number [String]
            #   # @param aws_offer_id [String]
            #   # @param aws_payer_reference_id [String]
            #   #
            #   def initialize(aws_account_number: nil, aws_offer_id: nil, aws_payer_reference_id: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
          end

          class GcpOptions < MetronomeSDK::BaseModel
            # @!attribute [r] gcp_account_id
            #
            #   @return [String, nil]
            optional :gcp_account_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :gcp_account_id

            # @!attribute [r] gcp_offer_id
            #
            #   @return [String, nil]
            optional :gcp_offer_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :gcp_offer_id

            # @!parse
            #   # @param gcp_account_id [String]
            #   # @param gcp_offer_id [String]
            #   #
            #   def initialize(gcp_account_id: nil, gcp_offer_id: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
          end
        end

        class AddScheduledCharge < MetronomeSDK::BaseModel
          # @!attribute product_id
          #
          #   @return [String]
          required :product_id, String

          # @!attribute schedule
          #   Must provide either schedule_items or recurring_schedule.
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule]
          required :schedule, -> { MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule }

          # @!attribute [r] name
          #   displayed on invoices
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

          # @!parse
          #   # @param product_id [String]
          #   # @param schedule [MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule]
          #   # @param name [String]
          #   # @param netsuite_sales_order_id [String]
          #   #
          #   def initialize(product_id:, schedule:, name: nil, netsuite_sales_order_id: nil, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          class Schedule < MetronomeSDK::BaseModel
            # @!attribute [r] credit_type_id
            #   Defaults to USD if not passed. Only USD is supported at this time.
            #
            #   @return [String, nil]
            optional :credit_type_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :credit_type_id

            # @!attribute [r] recurring_schedule
            #   Enter the unit price and quantity for the charge or instead only send the
            #     amount. If amount is sent, the unit price is assumed to be the amount and
            #     quantity is inferred to be 1.
            #
            #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule, nil]
            optional :recurring_schedule,
                     -> { MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule }

            # @!parse
            #   # @return [MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule]
            #   attr_writer :recurring_schedule

            # @!attribute [r] schedule_items
            #   Either provide amount or provide both unit_price and quantity.
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule::ScheduleItem>, nil]
            optional :schedule_items,
                     -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule::ScheduleItem] }

            # @!parse
            #   # @return [Array<MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule::ScheduleItem>]
            #   attr_writer :schedule_items

            # @!parse
            #   # Must provide either schedule_items or recurring_schedule.
            #   #
            #   # @param credit_type_id [String]
            #   # @param recurring_schedule [MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule]
            #   # @param schedule_items [Array<MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule::ScheduleItem>]
            #   #
            #   def initialize(credit_type_id: nil, recurring_schedule: nil, schedule_items: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class RecurringSchedule < MetronomeSDK::BaseModel
              # @!attribute amount_distribution
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule::AmountDistribution]
              required :amount_distribution,
                       enum: -> { MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule::AmountDistribution }

              # @!attribute ending_before
              #   RFC 3339 timestamp (exclusive).
              #
              #   @return [Time]
              required :ending_before, Time

              # @!attribute frequency
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule::Frequency]
              required :frequency,
                       enum: -> { MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule::Frequency }

              # @!attribute starting_at
              #   RFC 3339 timestamp (inclusive).
              #
              #   @return [Time]
              required :starting_at, Time

              # @!attribute [r] amount
              #   Amount for the charge. Can be provided instead of unit_price and quantity. If
              #     amount is sent, the unit_price is assumed to be the amount and quantity is
              #     inferred to be 1.
              #
              #   @return [Float, nil]
              optional :amount, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :amount

              # @!attribute [r] quantity
              #   Quantity for the charge. Will be multiplied by unit_price to determine the
              #     amount and must be specified with unit_price. If specified amount cannot be
              #     provided.
              #
              #   @return [Float, nil]
              optional :quantity, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :quantity

              # @!attribute [r] unit_price
              #   Unit price for the charge. Will be multiplied by quantity to determine the
              #     amount and must be specified with quantity. If specified amount cannot be
              #     provided.
              #
              #   @return [Float, nil]
              optional :unit_price, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :unit_price

              # @!parse
              #   # Enter the unit price and quantity for the charge or instead only send the
              #   #   amount. If amount is sent, the unit price is assumed to be the amount and
              #   #   quantity is inferred to be 1.
              #   #
              #   # @param amount_distribution [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule::AmountDistribution]
              #   # @param ending_before [Time]
              #   # @param frequency [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddScheduledCharge::Schedule::RecurringSchedule::Frequency]
              #   # @param starting_at [Time]
              #   # @param amount [Float]
              #   # @param quantity [Float]
              #   # @param unit_price [Float]
              #   #
              #   def initialize(
              #     amount_distribution:,
              #     ending_before:,
              #     frequency:,
              #     starting_at:,
              #     amount: nil,
              #     quantity: nil,
              #     unit_price: nil,
              #     **
              #   )
              #     super
              #   end

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

              # @abstract
              #
              # @example
              # ```ruby
              # case amount_distribution
              # in :DIVIDED
              #   # ...
              # in :DIVIDED_ROUNDED
              #   # ...
              # in :EACH
              #   # ...
              # end
              # ```
              class AmountDistribution < MetronomeSDK::Enum
                DIVIDED = :DIVIDED
                DIVIDED_ROUNDED = :DIVIDED_ROUNDED
                EACH = :EACH

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end

              # @abstract
              #
              # @example
              # ```ruby
              # case frequency
              # in :MONTHLY
              #   # ...
              # in :QUARTERLY
              #   # ...
              # in :SEMI_ANNUAL
              #   # ...
              # in :ANNUAL
              #   # ...
              # in :WEEKLY
              #   # ...
              # end
              # ```
              class Frequency < MetronomeSDK::Enum
                MONTHLY = :MONTHLY
                QUARTERLY = :QUARTERLY
                SEMI_ANNUAL = :SEMI_ANNUAL
                ANNUAL = :ANNUAL
                WEEKLY = :WEEKLY

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            class ScheduleItem < MetronomeSDK::BaseModel
              # @!attribute timestamp
              #   timestamp of the scheduled event
              #
              #   @return [Time]
              required :timestamp, Time

              # @!attribute [r] amount
              #   Amount for the charge. Can be provided instead of unit_price and quantity. If
              #     amount is sent, the unit_price is assumed to be the amount and quantity is
              #     inferred to be 1.
              #
              #   @return [Float, nil]
              optional :amount, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :amount

              # @!attribute [r] quantity
              #   Quantity for the charge. Will be multiplied by unit_price to determine the
              #     amount and must be specified with unit_price. If specified amount cannot be
              #     provided.
              #
              #   @return [Float, nil]
              optional :quantity, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :quantity

              # @!attribute [r] unit_price
              #   Unit price for the charge. Will be multiplied by quantity to determine the
              #     amount and must be specified with quantity. If specified amount cannot be
              #     provided.
              #
              #   @return [Float, nil]
              optional :unit_price, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :unit_price

              # @!parse
              #   # @param timestamp [Time]
              #   # @param amount [Float]
              #   # @param quantity [Float]
              #   # @param unit_price [Float]
              #   #
              #   def initialize(timestamp:, amount: nil, quantity: nil, unit_price: nil, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end
          end
        end

        class AddSpendThresholdConfiguration < MetronomeSDK::BaseModel
          # @!attribute commit
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::Commit]
          required :commit,
                   -> { MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::Commit }

          # @!attribute is_enabled
          #   When set to false, the contract will not be evaluated against the
          #     threshold_amount. Toggling to true will result an immediate evaluation,
          #     regardless of prior state.
          #
          #   @return [Boolean]
          required :is_enabled, MetronomeSDK::BooleanModel

          # @!attribute payment_gate_config
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig]
          required :payment_gate_config,
                   -> { MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig }

          # @!attribute threshold_amount
          #   Specify the threshold amount for the contract. Each time the contract's usage
          #     hits this amount, a threshold charge will be initiated.
          #
          #   @return [Float]
          required :threshold_amount, Float

          # @!parse
          #   # @param commit [MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::Commit]
          #   # @param is_enabled [Boolean]
          #   # @param payment_gate_config [MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig]
          #   # @param threshold_amount [Float]
          #   #
          #   def initialize(commit:, is_enabled:, payment_gate_config:, threshold_amount:, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          class Commit < MetronomeSDK::BaseModel
            # @!attribute product_id
            #   The commit product that will be used to generate the line item for commit
            #     payment.
            #
            #   @return [String]
            required :product_id, String

            # @!attribute [r] description
            #
            #   @return [String, nil]
            optional :description, String

            # @!parse
            #   # @return [String]
            #   attr_writer :description

            # @!attribute [r] name
            #   Specify the name of the line item for the threshold charge. If left blank, it
            #     will default to the commit product name.
            #
            #   @return [String, nil]
            optional :name, String

            # @!parse
            #   # @return [String]
            #   attr_writer :name

            # @!parse
            #   # @param product_id [String]
            #   # @param description [String]
            #   # @param name [String]
            #   #
            #   def initialize(product_id:, description: nil, name: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
          end

          class PaymentGateConfig < MetronomeSDK::BaseModel
            # @!attribute payment_gate_type
            #   Gate access to the commit balance based on successful collection of payment.
            #     Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
            #     facilitate payment using your own payment integration. Select NONE if you do not
            #     wish to payment gate the commit balance.
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::PaymentGateType]
            required :payment_gate_type,
                     enum: -> { MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::PaymentGateType }

            # @!attribute [r] stripe_config
            #   Only applicable if using Stripe as your payment gateway through Metronome.
            #
            #   @return [MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::StripeConfig, nil]
            optional :stripe_config,
                     -> { MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::StripeConfig }

            # @!parse
            #   # @return [MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::StripeConfig]
            #   attr_writer :stripe_config

            # @!attribute [r] tax_type
            #   Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
            #     not wish Metronome to calculate tax on your behalf. Leaving this field blank
            #     will default to NONE.
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::TaxType, nil]
            optional :tax_type,
                     enum: -> { MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::TaxType }

            # @!parse
            #   # @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::TaxType]
            #   attr_writer :tax_type

            # @!parse
            #   # @param payment_gate_type [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::PaymentGateType]
            #   # @param stripe_config [MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::StripeConfig]
            #   # @param tax_type [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::TaxType]
            #   #
            #   def initialize(payment_gate_type:, stripe_config: nil, tax_type: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            # @abstract
            #
            # Gate access to the commit balance based on successful collection of payment.
            #   Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
            #   facilitate payment using your own payment integration. Select NONE if you do not
            #   wish to payment gate the commit balance.
            #
            # @example
            # ```ruby
            # case payment_gate_type
            # in :NONE
            #   # ...
            # in :STRIPE
            #   # ...
            # in :EXTERNAL
            #   # ...
            # end
            # ```
            class PaymentGateType < MetronomeSDK::Enum
              NONE = :NONE
              STRIPE = :STRIPE
              EXTERNAL = :EXTERNAL

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class StripeConfig < MetronomeSDK::BaseModel
              # @!attribute payment_type
              #   If left blank, will default to INVOICE
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType]
              required :payment_type,
                       enum: -> { MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType }

              # @!parse
              #   # Only applicable if using Stripe as your payment gateway through Metronome.
              #   #
              #   # @param payment_type [Symbol, MetronomeSDK::Models::V2::ContractEditParams::AddSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType]
              #   #
              #   def initialize(payment_type:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

              # @abstract
              #
              # If left blank, will default to INVOICE
              #
              # @example
              # ```ruby
              # case payment_type
              # in :INVOICE
              #   # ...
              # in :PAYMENT_INTENT
              #   # ...
              # end
              # ```
              class PaymentType < MetronomeSDK::Enum
                INVOICE = :INVOICE
                PAYMENT_INTENT = :PAYMENT_INTENT

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            # @abstract
            #
            # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
            #   not wish Metronome to calculate tax on your behalf. Leaving this field blank
            #   will default to NONE.
            #
            # @example
            # ```ruby
            # case tax_type
            # in :NONE
            #   # ...
            # in :STRIPE
            #   # ...
            # end
            # ```
            class TaxType < MetronomeSDK::Enum
              NONE = :NONE
              STRIPE = :STRIPE

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end
        end

        class ArchiveCommit < MetronomeSDK::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!parse
          #   # @param id [String]
          #   #
          #   def initialize(id:, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
        end

        class ArchiveCredit < MetronomeSDK::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!parse
          #   # @param id [String]
          #   #
          #   def initialize(id:, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
        end

        class ArchiveScheduledCharge < MetronomeSDK::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!parse
          #   # @param id [String]
          #   #
          #   def initialize(id:, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
        end

        class RemoveOverride < MetronomeSDK::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!parse
          #   # @param id [String]
          #   #
          #   def initialize(id:, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
        end

        class UpdateCommit < MetronomeSDK::BaseModel
          # @!attribute commit_id
          #
          #   @return [String]
          required :commit_id, String

          # @!attribute [r] access_schedule
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::AccessSchedule, nil]
          optional :access_schedule,
                   -> { MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::AccessSchedule }

          # @!parse
          #   # @return [MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::AccessSchedule]
          #   attr_writer :access_schedule

          # @!attribute applicable_product_ids
          #   Which products the commit applies to. If both applicable_product_ids and
          #     applicable_product_tags are not provided, the commit applies to all products.
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_ids, MetronomeSDK::ArrayOf[String], nil?: true

          # @!attribute applicable_product_tags
          #   Which tags the commit applies to. If both applicable_product_ids and
          #     applicable_product_tags are not provided, the commit applies to all products.
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_tags, MetronomeSDK::ArrayOf[String], nil?: true

          # @!attribute [r] invoice_schedule
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::InvoiceSchedule, nil]
          optional :invoice_schedule,
                   -> { MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::InvoiceSchedule }

          # @!parse
          #   # @return [MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::InvoiceSchedule]
          #   attr_writer :invoice_schedule

          # @!attribute netsuite_sales_order_id
          #
          #   @return [String, nil]
          optional :netsuite_sales_order_id, String, nil?: true

          # @!attribute [r] product_id
          #
          #   @return [String, nil]
          optional :product_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :product_id

          # @!attribute rollover_fraction
          #
          #   @return [Float, nil]
          optional :rollover_fraction, Float, nil?: true

          # @!parse
          #   # @param commit_id [String]
          #   # @param access_schedule [MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::AccessSchedule]
          #   # @param applicable_product_ids [Array<String>, nil]
          #   # @param applicable_product_tags [Array<String>, nil]
          #   # @param invoice_schedule [MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::InvoiceSchedule]
          #   # @param netsuite_sales_order_id [String, nil]
          #   # @param product_id [String]
          #   # @param rollover_fraction [Float, nil]
          #   #
          #   def initialize(
          #     commit_id:,
          #     access_schedule: nil,
          #     applicable_product_ids: nil,
          #     applicable_product_tags: nil,
          #     invoice_schedule: nil,
          #     netsuite_sales_order_id: nil,
          #     product_id: nil,
          #     rollover_fraction: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          class AccessSchedule < MetronomeSDK::BaseModel
            # @!attribute [r] add_schedule_items
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::AccessSchedule::AddScheduleItem>, nil]
            optional :add_schedule_items,
                     -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::AccessSchedule::AddScheduleItem] }

            # @!parse
            #   # @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::AccessSchedule::AddScheduleItem>]
            #   attr_writer :add_schedule_items

            # @!attribute [r] remove_schedule_items
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::AccessSchedule::RemoveScheduleItem>, nil]
            optional :remove_schedule_items,
                     -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::AccessSchedule::RemoveScheduleItem] }

            # @!parse
            #   # @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::AccessSchedule::RemoveScheduleItem>]
            #   attr_writer :remove_schedule_items

            # @!attribute [r] update_schedule_items
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::AccessSchedule::UpdateScheduleItem>, nil]
            optional :update_schedule_items,
                     -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::AccessSchedule::UpdateScheduleItem] }

            # @!parse
            #   # @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::AccessSchedule::UpdateScheduleItem>]
            #   attr_writer :update_schedule_items

            # @!parse
            #   # @param add_schedule_items [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::AccessSchedule::AddScheduleItem>]
            #   # @param remove_schedule_items [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::AccessSchedule::RemoveScheduleItem>]
            #   # @param update_schedule_items [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::AccessSchedule::UpdateScheduleItem>]
            #   #
            #   def initialize(add_schedule_items: nil, remove_schedule_items: nil, update_schedule_items: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class AddScheduleItem < MetronomeSDK::BaseModel
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

              # @!parse
              #   # @param amount [Float]
              #   # @param ending_before [Time]
              #   # @param starting_at [Time]
              #   #
              #   def initialize(amount:, ending_before:, starting_at:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end

            class RemoveScheduleItem < MetronomeSDK::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!parse
              #   # @param id [String]
              #   #
              #   def initialize(id:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end

            class UpdateScheduleItem < MetronomeSDK::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute [r] amount
              #
              #   @return [Float, nil]
              optional :amount, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :amount

              # @!attribute [r] ending_before
              #
              #   @return [Time, nil]
              optional :ending_before, Time

              # @!parse
              #   # @return [Time]
              #   attr_writer :ending_before

              # @!attribute [r] starting_at
              #
              #   @return [Time, nil]
              optional :starting_at, Time

              # @!parse
              #   # @return [Time]
              #   attr_writer :starting_at

              # @!parse
              #   # @param id [String]
              #   # @param amount [Float]
              #   # @param ending_before [Time]
              #   # @param starting_at [Time]
              #   #
              #   def initialize(id:, amount: nil, ending_before: nil, starting_at: nil, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end
          end

          class InvoiceSchedule < MetronomeSDK::BaseModel
            # @!attribute [r] add_schedule_items
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::AddScheduleItem>, nil]
            optional :add_schedule_items,
                     -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::AddScheduleItem] }

            # @!parse
            #   # @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::AddScheduleItem>]
            #   attr_writer :add_schedule_items

            # @!attribute [r] remove_schedule_items
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::RemoveScheduleItem>, nil]
            optional :remove_schedule_items,
                     -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::RemoveScheduleItem] }

            # @!parse
            #   # @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::RemoveScheduleItem>]
            #   attr_writer :remove_schedule_items

            # @!attribute [r] update_schedule_items
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::UpdateScheduleItem>, nil]
            optional :update_schedule_items,
                     -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::UpdateScheduleItem] }

            # @!parse
            #   # @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::UpdateScheduleItem>]
            #   attr_writer :update_schedule_items

            # @!parse
            #   # @param add_schedule_items [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::AddScheduleItem>]
            #   # @param remove_schedule_items [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::RemoveScheduleItem>]
            #   # @param update_schedule_items [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCommit::InvoiceSchedule::UpdateScheduleItem>]
            #   #
            #   def initialize(add_schedule_items: nil, remove_schedule_items: nil, update_schedule_items: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class AddScheduleItem < MetronomeSDK::BaseModel
              # @!attribute timestamp
              #
              #   @return [Time]
              required :timestamp, Time

              # @!attribute [r] amount
              #
              #   @return [Float, nil]
              optional :amount, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :amount

              # @!attribute [r] quantity
              #
              #   @return [Float, nil]
              optional :quantity, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :quantity

              # @!attribute [r] unit_price
              #
              #   @return [Float, nil]
              optional :unit_price, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :unit_price

              # @!parse
              #   # @param timestamp [Time]
              #   # @param amount [Float]
              #   # @param quantity [Float]
              #   # @param unit_price [Float]
              #   #
              #   def initialize(timestamp:, amount: nil, quantity: nil, unit_price: nil, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end

            class RemoveScheduleItem < MetronomeSDK::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!parse
              #   # @param id [String]
              #   #
              #   def initialize(id:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end

            class UpdateScheduleItem < MetronomeSDK::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute [r] amount
              #
              #   @return [Float, nil]
              optional :amount, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :amount

              # @!attribute [r] quantity
              #
              #   @return [Float, nil]
              optional :quantity, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :quantity

              # @!attribute [r] timestamp
              #
              #   @return [Time, nil]
              optional :timestamp, Time

              # @!parse
              #   # @return [Time]
              #   attr_writer :timestamp

              # @!attribute [r] unit_price
              #
              #   @return [Float, nil]
              optional :unit_price, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :unit_price

              # @!parse
              #   # @param id [String]
              #   # @param amount [Float]
              #   # @param quantity [Float]
              #   # @param timestamp [Time]
              #   # @param unit_price [Float]
              #   #
              #   def initialize(id:, amount: nil, quantity: nil, timestamp: nil, unit_price: nil, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end
          end
        end

        class UpdateCredit < MetronomeSDK::BaseModel
          # @!attribute credit_id
          #
          #   @return [String]
          required :credit_id, String

          # @!attribute [r] access_schedule
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit::AccessSchedule, nil]
          optional :access_schedule,
                   -> { MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit::AccessSchedule }

          # @!parse
          #   # @return [MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit::AccessSchedule]
          #   attr_writer :access_schedule

          # @!attribute applicable_product_ids
          #   Which products the commit applies to. If both applicable_product_ids and
          #     applicable_product_tags are not provided, the commit applies to all products.
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_ids, MetronomeSDK::ArrayOf[String], nil?: true

          # @!attribute applicable_product_tags
          #   Which tags the commit applies to. If both applicable_product_ids and
          #     applicable_product_tags are not provided, the commit applies to all products.
          #
          #   @return [Array<String>, nil]
          optional :applicable_product_tags, MetronomeSDK::ArrayOf[String], nil?: true

          # @!attribute netsuite_sales_order_id
          #
          #   @return [String, nil]
          optional :netsuite_sales_order_id, String, nil?: true

          # @!attribute [r] product_id
          #
          #   @return [String, nil]
          optional :product_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :product_id

          # @!parse
          #   # @param credit_id [String]
          #   # @param access_schedule [MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit::AccessSchedule]
          #   # @param applicable_product_ids [Array<String>, nil]
          #   # @param applicable_product_tags [Array<String>, nil]
          #   # @param netsuite_sales_order_id [String, nil]
          #   # @param product_id [String]
          #   #
          #   def initialize(
          #     credit_id:,
          #     access_schedule: nil,
          #     applicable_product_ids: nil,
          #     applicable_product_tags: nil,
          #     netsuite_sales_order_id: nil,
          #     product_id: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          class AccessSchedule < MetronomeSDK::BaseModel
            # @!attribute [r] add_schedule_items
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit::AccessSchedule::AddScheduleItem>, nil]
            optional :add_schedule_items,
                     -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit::AccessSchedule::AddScheduleItem] }

            # @!parse
            #   # @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit::AccessSchedule::AddScheduleItem>]
            #   attr_writer :add_schedule_items

            # @!attribute [r] remove_schedule_items
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit::AccessSchedule::RemoveScheduleItem>, nil]
            optional :remove_schedule_items,
                     -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit::AccessSchedule::RemoveScheduleItem] }

            # @!parse
            #   # @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit::AccessSchedule::RemoveScheduleItem>]
            #   attr_writer :remove_schedule_items

            # @!attribute [r] update_schedule_items
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit::AccessSchedule::UpdateScheduleItem>, nil]
            optional :update_schedule_items,
                     -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit::AccessSchedule::UpdateScheduleItem] }

            # @!parse
            #   # @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit::AccessSchedule::UpdateScheduleItem>]
            #   attr_writer :update_schedule_items

            # @!parse
            #   # @param add_schedule_items [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit::AccessSchedule::AddScheduleItem>]
            #   # @param remove_schedule_items [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit::AccessSchedule::RemoveScheduleItem>]
            #   # @param update_schedule_items [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateCredit::AccessSchedule::UpdateScheduleItem>]
            #   #
            #   def initialize(add_schedule_items: nil, remove_schedule_items: nil, update_schedule_items: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class AddScheduleItem < MetronomeSDK::BaseModel
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

              # @!parse
              #   # @param amount [Float]
              #   # @param ending_before [Time]
              #   # @param starting_at [Time]
              #   #
              #   def initialize(amount:, ending_before:, starting_at:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end

            class RemoveScheduleItem < MetronomeSDK::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!parse
              #   # @param id [String]
              #   #
              #   def initialize(id:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end

            class UpdateScheduleItem < MetronomeSDK::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute [r] amount
              #
              #   @return [Float, nil]
              optional :amount, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :amount

              # @!attribute [r] ending_before
              #
              #   @return [Time, nil]
              optional :ending_before, Time

              # @!parse
              #   # @return [Time]
              #   attr_writer :ending_before

              # @!attribute [r] starting_at
              #
              #   @return [Time, nil]
              optional :starting_at, Time

              # @!parse
              #   # @return [Time]
              #   attr_writer :starting_at

              # @!parse
              #   # @param id [String]
              #   # @param amount [Float]
              #   # @param ending_before [Time]
              #   # @param starting_at [Time]
              #   #
              #   def initialize(id:, amount: nil, ending_before: nil, starting_at: nil, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end
          end
        end

        class UpdateScheduledCharge < MetronomeSDK::BaseModel
          # @!attribute scheduled_charge_id
          #
          #   @return [String]
          required :scheduled_charge_id, String

          # @!attribute [r] invoice_schedule
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule, nil]
          optional :invoice_schedule,
                   -> { MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule }

          # @!parse
          #   # @return [MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule]
          #   attr_writer :invoice_schedule

          # @!attribute netsuite_sales_order_id
          #
          #   @return [String, nil]
          optional :netsuite_sales_order_id, String, nil?: true

          # @!parse
          #   # @param scheduled_charge_id [String]
          #   # @param invoice_schedule [MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule]
          #   # @param netsuite_sales_order_id [String, nil]
          #   #
          #   def initialize(scheduled_charge_id:, invoice_schedule: nil, netsuite_sales_order_id: nil, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          class InvoiceSchedule < MetronomeSDK::BaseModel
            # @!attribute [r] add_schedule_items
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::AddScheduleItem>, nil]
            optional :add_schedule_items,
                     -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::AddScheduleItem] }

            # @!parse
            #   # @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::AddScheduleItem>]
            #   attr_writer :add_schedule_items

            # @!attribute [r] remove_schedule_items
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::RemoveScheduleItem>, nil]
            optional :remove_schedule_items,
                     -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::RemoveScheduleItem] }

            # @!parse
            #   # @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::RemoveScheduleItem>]
            #   attr_writer :remove_schedule_items

            # @!attribute [r] update_schedule_items
            #
            #   @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::UpdateScheduleItem>, nil]
            optional :update_schedule_items,
                     -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::UpdateScheduleItem] }

            # @!parse
            #   # @return [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::UpdateScheduleItem>]
            #   attr_writer :update_schedule_items

            # @!parse
            #   # @param add_schedule_items [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::AddScheduleItem>]
            #   # @param remove_schedule_items [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::RemoveScheduleItem>]
            #   # @param update_schedule_items [Array<MetronomeSDK::Models::V2::ContractEditParams::UpdateScheduledCharge::InvoiceSchedule::UpdateScheduleItem>]
            #   #
            #   def initialize(add_schedule_items: nil, remove_schedule_items: nil, update_schedule_items: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            class AddScheduleItem < MetronomeSDK::BaseModel
              # @!attribute timestamp
              #
              #   @return [Time]
              required :timestamp, Time

              # @!attribute [r] amount
              #
              #   @return [Float, nil]
              optional :amount, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :amount

              # @!attribute [r] quantity
              #
              #   @return [Float, nil]
              optional :quantity, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :quantity

              # @!attribute [r] unit_price
              #
              #   @return [Float, nil]
              optional :unit_price, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :unit_price

              # @!parse
              #   # @param timestamp [Time]
              #   # @param amount [Float]
              #   # @param quantity [Float]
              #   # @param unit_price [Float]
              #   #
              #   def initialize(timestamp:, amount: nil, quantity: nil, unit_price: nil, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end

            class RemoveScheduleItem < MetronomeSDK::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!parse
              #   # @param id [String]
              #   #
              #   def initialize(id:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end

            class UpdateScheduleItem < MetronomeSDK::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute [r] amount
              #
              #   @return [Float, nil]
              optional :amount, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :amount

              # @!attribute [r] quantity
              #
              #   @return [Float, nil]
              optional :quantity, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :quantity

              # @!attribute [r] timestamp
              #
              #   @return [Time, nil]
              optional :timestamp, Time

              # @!parse
              #   # @return [Time]
              #   attr_writer :timestamp

              # @!attribute [r] unit_price
              #
              #   @return [Float, nil]
              optional :unit_price, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :unit_price

              # @!parse
              #   # @param id [String]
              #   # @param amount [Float]
              #   # @param quantity [Float]
              #   # @param timestamp [Time]
              #   # @param unit_price [Float]
              #   #
              #   def initialize(id:, amount: nil, quantity: nil, timestamp: nil, unit_price: nil, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
            end
          end
        end

        class UpdateSpendThresholdConfiguration < MetronomeSDK::BaseModel
          # @!attribute [r] commit
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::Commit, nil]
          optional :commit,
                   -> { MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::Commit }

          # @!parse
          #   # @return [MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::Commit]
          #   attr_writer :commit

          # @!attribute [r] is_enabled
          #   When set to false, the contract will not be evaluated against the
          #     threshold_amount. Toggling to true will result an immediate evaluation,
          #     regardless of prior state.
          #
          #   @return [Boolean, nil]
          optional :is_enabled, MetronomeSDK::BooleanModel

          # @!parse
          #   # @return [Boolean]
          #   attr_writer :is_enabled

          # @!attribute [r] payment_gate_config
          #
          #   @return [MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig, nil]
          optional :payment_gate_config,
                   -> { MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig }

          # @!parse
          #   # @return [MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig]
          #   attr_writer :payment_gate_config

          # @!attribute [r] threshold_amount
          #   Specify the threshold amount for the contract. Each time the contract's usage
          #     hits this amount, a threshold charge will be initiated.
          #
          #   @return [Float, nil]
          optional :threshold_amount, Float

          # @!parse
          #   # @return [Float]
          #   attr_writer :threshold_amount

          # @!parse
          #   # @param commit [MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::Commit]
          #   # @param is_enabled [Boolean]
          #   # @param payment_gate_config [MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig]
          #   # @param threshold_amount [Float]
          #   #
          #   def initialize(commit: nil, is_enabled: nil, payment_gate_config: nil, threshold_amount: nil, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

          class Commit < MetronomeSDK::BaseModel
            # @!attribute description
            #
            #   @return [String, nil]
            optional :description, String, nil?: true

            # @!attribute name
            #   Specify the name of the line item for the threshold charge. If left blank, it
            #     will default to the commit product name.
            #
            #   @return [String, nil]
            optional :name, String, nil?: true

            # @!attribute [r] product_id
            #
            #   @return [String, nil]
            optional :product_id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :product_id

            # @!parse
            #   # @param description [String, nil]
            #   # @param name [String, nil]
            #   # @param product_id [String]
            #   #
            #   def initialize(description: nil, name: nil, product_id: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
          end

          class PaymentGateConfig < MetronomeSDK::BaseModel
            # @!attribute payment_gate_type
            #   Gate access to the commit balance based on successful collection of payment.
            #     Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
            #     facilitate payment using your own payment integration. Select NONE if you do not
            #     wish to payment gate the commit balance.
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::PaymentGateType]
            required :payment_gate_type,
                     enum: -> { MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::PaymentGateType }

            # @!attribute [r] stripe_config
            #   Only applicable if using Stripe as your payment gateway through Metronome.
            #
            #   @return [MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::StripeConfig, nil]
            optional :stripe_config,
                     -> { MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::StripeConfig }

            # @!parse
            #   # @return [MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::StripeConfig]
            #   attr_writer :stripe_config

            # @!attribute [r] tax_type
            #   Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
            #     not wish Metronome to calculate tax on your behalf. Leaving this field blank
            #     will default to NONE.
            #
            #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::TaxType, nil]
            optional :tax_type,
                     enum: -> { MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::TaxType }

            # @!parse
            #   # @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::TaxType]
            #   attr_writer :tax_type

            # @!parse
            #   # @param payment_gate_type [Symbol, MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::PaymentGateType]
            #   # @param stripe_config [MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::StripeConfig]
            #   # @param tax_type [Symbol, MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::TaxType]
            #   #
            #   def initialize(payment_gate_type:, stripe_config: nil, tax_type: nil, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

            # @abstract
            #
            # Gate access to the commit balance based on successful collection of payment.
            #   Select STRIPE for Metronome to facilitate payment via Stripe. Select EXTERNAL to
            #   facilitate payment using your own payment integration. Select NONE if you do not
            #   wish to payment gate the commit balance.
            #
            # @example
            # ```ruby
            # case payment_gate_type
            # in :NONE
            #   # ...
            # in :STRIPE
            #   # ...
            # in :EXTERNAL
            #   # ...
            # end
            # ```
            class PaymentGateType < MetronomeSDK::Enum
              NONE = :NONE
              STRIPE = :STRIPE
              EXTERNAL = :EXTERNAL

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end

            class StripeConfig < MetronomeSDK::BaseModel
              # @!attribute payment_type
              #   If left blank, will default to INVOICE
              #
              #   @return [Symbol, MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType]
              required :payment_type,
                       enum: -> { MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType }

              # @!parse
              #   # Only applicable if using Stripe as your payment gateway through Metronome.
              #   #
              #   # @param payment_type [Symbol, MetronomeSDK::Models::V2::ContractEditParams::UpdateSpendThresholdConfiguration::PaymentGateConfig::StripeConfig::PaymentType]
              #   #
              #   def initialize(payment_type:, **) = super

              # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

              # @abstract
              #
              # If left blank, will default to INVOICE
              #
              # @example
              # ```ruby
              # case payment_type
              # in :INVOICE
              #   # ...
              # in :PAYMENT_INTENT
              #   # ...
              # end
              # ```
              class PaymentType < MetronomeSDK::Enum
                INVOICE = :INVOICE
                PAYMENT_INTENT = :PAYMENT_INTENT

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   #
                #   def self.values; end
              end
            end

            # @abstract
            #
            # Stripe tax is only supported for Stripe payment gateway. Select NONE if you do
            #   not wish Metronome to calculate tax on your behalf. Leaving this field blank
            #   will default to NONE.
            #
            # @example
            # ```ruby
            # case tax_type
            # in :NONE
            #   # ...
            # in :STRIPE
            #   # ...
            # end
            # ```
            class TaxType < MetronomeSDK::Enum
              NONE = :NONE
              STRIPE = :STRIPE

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   #
              #   def self.values; end
            end
          end
        end
      end
    end
  end
end
