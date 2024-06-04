# frozen_string_literal: true

module Metronome
  module Models
    class PlanListCustomersResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Array<Metronome::Models::PlanListCustomersResponse::Data>]
      required :data, Metronome::ArrayOf.new(-> { Metronome::Models::PlanListCustomersResponse::Data })

      # @!attribute [rw] next_page
      #   @return [String]
      required :next_page, String

      class Data < BaseModel
        # @!attribute [rw] customer_details
        #   @return [Metronome::Models::PlanListCustomersResponse::Data::CustomerDetails]
        required :customer_details, -> { Metronome::Models::PlanListCustomersResponse::Data::CustomerDetails }

        # @!attribute [rw] plan_details
        #   @return [Metronome::Models::PlanListCustomersResponse::Data::PlanDetails]
        required :plan_details, -> { Metronome::Models::PlanListCustomersResponse::Data::PlanDetails }

        class CustomerDetails < BaseModel
          # @!attribute [rw] id
          #   the Metronome ID of the customer
          #   @return [String]
          required :id, String

          # @!attribute [rw] current_billable_status
          #   @return [Metronome::Models::PlanListCustomersResponse::Data::CustomerDetails::CurrentBillableStatus]
          required :current_billable_status,
                   -> { Metronome::Models::PlanListCustomersResponse::Data::CustomerDetails::CurrentBillableStatus }

          # @!attribute [rw] custom_fields
          #   @return [Hash]
          required :custom_fields, Hash

          # @!attribute [rw] customer_config
          #   @return [Metronome::Models::PlanListCustomersResponse::Data::CustomerDetails::CustomerConfig]
          required :customer_config,
                   -> { Metronome::Models::PlanListCustomersResponse::Data::CustomerDetails::CustomerConfig }

          # @!attribute [rw] external_id
          #   (deprecated, use ingest_aliases instead) the first ID (Metronome or ingest alias) that can be used in usage events
          #   @return [String]
          required :external_id, String

          # @!attribute [rw] ingest_aliases
          #   aliases for this customer that can be used instead of the Metronome customer ID in usage events
          #   @return [Array<String>]
          required :ingest_aliases, Metronome::ArrayOf.new(String)

          # @!attribute [rw] name_
          #   @return [String]
          required :name_, String

          class CurrentBillableStatus < BaseModel
            # @!attribute [rw] value
            #   @return [Symbol]
            required :value, Metronome::Enum.new(:billable, :unbillable)

            # @!attribute [rw] effective_at
            #   @return [String]
            optional :effective_at, String
          end

          class CustomerConfig < BaseModel
            # @!attribute [rw] salesforce_account_id
            #   The Salesforce account ID for the customer
            #   @return [String]
            required :salesforce_account_id, String
          end
        end

        class PlanDetails < BaseModel
          # @!attribute [rw] id
          #   @return [String]
          required :id, String

          # @!attribute [rw] custom_fields
          #   @return [Hash]
          required :custom_fields, Hash

          # @!attribute [rw] customer_plan_id
          #   @return [String]
          required :customer_plan_id, String

          # @!attribute [rw] name_
          #   @return [String]
          required :name_, String

          # @!attribute [rw] starting_on
          #   The start date of the plan
          #   @return [String]
          required :starting_on, String

          # @!attribute [rw] ending_before
          #   The end date of the plan
          #   @return [String]
          optional :ending_before, String
        end
      end
    end
  end
end
