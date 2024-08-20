# frozen_string_literal: true

module Metronome
  module Models
    class ContractRetrieveResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Metronome::Models::ContractRetrieveResponse::Data]
      required :data, -> { Metronome::Models::ContractRetrieveResponse::Data }

      class Data < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # @!attribute [rw] amendments
        #   @return [Array<Metronome::Models::ContractRetrieveResponse::Data::Amendment>]
        required :amendments,
                 Metronome::ArrayOf.new(-> { Metronome::Models::ContractRetrieveResponse::Data::Amendment })

        # @!attribute [rw] current
        #   @return [Metronome::Models::ContractWithoutAmendments]
        required :current, -> { Metronome::Models::ContractWithoutAmendments }

        # @!attribute [rw] customer_id
        #   @return [String]
        required :customer_id, String

        # @!attribute [rw] initial
        #   @return [Metronome::Models::ContractWithoutAmendments]
        required :initial, -> { Metronome::Models::ContractWithoutAmendments }

        # @!attribute [rw] custom_fields
        #   @return [Hash]
        optional :custom_fields, Hash

        # @!attribute [rw] customer_billing_provider_configuration
        #   This field's availability is dependent on your client's configuration.
        #   @return [Metronome::Models::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration]
        optional :customer_billing_provider_configuration,
                 -> { Metronome::Models::ContractRetrieveResponse::Data::CustomerBillingProviderConfiguration }

        # @!attribute [rw] uniqueness_key
        #   Prevents the creation of duplicates. If a request to create a record is made with a previously used uniqueness key, a new record will not be created and the request will fail with a 409 error.
        #   @return [String]
        optional :uniqueness_key, String

        class Amendment < BaseModel
          # @!attribute [rw] id
          #   @return [String]
          required :id, String

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

          # @!attribute [rw] credits
          #   @return [Array<Metronome::Models::ContractRetrieveResponse::Data::Amendment::Credit>]
          optional :credits,
                   Metronome::ArrayOf.new(-> { Metronome::Models::ContractRetrieveResponse::Data::Amendment::Credit })

          # @!attribute [rw] discounts
          #   This field's availability is dependent on your client's configuration.
          #   @return [Array<Metronome::Models::Discount>]
          optional :discounts, Metronome::ArrayOf.new(-> { Metronome::Models::Discount })

          # @!attribute [rw] netsuite_sales_order_id
          #   This field's availability is dependent on your client's configuration.
          #   @return [String]
          optional :netsuite_sales_order_id, String

          # @!attribute [rw] professional_services
          #   This field's availability is dependent on your client's configuration.
          #   @return [Array<Metronome::Models::ContractRetrieveResponse::Data::Amendment::ProfessionalService>]
          optional :professional_services,
                   Metronome::ArrayOf.new(-> { Metronome::Models::ContractRetrieveResponse::Data::Amendment::ProfessionalService })

          # @!attribute [rw] reseller_royalties
          #   This field's availability is dependent on your client's configuration.
          #   @return [Array<Metronome::Models::ContractRetrieveResponse::Data::Amendment::ResellerRoyalty>]
          optional :reseller_royalties,
                   Metronome::ArrayOf.new(-> { Metronome::Models::ContractRetrieveResponse::Data::Amendment::ResellerRoyalty })

          # @!attribute [rw] salesforce_opportunity_id
          #   This field's availability is dependent on your client's configuration.
          #   @return [String]
          optional :salesforce_opportunity_id, String

          class Credit < BaseModel
            # @!attribute [rw] id
            #   @return [String]
            required :id, String

            # @!attribute [rw] product
            #   @return [Metronome::Models::ContractRetrieveResponse::Data::Amendment::Credit::Product]
            required :product, -> { Metronome::Models::ContractRetrieveResponse::Data::Amendment::Credit::Product }

            # @!attribute [rw] type
            #   @return [Symbol]
            required :type, Metronome::Enum.new(:CREDIT)

            # @!attribute [rw] access_schedule
            #   The schedule that the customer will gain access to the credits.
            #   @return [Metronome::Models::ContractRetrieveResponse::Data::Amendment::Credit::AccessSchedule]
            optional :access_schedule,
                     -> { Metronome::Models::ContractRetrieveResponse::Data::Amendment::Credit::AccessSchedule }

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
            #   @return [Metronome::Models::ContractRetrieveResponse::Data::Amendment::Credit::Contract]
            optional :contract, -> { Metronome::Models::ContractRetrieveResponse::Data::Amendment::Credit::Contract }

            # @!attribute [rw] custom_fields
            #   @return [Hash]
            optional :custom_fields, Hash

            # @!attribute [rw] description
            #   @return [String]
            optional :description, String

            # @!attribute [rw] ledger
            #   A list of ordered events that impact the balance of a credit. For example, an invoice deduction or an expiration.
            #   @return [Array<Metronome::Models::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnnamedTypeWithunionParent25|Metronome::Models::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnnamedTypeWithunionParent26|Metronome::Models::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnnamedTypeWithunionParent27|Metronome::Models::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnnamedTypeWithunionParent28|Metronome::Models::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnnamedTypeWithunionParent29|Metronome::Models::ContractRetrieveResponse::Data::Amendment::Credit::Ledger::UnnamedTypeWithunionParent30>]
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
              #   @return [Array<Metronome::Models::ContractRetrieveResponse::Data::Amendment::Credit::AccessSchedule::ScheduleItem>]
              required :schedule_items,
                       Metronome::ArrayOf.new(-> { Metronome::Models::ContractRetrieveResponse::Data::Amendment::Credit::AccessSchedule::ScheduleItem })

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
            # @!attribute [rw] reseller_type
            #   @return [Symbol]
            required :reseller_type, Metronome::Enum.new(:AWS, :AWS_PRO_SERVICE, :GCP, :GCP_PRO_SERVICE)

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

            # @!attribute [rw] fraction
            #   @return [Float]
            optional :fraction, Float

            # @!attribute [rw] gcp_account_id
            #   @return [String]
            optional :gcp_account_id, String

            # @!attribute [rw] gcp_offer_id
            #   @return [String]
            optional :gcp_offer_id, String

            # @!attribute [rw] netsuite_reseller_id
            #   @return [String]
            optional :netsuite_reseller_id, String

            # @!attribute [rw] reseller_contract_value
            #   @return [Float]
            optional :reseller_contract_value, Float

            # @!attribute [rw] starting_at
            #   @return [String]
            optional :starting_at, String
          end
        end

        class CustomerBillingProviderConfiguration < BaseModel
          # @!attribute [rw] billing_provider
          #   @return [Symbol]
          required :billing_provider,
                   Metronome::Enum.new(
                     :aws_marketplace,
                     :stripe,
                     :netsuite,
                     :custom,
                     :azure_marketplace,
                     :quickbooks_online,
                     :workday,
                     :gcp_marketplace
                   )

          # @!attribute [rw] delivery_method
          #   @return [Symbol]
          required :delivery_method, Metronome::Enum.new(:direct_to_billing_provider, :aws_sqs, :tackle, :aws_sns)
        end
      end
    end
  end
end
