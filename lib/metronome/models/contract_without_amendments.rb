# frozen_string_literal: true

module Metronome
  module Models
    class ContractWithoutAmendments < BaseModel
      # @!attribute [rw] commits
      #   @return [Array<Metronome::Models::Commit>]
      required :commits, Metronome::ArrayOf.new(-> { Metronome::Models::Commit })

      # @!attribute [rw] created_at
      #   @return [String]
      required :created_at, String

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
      #   @return [String]
      required :starting_at, String

      # @!attribute [rw] transitions
      #   @return [Array<Metronome::Models::ContractWithoutAmendments::Transition>]
      required :transitions,
               Metronome::ArrayOf.new(-> { Metronome::Models::ContractWithoutAmendments::Transition })

      # @!attribute [rw] usage_statement_schedule
      #   @return [Metronome::Models::ContractWithoutAmendments::UsageStatementSchedule]
      required :usage_statement_schedule,
               -> { Metronome::Models::ContractWithoutAmendments::UsageStatementSchedule }

      # @!attribute [rw] credits
      #   @return [Array<Metronome::Models::ContractWithoutAmendments::Credit>]
      optional :credits, Metronome::ArrayOf.new(-> { Metronome::Models::ContractWithoutAmendments::Credit })

      # @!attribute [rw] discounts
      #   This field's availability is dependent on your client's configuration.
      #   @return [Array<Metronome::Models::Discount>]
      optional :discounts, Metronome::ArrayOf.new(-> { Metronome::Models::Discount })

      # @!attribute [rw] ending_before
      #   @return [String]
      optional :ending_before, String

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
      #   @return [Array<Metronome::Models::ContractWithoutAmendments::ProfessionalService>]
      optional :professional_services,
               Metronome::ArrayOf.new(-> { Metronome::Models::ContractWithoutAmendments::ProfessionalService })

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
        #   @return [Symbol]
        required :type, Metronome::Enum.new(:SUPERSEDE, :RENEWAL)
      end

      class UsageStatementSchedule < BaseModel
        # @!attribute [rw] frequency
        #   @return [Symbol]
        required :frequency, Metronome::Enum.new(:MONTHLY, :monthly, :QUARTERLY, :quarterly)
      end

      class Credit < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # @!attribute [rw] product
        #   @return [Metronome::Models::ContractWithoutAmendments::Credit::Product]
        required :product, -> { Metronome::Models::ContractWithoutAmendments::Credit::Product }

        # @!attribute [rw] type
        #   @return [Symbol]
        required :type, Metronome::Enum.new(:CREDIT)

        # @!attribute [rw] access_schedule
        #   The schedule that the customer will gain access to the credits.
        #   @return [Metronome::Models::ContractWithoutAmendments::Credit::AccessSchedule]
        optional :access_schedule, -> { Metronome::Models::ContractWithoutAmendments::Credit::AccessSchedule }

        # @!attribute [rw] applicable_contract_ids
        #   @return [Array<String>]
        optional :applicable_contract_ids, Metronome::ArrayOf.new(String)

        # @!attribute [rw] applicable_product_ids
        #   @return [Array<String>]
        optional :applicable_product_ids, Metronome::ArrayOf.new(String)

        # @!attribute [rw] applicable_product_tags
        #   @return [Array<String>]
        optional :applicable_product_tags, Metronome::ArrayOf.new(String)

        # @!attribute [rw] contract
        #   @return [Metronome::Models::ContractWithoutAmendments::Credit::Contract]
        optional :contract, -> { Metronome::Models::ContractWithoutAmendments::Credit::Contract }

        # @!attribute [rw] custom_fields
        #   @return [Hash]
        optional :custom_fields, Hash

        # @!attribute [rw] description
        #   @return [String]
        optional :description, String

        # @!attribute [rw] ledger
        #   A list of ordered events that impact the balance of a credit. For example, an invoice deduction or an expiration.
        #   @return [Array<Metronome::Models::ContractWithoutAmendments::Credit::Ledger::UnnamedTypeWithunionParent13|Metronome::Models::ContractWithoutAmendments::Credit::Ledger::UnnamedTypeWithunionParent14|Metronome::Models::ContractWithoutAmendments::Credit::Ledger::UnnamedTypeWithunionParent15|Metronome::Models::ContractWithoutAmendments::Credit::Ledger::UnnamedTypeWithunionParent16|Metronome::Models::ContractWithoutAmendments::Credit::Ledger::UnnamedTypeWithunionParent17|Metronome::Models::ContractWithoutAmendments::Credit::Ledger::UnnamedTypeWithunionParent18>]
        optional :ledger, Metronome::ArrayOf.new(Metronome::Unknown)

        # @!attribute [rw] name_
        #   @return [String]
        optional :name_, String

        # @!attribute [rw] netsuite_sales_order_id
        #   This field's availability is dependent on your client's configuration.
        #   @return [String]
        optional :netsuite_sales_order_id, String

        # @!attribute [rw] priority
        #   If multiple credits or commits are applicable, the one with the lower priority will apply first.
        #   @return [Float]
        optional :priority, Float

        # @!attribute [rw] salesforce_opportunity_id
        #   This field's availability is dependent on your client's configuration.
        #   @return [String]
        optional :salesforce_opportunity_id, String

        class Product < BaseModel
          # @!attribute [rw] id
          #   @return [String]
          required :id, String

          # @!attribute [rw] name_
          #   @return [String]
          required :name_, String
        end

        class AccessSchedule < BaseModel
          # @!attribute [rw] schedule_items
          #   @return [Array<Metronome::Models::ContractWithoutAmendments::Credit::AccessSchedule::ScheduleItem>]
          required :schedule_items,
                   Metronome::ArrayOf.new(-> { Metronome::Models::ContractWithoutAmendments::Credit::AccessSchedule::ScheduleItem })

          # @!attribute [rw] credit_type
          #   @return [Metronome::Models::CreditType]
          optional :credit_type, -> { Metronome::Models::CreditType }

          class ScheduleItem < BaseModel
            # @!attribute [rw] id
            #   @return [String]
            required :id, String

            # @!attribute [rw] amount
            #   @return [Float]
            required :amount, Float

            # @!attribute [rw] ending_before
            #   @return [String]
            required :ending_before, String

            # @!attribute [rw] starting_at
            #   @return [String]
            required :starting_at, String
          end
        end

        class Contract < BaseModel
          # @!attribute [rw] id
          #   @return [String]
          required :id, String
        end
      end

      class ProfessionalService < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # @!attribute [rw] max_amount
        #   Maximum amount for the term.
        #   @return [Float]
        required :max_amount, Float

        # @!attribute [rw] product_id
        #   @return [String]
        required :product_id, String

        # @!attribute [rw] quantity
        #   Quantity for the charge. Will be multiplied by unit_price to determine the amount.
        #   @return [Float]
        required :quantity, Float

        # @!attribute [rw] unit_price
        #   Unit price for the charge. Will be multiplied by quantity to determine the amount and must be specified.
        #   @return [Float]
        required :unit_price, Float

        # @!attribute [rw] custom_fields
        #   @return [Hash]
        optional :custom_fields, Hash

        # @!attribute [rw] description
        #   @return [String]
        optional :description, String

        # @!attribute [rw] netsuite_sales_order_id
        #   This field's availability is dependent on your client's configuration.
        #   @return [String]
        optional :netsuite_sales_order_id, String
      end

      class ResellerRoyalty < BaseModel
        # @!attribute [rw] fraction
        #   @return [Float]
        required :fraction, Float

        # @!attribute [rw] netsuite_reseller_id
        #   @return [String]
        required :netsuite_reseller_id, String

        # @!attribute [rw] reseller_type
        #   @return [Symbol]
        required :reseller_type, Metronome::Enum.new(:AWS, :AWS_PRO_SERVICE, :GCP, :GCP_PRO_SERVICE)

        # @!attribute [rw] starting_at
        #   @return [String]
        required :starting_at, String

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
        #   @return [String]
        optional :ending_before, String

        # @!attribute [rw] gcp_account_id
        #   @return [String]
        optional :gcp_account_id, String

        # @!attribute [rw] gcp_offer_id
        #   @return [String]
        optional :gcp_offer_id, String

        # @!attribute [rw] reseller_contract_value
        #   @return [Float]
        optional :reseller_contract_value, Float
      end

      class UsageFilter < BaseModel
        # @!attribute [rw] current
        #   @return [Metronome::Models::ContractWithoutAmendments::UsageFilter::Current]
        required :current, -> { Metronome::Models::ContractWithoutAmendments::UsageFilter::Current }

        # @!attribute [rw] initial
        #   @return [Metronome::Models::ContractWithoutAmendments::UsageFilter::Initial]
        required :initial, -> { Metronome::Models::ContractWithoutAmendments::UsageFilter::Initial }

        # @!attribute [rw] updates
        #   @return [Array<Metronome::Models::ContractWithoutAmendments::UsageFilter::Update>]
        required :updates,
                 Metronome::ArrayOf.new(-> { Metronome::Models::ContractWithoutAmendments::UsageFilter::Update })

        class Current < BaseModel
          # @!attribute [rw] group_key
          #   @return [String]
          required :group_key, String

          # @!attribute [rw] group_values
          #   @return [Array<String>]
          required :group_values, Metronome::ArrayOf.new(String)

          # @!attribute [rw] starting_at
          #   @return [String]
          optional :starting_at, String
        end

        class Initial < BaseModel
          # @!attribute [rw] group_key
          #   @return [String]
          required :group_key, String

          # @!attribute [rw] group_values
          #   @return [Array<String>]
          required :group_values, Metronome::ArrayOf.new(String)

          # @!attribute [rw] starting_at
          #   @return [String]
          optional :starting_at, String
        end

        class Update < BaseModel
          # @!attribute [rw] group_key
          #   @return [String]
          required :group_key, String

          # @!attribute [rw] group_values
          #   @return [Array<String>]
          required :group_values, Metronome::ArrayOf.new(String)

          # @!attribute [rw] starting_at
          #   @return [String]
          required :starting_at, String
        end
      end
    end
  end
end
