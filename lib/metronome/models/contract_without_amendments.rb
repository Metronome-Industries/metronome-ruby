# frozen_string_literal: true

module Metronome
  module Models
    class ContractWithoutAmendments < BaseModel
      # @!attribute [rw] commits
      #   @return [Array<Metronome::Models::Commit>]
      required :commits, Metronome::ArrayOf.new(-> { Metronome::Models::Commit })

      # @!attribute [rw] created_at
      #   @return [DateTime]
      required :created_at, DateTime

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
      #   @return [DateTime]
      required :starting_at, DateTime

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
      #   @return [DateTime]
      optional :ending_before, DateTime

      # @!attribute [rw] name_
      #   @return [String]
      optional :name_, String

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

      class Transition < BaseModel
        # @!attribute [rw] from_contract_id
        #   @return [String]
        required :from_contract_id, String

        # @!attribute [rw] to_contract_id
        #   @return [String]
        required :to_contract_id, String

        # @!attribute [rw] type
        #   One of the constants defined in {Metronome::Models::ContractWithoutAmendments::Transition::Type}
        #   @return [Symbol]
        required :type, enum: -> { Metronome::Models::ContractWithoutAmendments::Transition::Type }

        class Type < Metronome::Enum
          SUPERSEDE = :SUPERSEDE
          RENEWAL = :RENEWAL
        end
      end

      class UsageStatementSchedule < BaseModel
        # @!attribute [rw] frequency
        #   One of the constants defined in {Metronome::Models::ContractWithoutAmendments::UsageStatementSchedule::Frequency}
        #   @return [Symbol]
        required :frequency,
                 enum: -> { Metronome::Models::ContractWithoutAmendments::UsageStatementSchedule::Frequency }

        class Frequency < Metronome::Enum
          MONTHLY = :MONTHLY
          QUARTERLY = :QUARTERLY
          ANNUAL = :ANNUAL
        end
      end

      class ResellerRoyalty < BaseModel
        # @!attribute [rw] fraction
        #   @return [Float]
        required :fraction, Float

        # @!attribute [rw] netsuite_reseller_id
        #   @return [String]
        required :netsuite_reseller_id, String

        # @!attribute [rw] reseller_type
        #   One of the constants defined in {Metronome::Models::ContractWithoutAmendments::ResellerRoyalty::ResellerType}
        #   @return [Symbol]
        required :reseller_type,
                 enum: -> { Metronome::Models::ContractWithoutAmendments::ResellerRoyalty::ResellerType }

        # @!attribute [rw] starting_at
        #   @return [DateTime]
        required :starting_at, DateTime

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
        #   @return [DateTime]
        optional :ending_before, DateTime

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
      end

      class UsageFilter < BaseModel
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
                   lambda {
                     Metronome::Models::ContractWithoutAmendments::UsageFilter::Update
                   }
                 )

        class Update < BaseModel
          # @!attribute [rw] group_key
          #   @return [String]
          required :group_key, String

          # @!attribute [rw] group_values
          #   @return [Array<String>]
          required :group_values, Metronome::ArrayOf.new(String)

          # @!attribute [rw] starting_at
          #   @return [DateTime]
          required :starting_at, DateTime
        end
      end
    end
  end
end
