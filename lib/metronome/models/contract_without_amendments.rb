# frozen_string_literal: true

module Metronome
  module Models
    # @example
    # ```ruby
    # contract_without_amendments => {
    #   commits: -> { Metronome::ArrayOf[Metronome::Models::Commit] === _1 },
    #   created_at: Time,
    #   created_by: String,
    #   overrides: -> { Metronome::ArrayOf[Metronome::Models::Override] === _1 },
    #   scheduled_charges: -> { Metronome::ArrayOf[Metronome::Models::ScheduledCharge] === _1 },
    #   **_
    # }
    # ```
    class ContractWithoutAmendments < Metronome::BaseModel
      # @!attribute commits
      #
      #   @return [Array<Metronome::Models::Commit>]
      required :commits, -> { Metronome::ArrayOf[Metronome::Models::Commit] }

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute created_by
      #
      #   @return [String]
      required :created_by, String

      # @!attribute overrides
      #
      #   @return [Array<Metronome::Models::Override>]
      required :overrides, -> { Metronome::ArrayOf[Metronome::Models::Override] }

      # @!attribute scheduled_charges
      #
      #   @return [Array<Metronome::Models::ScheduledCharge>]
      required :scheduled_charges, -> { Metronome::ArrayOf[Metronome::Models::ScheduledCharge] }

      # @!attribute starting_at
      #
      #   @return [Time]
      required :starting_at, Time

      # @!attribute transitions
      #
      #   @return [Array<Metronome::Models::ContractWithoutAmendments::Transition>]
      required :transitions,
               -> {
                 Metronome::ArrayOf[Metronome::Models::ContractWithoutAmendments::Transition]
               }

      # @!attribute usage_statement_schedule
      #
      #   @return [Metronome::Models::ContractWithoutAmendments::UsageStatementSchedule]
      required :usage_statement_schedule,
               -> { Metronome::Models::ContractWithoutAmendments::UsageStatementSchedule }

      # @!attribute [r] credits
      #
      #   @return [Array<Metronome::Models::Credit>]
      optional :credits, -> { Metronome::ArrayOf[Metronome::Models::Credit] }

      # @!parse
      #   # @return [Array<Metronome::Models::Credit>]
      #   attr_writer :credits

      # @!attribute [r] discounts
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [Array<Metronome::Models::Discount>]
      optional :discounts, -> { Metronome::ArrayOf[Metronome::Models::Discount] }

      # @!parse
      #   # @return [Array<Metronome::Models::Discount>]
      #   attr_writer :discounts

      # @!attribute [r] ending_before
      #
      #   @return [Time, nil]
      optional :ending_before, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :ending_before

      # @!attribute [r] name
      #
      #   @return [String, nil]
      optional :name, String

      # @!parse
      #   # @return [String]
      #   attr_writer :name

      # @!attribute [r] net_payment_terms_days
      #
      #   @return [Float, nil]
      optional :net_payment_terms_days, Float

      # @!parse
      #   # @return [Float]
      #   attr_writer :net_payment_terms_days

      # @!attribute [r] netsuite_sales_order_id
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [String, nil]
      optional :netsuite_sales_order_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :netsuite_sales_order_id

      # @!attribute [r] professional_services
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [Array<Metronome::Models::ProService>]
      optional :professional_services, -> { Metronome::ArrayOf[Metronome::Models::ProService] }

      # @!parse
      #   # @return [Array<Metronome::Models::ProService>]
      #   attr_writer :professional_services

      # @!attribute [r] rate_card_id
      #
      #   @return [String, nil]
      optional :rate_card_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :rate_card_id

      # @!attribute [r] reseller_royalties
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [Array<Metronome::Models::ContractWithoutAmendments::ResellerRoyalty>]
      optional :reseller_royalties,
               -> { Metronome::ArrayOf[Metronome::Models::ContractWithoutAmendments::ResellerRoyalty] }

      # @!parse
      #   # @return [Array<Metronome::Models::ContractWithoutAmendments::ResellerRoyalty>]
      #   attr_writer :reseller_royalties

      # @!attribute [r] salesforce_opportunity_id
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [String, nil]
      optional :salesforce_opportunity_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :salesforce_opportunity_id

      # @!attribute [r] scheduled_charges_on_usage_invoices
      #   Determines which scheduled and commit charges to consolidate onto the Contract's
      #     usage invoice. The charge's `timestamp` must match the usage invoice's
      #     `ending_before` date for consolidation to occur. This field cannot be modified
      #     after a Contract has been created. If this field is omitted, charges will appear
      #     on a separate invoice from usage charges.
      #
      #   @return [Symbol, Metronome::Models::ContractWithoutAmendments::ScheduledChargesOnUsageInvoices, nil]
      optional :scheduled_charges_on_usage_invoices,
               enum: -> { Metronome::Models::ContractWithoutAmendments::ScheduledChargesOnUsageInvoices }

      # @!parse
      #   # @return [Symbol, Metronome::Models::ContractWithoutAmendments::ScheduledChargesOnUsageInvoices]
      #   attr_writer :scheduled_charges_on_usage_invoices

      # @!attribute [r] total_contract_value
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [Float, nil]
      optional :total_contract_value, Float

      # @!parse
      #   # @return [Float]
      #   attr_writer :total_contract_value

      # @!attribute [r] usage_filter
      #
      #   @return [Metronome::Models::ContractWithoutAmendments::UsageFilter, nil]
      optional :usage_filter, -> { Metronome::Models::ContractWithoutAmendments::UsageFilter }

      # @!parse
      #   # @return [Metronome::Models::ContractWithoutAmendments::UsageFilter]
      #   attr_writer :usage_filter

      # @!parse
      #   # @param commits [Array<Metronome::Models::Commit>]
      #   # @param created_at [Time]
      #   # @param created_by [String]
      #   # @param overrides [Array<Metronome::Models::Override>]
      #   # @param scheduled_charges [Array<Metronome::Models::ScheduledCharge>]
      #   # @param starting_at [Time]
      #   # @param transitions [Array<Metronome::Models::ContractWithoutAmendments::Transition>]
      #   # @param usage_statement_schedule [Metronome::Models::ContractWithoutAmendments::UsageStatementSchedule]
      #   # @param credits [Array<Metronome::Models::Credit>]
      #   # @param discounts [Array<Metronome::Models::Discount>]
      #   # @param ending_before [Time]
      #   # @param name [String]
      #   # @param net_payment_terms_days [Float]
      #   # @param netsuite_sales_order_id [String]
      #   # @param professional_services [Array<Metronome::Models::ProService>]
      #   # @param rate_card_id [String]
      #   # @param reseller_royalties [Array<Metronome::Models::ContractWithoutAmendments::ResellerRoyalty>]
      #   # @param salesforce_opportunity_id [String]
      #   # @param scheduled_charges_on_usage_invoices [Symbol, Metronome::Models::ContractWithoutAmendments::ScheduledChargesOnUsageInvoices]
      #   # @param total_contract_value [Float]
      #   # @param usage_filter [Metronome::Models::ContractWithoutAmendments::UsageFilter]
      #   #
      #   def initialize(
      #     commits:,
      #     created_at:,
      #     created_by:,
      #     overrides:,
      #     scheduled_charges:,
      #     starting_at:,
      #     transitions:,
      #     usage_statement_schedule:,
      #     credits: nil,
      #     discounts: nil,
      #     ending_before: nil,
      #     name: nil,
      #     net_payment_terms_days: nil,
      #     netsuite_sales_order_id: nil,
      #     professional_services: nil,
      #     rate_card_id: nil,
      #     reseller_royalties: nil,
      #     salesforce_opportunity_id: nil,
      #     scheduled_charges_on_usage_invoices: nil,
      #     total_contract_value: nil,
      #     usage_filter: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Metronome::BaseModel) -> void

      # @example
      # ```ruby
      # transition => {
      #   from_contract_id: String,
      #   to_contract_id: String,
      #   type: Metronome::Models::ContractWithoutAmendments::Transition::Type
      # }
      # ```
      class Transition < Metronome::BaseModel
        # @!attribute from_contract_id
        #
        #   @return [String]
        required :from_contract_id, String

        # @!attribute to_contract_id
        #
        #   @return [String]
        required :to_contract_id, String

        # @!attribute type
        #
        #   @return [Symbol, Metronome::Models::ContractWithoutAmendments::Transition::Type]
        required :type, enum: -> { Metronome::Models::ContractWithoutAmendments::Transition::Type }

        # @!parse
        #   # @param from_contract_id [String]
        #   # @param to_contract_id [String]
        #   # @param type [Symbol, Metronome::Models::ContractWithoutAmendments::Transition::Type]
        #   #
        #   def initialize(from_contract_id:, to_contract_id:, type:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        # ```ruby
        # case type
        # in :SUPERSEDE
        #   # ...
        # in :RENEWAL
        #   # ...
        # end
        # ```
        class Type < Metronome::Enum
          SUPERSEDE = :SUPERSEDE
          RENEWAL = :RENEWAL

          finalize!
        end
      end

      # @example
      # ```ruby
      # usage_statement_schedule => {
      #   billing_anchor_date: Time,
      #   frequency: Metronome::Models::ContractWithoutAmendments::UsageStatementSchedule::Frequency
      # }
      # ```
      class UsageStatementSchedule < Metronome::BaseModel
        # @!attribute billing_anchor_date
        #   Contract usage statements follow a selected cadence based on this date.
        #
        #   @return [Time]
        required :billing_anchor_date, Time

        # @!attribute frequency
        #
        #   @return [Symbol, Metronome::Models::ContractWithoutAmendments::UsageStatementSchedule::Frequency]
        required :frequency,
                 enum: -> { Metronome::Models::ContractWithoutAmendments::UsageStatementSchedule::Frequency }

        # @!parse
        #   # @param billing_anchor_date [Time]
        #   # @param frequency [Symbol, Metronome::Models::ContractWithoutAmendments::UsageStatementSchedule::Frequency]
        #   #
        #   def initialize(billing_anchor_date:, frequency:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        # ```ruby
        # case frequency
        # in :MONTHLY
        #   # ...
        # in :QUARTERLY
        #   # ...
        # in :ANNUAL
        #   # ...
        # end
        # ```
        class Frequency < Metronome::Enum
          MONTHLY = :MONTHLY
          QUARTERLY = :QUARTERLY
          ANNUAL = :ANNUAL

          finalize!
        end
      end

      # @example
      # ```ruby
      # reseller_royalty => {
      #   fraction: Float,
      #   netsuite_reseller_id: String,
      #   reseller_type: Metronome::Models::ContractWithoutAmendments::ResellerRoyalty::ResellerType,
      #   starting_at: Time,
      #   applicable_product_ids: -> { Metronome::ArrayOf[String] === _1 },
      #   **_
      # }
      # ```
      class ResellerRoyalty < Metronome::BaseModel
        # @!attribute fraction
        #
        #   @return [Float]
        required :fraction, Float

        # @!attribute netsuite_reseller_id
        #
        #   @return [String]
        required :netsuite_reseller_id, String

        # @!attribute reseller_type
        #
        #   @return [Symbol, Metronome::Models::ContractWithoutAmendments::ResellerRoyalty::ResellerType]
        required :reseller_type,
                 enum: -> { Metronome::Models::ContractWithoutAmendments::ResellerRoyalty::ResellerType }

        # @!attribute starting_at
        #
        #   @return [Time]
        required :starting_at, Time

        # @!attribute [r] applicable_product_ids
        #
        #   @return [Array<String>]
        optional :applicable_product_ids, Metronome::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :applicable_product_ids

        # @!attribute [r] applicable_product_tags
        #
        #   @return [Array<String>]
        optional :applicable_product_tags, Metronome::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :applicable_product_tags

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

        # @!attribute [r] ending_before
        #
        #   @return [Time, nil]
        optional :ending_before, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :ending_before

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

        # @!attribute [r] reseller_contract_value
        #
        #   @return [Float, nil]
        optional :reseller_contract_value, Float

        # @!parse
        #   # @return [Float]
        #   attr_writer :reseller_contract_value

        # @!parse
        #   # @param fraction [Float]
        #   # @param netsuite_reseller_id [String]
        #   # @param reseller_type [Symbol, Metronome::Models::ContractWithoutAmendments::ResellerRoyalty::ResellerType]
        #   # @param starting_at [Time]
        #   # @param applicable_product_ids [Array<String>]
        #   # @param applicable_product_tags [Array<String>]
        #   # @param aws_account_number [String]
        #   # @param aws_offer_id [String]
        #   # @param aws_payer_reference_id [String]
        #   # @param ending_before [Time]
        #   # @param gcp_account_id [String]
        #   # @param gcp_offer_id [String]
        #   # @param reseller_contract_value [Float]
        #   #
        #   def initialize(
        #     fraction:,
        #     netsuite_reseller_id:,
        #     reseller_type:,
        #     starting_at:,
        #     applicable_product_ids: nil,
        #     applicable_product_tags: nil,
        #     aws_account_number: nil,
        #     aws_offer_id: nil,
        #     aws_payer_reference_id: nil,
        #     ending_before: nil,
        #     gcp_account_id: nil,
        #     gcp_offer_id: nil,
        #     reseller_contract_value: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Metronome::BaseModel) -> void

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
        class ResellerType < Metronome::Enum
          AWS = :AWS
          AWS_PRO_SERVICE = :AWS_PRO_SERVICE
          GCP = :GCP
          GCP_PRO_SERVICE = :GCP_PRO_SERVICE

          finalize!
        end
      end

      # Determines which scheduled and commit charges to consolidate onto the Contract's
      #   usage invoice. The charge's `timestamp` must match the usage invoice's
      #   `ending_before` date for consolidation to occur. This field cannot be modified
      #   after a Contract has been created. If this field is omitted, charges will appear
      #   on a separate invoice from usage charges.
      #
      # @example
      # ```ruby
      # case scheduled_charges_on_usage_invoices
      # in :ALL
      #   # ...
      # end
      # ```
      class ScheduledChargesOnUsageInvoices < Metronome::Enum
        ALL = :ALL

        finalize!
      end

      # @example
      # ```ruby
      # usage_filter => {
      #   current: Metronome::Models::BaseUsageFilter,
      #   initial: Metronome::Models::BaseUsageFilter,
      #   updates: -> { Metronome::ArrayOf[Metronome::Models::ContractWithoutAmendments::UsageFilter::Update] === _1 }
      # }
      # ```
      class UsageFilter < Metronome::BaseModel
        # @!attribute current
        #
        #   @return [Metronome::Models::BaseUsageFilter, nil]
        required :current, -> { Metronome::Models::BaseUsageFilter }, nil?: true

        # @!attribute initial
        #
        #   @return [Metronome::Models::BaseUsageFilter]
        required :initial, -> { Metronome::Models::BaseUsageFilter }

        # @!attribute updates
        #
        #   @return [Array<Metronome::Models::ContractWithoutAmendments::UsageFilter::Update>]
        required :updates,
                 -> { Metronome::ArrayOf[Metronome::Models::ContractWithoutAmendments::UsageFilter::Update] }

        # @!parse
        #   # @param current [Metronome::Models::BaseUsageFilter, nil]
        #   # @param initial [Metronome::Models::BaseUsageFilter]
        #   # @param updates [Array<Metronome::Models::ContractWithoutAmendments::UsageFilter::Update>]
        #   #
        #   def initialize(current:, initial:, updates:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        # ```ruby
        # update => {
        #   group_key: String,
        #   group_values: -> { Metronome::ArrayOf[String] === _1 },
        #   starting_at: Time
        # }
        # ```
        class Update < Metronome::BaseModel
          # @!attribute group_key
          #
          #   @return [String]
          required :group_key, String

          # @!attribute group_values
          #
          #   @return [Array<String>]
          required :group_values, Metronome::ArrayOf[String]

          # @!attribute starting_at
          #
          #   @return [Time]
          required :starting_at, Time

          # @!parse
          #   # @param group_key [String]
          #   # @param group_values [Array<String>]
          #   # @param starting_at [Time]
          #   #
          #   def initialize(group_key:, group_values:, starting_at:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void
        end
      end
    end
  end
end
