# frozen_string_literal: true

module Metronome
  module Models
    class ContractWithoutAmendments < Metronome::BaseModel
      # @!attribute [rw] commits
      #   @return [Array<Metronome::Models::Commit>]
      required :commits, Metronome::ArrayOf.new(-> { Metronome::Models::Commit })

      # @!attribute [rw] created_at
      #   @return [Time]
      required :created_at, Time

      # @!attribute [rw] created_by
      #   @return [String]
      required :created_by, String

      # @!attribute [rw] overrides
      #   @return [Array<Metronome::Models::Override>]
      required :overrides, Metronome::ArrayOf.new(-> { Metronome::Models::Override })

      # @!attribute [rw] scheduled_charges
      #   @return [Array<Metronome::Models::ScheduledCharge>]
      required :scheduled_charges, Metronome::ArrayOf.new(-> { Metronome::Models::ScheduledCharge })

      # @!attribute [rw] starting_at
      #   @return [Time]
      required :starting_at, Time

      # @!attribute [rw] transitions
      #   @return [Array<Metronome::Models::ContractWithoutAmendments::Transition>]
      required :transitions,
               Metronome::ArrayOf.new(-> { Metronome::Models::ContractWithoutAmendments::Transition })

      # @!attribute [rw] usage_statement_schedule
      #   @return [Metronome::Models::ContractWithoutAmendments::UsageStatementSchedule]
      required :usage_statement_schedule,
               -> { Metronome::Models::ContractWithoutAmendments::UsageStatementSchedule }

      # @!attribute [rw] credits
      #   @return [Array<Metronome::Models::Credit>]
      optional :credits, Metronome::ArrayOf.new(-> { Metronome::Models::Credit })

      # @!attribute [rw] discounts
      #   This field's availability is dependent on your client's configuration.
      #   @return [Array<Metronome::Models::Discount>]
      optional :discounts, Metronome::ArrayOf.new(-> { Metronome::Models::Discount })

      # @!attribute [rw] ending_before
      #   @return [Time]
      optional :ending_before, Time

      # @!attribute [rw] name_
      #   @return [String]
      optional :name_, String, api_name: :name

      # @!attribute [rw] net_payment_terms_days
      #   @return [Float]
      optional :net_payment_terms_days, Float

      # @!attribute [rw] netsuite_sales_order_id
      #   This field's availability is dependent on your client's configuration.
      #   @return [String]
      optional :netsuite_sales_order_id, String

      # @!attribute [rw] professional_services
      #   This field's availability is dependent on your client's configuration.
      #   @return [Array<Metronome::Models::ProService>]
      optional :professional_services, Metronome::ArrayOf.new(-> { Metronome::Models::ProService })

      # @!attribute [rw] rate_card_id
      #   @return [String]
      optional :rate_card_id, String

      # @!attribute [rw] reseller_royalties
      #   This field's availability is dependent on your client's configuration.
      #   @return [Array<Metronome::Models::ContractWithoutAmendments::ResellerRoyalty>]
      optional :reseller_royalties,
               Metronome::ArrayOf.new(-> { Metronome::Models::ContractWithoutAmendments::ResellerRoyalty })

      # @!attribute [rw] salesforce_opportunity_id
      #   This field's availability is dependent on your client's configuration.
      #   @return [String]
      optional :salesforce_opportunity_id, String

      # @!attribute [rw] total_contract_value
      #   This field's availability is dependent on your client's configuration.
      #   @return [Float]
      optional :total_contract_value, Float

      # @!attribute [rw] usage_filter
      #   @return [Metronome::Models::ContractWithoutAmendments::UsageFilter]
      optional :usage_filter, -> { Metronome::Models::ContractWithoutAmendments::UsageFilter }

      class Transition < Metronome::BaseModel
        # @!attribute [rw] from_contract_id
        #   @return [String]
        required :from_contract_id, String

        # @!attribute [rw] to_contract_id
        #   @return [String]
        required :to_contract_id, String

        # @!attribute [rw] type
        #   @return [Symbol, Metronome::Models::ContractWithoutAmendments::Transition::Type]
        required :type, enum: -> { Metronome::Models::ContractWithoutAmendments::Transition::Type }

        class Type < Metronome::Enum
          SUPERSEDE = :SUPERSEDE
          RENEWAL = :RENEWAL
        end

        # @!parse
        #   # Create a new instance of Transition from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :from_contract_id
        #   #   @option data [String] :to_contract_id
        #   #   @option data [String] :type
        #   def initialize(data = {}) = super
      end

      class UsageStatementSchedule < Metronome::BaseModel
        # @!attribute [rw] billing_anchor_date
        #   Contract usage statements follow a selected cadence based on this date.
        #   @return [Time]
        required :billing_anchor_date, Time

        # @!attribute [rw] frequency
        #   @return [Symbol, Metronome::Models::ContractWithoutAmendments::UsageStatementSchedule::Frequency]
        required :frequency,
                 enum: -> { Metronome::Models::ContractWithoutAmendments::UsageStatementSchedule::Frequency }

        class Frequency < Metronome::Enum
          MONTHLY = :MONTHLY
          QUARTERLY = :QUARTERLY
          ANNUAL = :ANNUAL
        end

        # @!parse
        #   # Create a new instance of UsageStatementSchedule from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :billing_anchor_date Contract usage statements follow a selected cadence based on this date.
        #   #   @option data [String] :frequency
        #   def initialize(data = {}) = super
      end

      class ResellerRoyalty < Metronome::BaseModel
        # @!attribute [rw] fraction
        #   @return [Float]
        required :fraction, Float

        # @!attribute [rw] netsuite_reseller_id
        #   @return [String]
        required :netsuite_reseller_id, String

        # @!attribute [rw] reseller_type
        #   @return [Symbol, Metronome::Models::ContractWithoutAmendments::ResellerRoyalty::ResellerType]
        required :reseller_type,
                 enum: -> { Metronome::Models::ContractWithoutAmendments::ResellerRoyalty::ResellerType }

        # @!attribute [rw] starting_at
        #   @return [Time]
        required :starting_at, Time

        # @!attribute [rw] applicable_product_ids
        #   @return [Array<String>]
        optional :applicable_product_ids, Metronome::ArrayOf.new(String)

        # @!attribute [rw] applicable_product_tags
        #   @return [Array<String>]
        optional :applicable_product_tags, Metronome::ArrayOf.new(String)

        # @!attribute [rw] aws_account_number
        #   @return [String]
        optional :aws_account_number, String

        # @!attribute [rw] aws_offer_id
        #   @return [String]
        optional :aws_offer_id, String

        # @!attribute [rw] aws_payer_reference_id
        #   @return [String]
        optional :aws_payer_reference_id, String

        # @!attribute [rw] ending_before
        #   @return [Time]
        optional :ending_before, Time

        # @!attribute [rw] gcp_account_id
        #   @return [String]
        optional :gcp_account_id, String

        # @!attribute [rw] gcp_offer_id
        #   @return [String]
        optional :gcp_offer_id, String

        # @!attribute [rw] reseller_contract_value
        #   @return [Float]
        optional :reseller_contract_value, Float

        class ResellerType < Metronome::Enum
          AWS = :AWS
          AWS_PRO_SERVICE = :AWS_PRO_SERVICE
          GCP = :GCP
          GCP_PRO_SERVICE = :GCP_PRO_SERVICE
        end

        # @!parse
        #   # Create a new instance of ResellerRoyalty from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Float] :fraction
        #   #   @option data [String] :netsuite_reseller_id
        #   #   @option data [String] :reseller_type
        #   #   @option data [String] :starting_at
        #   #   @option data [Array<String>, nil] :applicable_product_ids
        #   #   @option data [Array<String>, nil] :applicable_product_tags
        #   #   @option data [String, nil] :aws_account_number
        #   #   @option data [String, nil] :aws_offer_id
        #   #   @option data [String, nil] :aws_payer_reference_id
        #   #   @option data [String, nil] :ending_before
        #   #   @option data [String, nil] :gcp_account_id
        #   #   @option data [String, nil] :gcp_offer_id
        #   #   @option data [Float, nil] :reseller_contract_value
        #   def initialize(data = {}) = super
      end

      class UsageFilter < Metronome::BaseModel
        # @!attribute [rw] current
        #   @return [Metronome::Models::BaseUsageFilter]
        required :current, -> { Metronome::Models::BaseUsageFilter }

        # @!attribute [rw] initial
        #   @return [Metronome::Models::BaseUsageFilter]
        required :initial, -> { Metronome::Models::BaseUsageFilter }

        # @!attribute [rw] updates
        #   @return [Array<Metronome::Models::ContractWithoutAmendments::UsageFilter::Update>]
        required :updates,
                 Metronome::ArrayOf.new(
                   -> {
                     Metronome::Models::ContractWithoutAmendments::UsageFilter::Update
                   }
                 )

        class Update < Metronome::BaseModel
          # @!attribute [rw] group_key
          #   @return [String]
          required :group_key, String

          # @!attribute [rw] group_values
          #   @return [Array<String>]
          required :group_values, Metronome::ArrayOf.new(String)

          # @!attribute [rw] starting_at
          #   @return [Time]
          required :starting_at, Time

          # @!parse
          #   # Create a new instance of Update from a Hash of raw data.
          #   #
          #   # @param data [Hash{Symbol => Object}] .
          #   #   @option data [String] :group_key
          #   #   @option data [Array<String>] :group_values
          #   #   @option data [String] :starting_at
          #   def initialize(data = {}) = super
        end

        # @!parse
        #   # Create a new instance of UsageFilter from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Object] :current
        #   #   @option data [Object] :initial
        #   #   @option data [Array<Object>] :updates
        #   def initialize(data = {}) = super
      end

      # @!parse
      #   # Create a new instance of ContractWithoutAmendments from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [Array<Object>] :commits
      #   #   @option data [String] :created_at
      #   #   @option data [String] :created_by
      #   #   @option data [Array<Object>] :overrides
      #   #   @option data [Array<Object>] :scheduled_charges
      #   #   @option data [String] :starting_at
      #   #   @option data [Array<Object>] :transitions
      #   #   @option data [Object] :usage_statement_schedule
      #   #   @option data [Array<Object>, nil] :credits
      #   #   @option data [Array<Object>, nil] :discounts This field's availability is dependent on your client's configuration.
      #   #   @option data [String, nil] :ending_before
      #   #   @option data [String, nil] :name
      #   #   @option data [Float, nil] :net_payment_terms_days
      #   #   @option data [String, nil] :netsuite_sales_order_id This field's availability is dependent on your client's configuration.
      #   #   @option data [Array<Object>, nil] :professional_services This field's availability is dependent on your client's configuration.
      #   #   @option data [String, nil] :rate_card_id
      #   #   @option data [Array<Object>, nil] :reseller_royalties This field's availability is dependent on your client's configuration.
      #   #   @option data [String, nil] :salesforce_opportunity_id This field's availability is dependent on your client's configuration.
      #   #   @option data [Float, nil] :total_contract_value This field's availability is dependent on your client's configuration.
      #   #   @option data [Object, nil] :usage_filter
      #   def initialize(data = {}) = super
    end
  end
end
