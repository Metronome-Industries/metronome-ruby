# frozen_string_literal: true

module Metronome
  module Models
    class ContractWithoutAmendments < Metronome::BaseModel
      # @!attribute commits
      #
      #   @return [Array<Metronome::Models::Commit>]
      required :commits, Metronome::ArrayOf[-> { Metronome::Models::Commit }]

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
      required :overrides, Metronome::ArrayOf[-> { Metronome::Models::Override }]

      # @!attribute scheduled_charges
      #
      #   @return [Array<Metronome::Models::ScheduledCharge>]
      required :scheduled_charges, Metronome::ArrayOf[-> { Metronome::Models::ScheduledCharge }]

      # @!attribute starting_at
      #
      #   @return [Time]
      required :starting_at, Time

      # @!attribute transitions
      #
      #   @return [Array<Metronome::Models::ContractWithoutAmendments::Transition>]
      required :transitions,
               Metronome::ArrayOf[-> {
                 Metronome::Models::ContractWithoutAmendments::Transition
               }]

      # @!attribute usage_statement_schedule
      #
      #   @return [Metronome::Models::ContractWithoutAmendments::UsageStatementSchedule]
      required :usage_statement_schedule,
               -> { Metronome::Models::ContractWithoutAmendments::UsageStatementSchedule }

      # @!attribute credits
      #
      #   @return [Array<Metronome::Models::Credit>]
      optional :credits, Metronome::ArrayOf[-> { Metronome::Models::Credit }]

      # @!attribute discounts
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [Array<Metronome::Models::Discount>]
      optional :discounts, Metronome::ArrayOf[-> { Metronome::Models::Discount }]

      # @!attribute ending_before
      #
      #   @return [Time]
      optional :ending_before, Time

      # @!attribute name
      #
      #   @return [String]
      optional :name, String

      # @!attribute net_payment_terms_days
      #
      #   @return [Float]
      optional :net_payment_terms_days, Float

      # @!attribute netsuite_sales_order_id
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [String]
      optional :netsuite_sales_order_id, String

      # @!attribute professional_services
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [Array<Metronome::Models::ProService>]
      optional :professional_services, Metronome::ArrayOf[-> { Metronome::Models::ProService }]

      # @!attribute rate_card_id
      #
      #   @return [String]
      optional :rate_card_id, String

      # @!attribute reseller_royalties
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [Array<Metronome::Models::ContractWithoutAmendments::ResellerRoyalty>]
      optional :reseller_royalties,
               Metronome::ArrayOf[-> { Metronome::Models::ContractWithoutAmendments::ResellerRoyalty }]

      # @!attribute salesforce_opportunity_id
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [String]
      optional :salesforce_opportunity_id, String

      # @!attribute total_contract_value
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [Float]
      optional :total_contract_value, Float

      # @!attribute usage_filter
      #
      #   @return [Metronome::Models::ContractWithoutAmendments::UsageFilter]
      optional :usage_filter, -> { Metronome::Models::ContractWithoutAmendments::UsageFilter }

      # @!parse
      #   # @param commits [Array<Metronome::Models::Commit>]
      #   #
      #   # @param created_at [String]
      #   #
      #   # @param created_by [String]
      #   #
      #   # @param overrides [Array<Metronome::Models::Override>]
      #   #
      #   # @param scheduled_charges [Array<Metronome::Models::ScheduledCharge>]
      #   #
      #   # @param starting_at [String]
      #   #
      #   # @param transitions [Array<Metronome::Models::ContractWithoutAmendments::Transition>]
      #   #
      #   # @param usage_statement_schedule [Metronome::Models::ContractWithoutAmendments::UsageStatementSchedule]
      #   #
      #   # @param credits [Array<Metronome::Models::Credit>, nil]
      #   #
      #   # @param discounts [Array<Metronome::Models::Discount>, nil] This field's availability is dependent on your client's configuration.
      #   #
      #   # @param ending_before [String, nil]
      #   #
      #   # @param name [String, nil]
      #   #
      #   # @param net_payment_terms_days [Float, nil]
      #   #
      #   # @param netsuite_sales_order_id [String, nil] This field's availability is dependent on your client's configuration.
      #   #
      #   # @param professional_services [Array<Metronome::Models::ProService>, nil] This field's availability is dependent on your client's configuration.
      #   #
      #   # @param rate_card_id [String, nil]
      #   #
      #   # @param reseller_royalties [Array<Metronome::Models::ContractWithoutAmendments::ResellerRoyalty>, nil] This field's availability is dependent on your client's configuration.
      #   #
      #   # @param salesforce_opportunity_id [String, nil] This field's availability is dependent on your client's configuration.
      #   #
      #   # @param total_contract_value [Float, nil] This field's availability is dependent on your client's configuration.
      #   #
      #   # @param usage_filter [Metronome::Models::ContractWithoutAmendments::UsageFilter, nil]
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
      #     total_contract_value: nil,
      #     usage_filter: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Metronome::BaseModel) -> void

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
        #   # @param type [String]
        #   #
        #   def initialize(from_contract_id:, to_contract_id:, type:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case enum
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
        #   # @param billing_anchor_date [String] Contract usage statements follow a selected cadence based on this date.
        #   #
        #   # @param frequency [String]
        #   #
        #   def initialize(billing_anchor_date:, frequency:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        #
        # ```ruby
        # case enum
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

        # @!attribute applicable_product_ids
        #
        #   @return [Array<String>]
        optional :applicable_product_ids, Metronome::ArrayOf[String]

        # @!attribute applicable_product_tags
        #
        #   @return [Array<String>]
        optional :applicable_product_tags, Metronome::ArrayOf[String]

        # @!attribute aws_account_number
        #
        #   @return [String]
        optional :aws_account_number, String

        # @!attribute aws_offer_id
        #
        #   @return [String]
        optional :aws_offer_id, String

        # @!attribute aws_payer_reference_id
        #
        #   @return [String]
        optional :aws_payer_reference_id, String

        # @!attribute ending_before
        #
        #   @return [Time]
        optional :ending_before, Time

        # @!attribute gcp_account_id
        #
        #   @return [String]
        optional :gcp_account_id, String

        # @!attribute gcp_offer_id
        #
        #   @return [String]
        optional :gcp_offer_id, String

        # @!attribute reseller_contract_value
        #
        #   @return [Float]
        optional :reseller_contract_value, Float

        # @!parse
        #   # @param fraction [Float]
        #   # @param netsuite_reseller_id [String]
        #   # @param reseller_type [String]
        #   # @param starting_at [String]
        #   # @param applicable_product_ids [Array<String>, nil]
        #   # @param applicable_product_tags [Array<String>, nil]
        #   # @param aws_account_number [String, nil]
        #   # @param aws_offer_id [String, nil]
        #   # @param aws_payer_reference_id [String, nil]
        #   # @param ending_before [String, nil]
        #   # @param gcp_account_id [String, nil]
        #   # @param gcp_offer_id [String, nil]
        #   # @param reseller_contract_value [Float, nil]
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
        #
        # ```ruby
        # case enum
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

      class UsageFilter < Metronome::BaseModel
        # @!attribute current
        #
        #   @return [Metronome::Models::BaseUsageFilter]
        required :current, -> { Metronome::Models::BaseUsageFilter }

        # @!attribute initial
        #
        #   @return [Metronome::Models::BaseUsageFilter]
        required :initial, -> { Metronome::Models::BaseUsageFilter }

        # @!attribute updates
        #
        #   @return [Array<Metronome::Models::ContractWithoutAmendments::UsageFilter::Update>]
        required :updates,
                 Metronome::ArrayOf[-> { Metronome::Models::ContractWithoutAmendments::UsageFilter::Update }]

        # @!parse
        #   # @param current [Metronome::Models::BaseUsageFilter, nil]
        #   # @param initial [Metronome::Models::BaseUsageFilter]
        #   # @param updates [Array<Metronome::Models::ContractWithoutAmendments::UsageFilter::Update>]
        #   #
        #   def initialize(current:, initial:, updates:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

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
          #   # @param starting_at [String]
          #   #
          #   def initialize(group_key:, group_values:, starting_at:, **) = super

          # def initialize: (Hash | Metronome::BaseModel) -> void
        end
      end
    end
  end
end
