# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Plans#list_customers
      class PlanListCustomersResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute customer_details
        #
        #   @return [MetronomeSDK::Models::V1::PlanListCustomersResponse::CustomerDetails]
        required :customer_details, -> { MetronomeSDK::Models::V1::PlanListCustomersResponse::CustomerDetails }

        # @!attribute plan_details
        #
        #   @return [MetronomeSDK::Models::V1::PlanListCustomersResponse::PlanDetails]
        required :plan_details, -> { MetronomeSDK::Models::V1::PlanListCustomersResponse::PlanDetails }

        # @!method initialize(customer_details:, plan_details:)
        #   @param customer_details [MetronomeSDK::Models::V1::PlanListCustomersResponse::CustomerDetails]
        #   @param plan_details [MetronomeSDK::Models::V1::PlanListCustomersResponse::PlanDetails]

        # @see MetronomeSDK::Models::V1::PlanListCustomersResponse#customer_details
        class CustomerDetails < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute id
          #   the Metronome ID of the customer
          #
          #   @return [String]
          required :id, String

          # @!attribute created_at
          #   RFC 3339 timestamp indicating when the customer was created.
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute custom_fields
          #   Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          #
          #   @return [Hash{Symbol=>String}]
          required :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

          # @!attribute customer_config
          #
          #   @return [MetronomeSDK::Models::V1::PlanListCustomersResponse::CustomerDetails::CustomerConfig]
          required :customer_config,
                   -> { MetronomeSDK::Models::V1::PlanListCustomersResponse::CustomerDetails::CustomerConfig }

          # @!attribute external_id
          #   (deprecated, use ingest_aliases instead) the first ID (Metronome or ingest
          #   alias) that can be used in usage events
          #
          #   @return [String]
          required :external_id, String

          # @!attribute ingest_aliases
          #   aliases for this customer that can be used instead of the Metronome customer ID
          #   in usage events
          #
          #   @return [Array<String>]
          required :ingest_aliases, MetronomeSDK::Internal::Type::ArrayOf[String]

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!attribute archived_at
          #   RFC 3339 timestamp indicating when the customer was archived. Null if the
          #   customer is active.
          #
          #   @return [Time, nil]
          optional :archived_at, Time, nil?: true

          # @!attribute current_billable_status
          #   This field's availability is dependent on your client's configuration.
          #
          #   @return [MetronomeSDK::Models::V1::PlanListCustomersResponse::CustomerDetails::CurrentBillableStatus, nil]
          optional :current_billable_status,
                   -> { MetronomeSDK::Models::V1::PlanListCustomersResponse::CustomerDetails::CurrentBillableStatus }

          # @!method initialize(id:, created_at:, custom_fields:, customer_config:, external_id:, ingest_aliases:, name:, archived_at: nil, current_billable_status: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::PlanListCustomersResponse::CustomerDetails} for more
          #   details.
          #
          #   @param id [String] the Metronome ID of the customer
          #
          #   @param created_at [Time] RFC 3339 timestamp indicating when the customer was created.
          #
          #   @param custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          #
          #   @param customer_config [MetronomeSDK::Models::V1::PlanListCustomersResponse::CustomerDetails::CustomerConfig]
          #
          #   @param external_id [String] (deprecated, use ingest_aliases instead) the first ID (Metronome or ingest alias
          #
          #   @param ingest_aliases [Array<String>] aliases for this customer that can be used instead of the Metronome customer ID
          #
          #   @param name [String]
          #
          #   @param archived_at [Time, nil] RFC 3339 timestamp indicating when the customer was archived. Null if the custom
          #
          #   @param current_billable_status [MetronomeSDK::Models::V1::PlanListCustomersResponse::CustomerDetails::CurrentBillableStatus] This field's availability is dependent on your client's configuration.

          # @see MetronomeSDK::Models::V1::PlanListCustomersResponse::CustomerDetails#customer_config
          class CustomerConfig < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute salesforce_account_id
            #   The Salesforce account ID for the customer
            #
            #   @return [String, nil]
            required :salesforce_account_id, String, nil?: true

            # @!method initialize(salesforce_account_id:)
            #   @param salesforce_account_id [String, nil] The Salesforce account ID for the customer
          end

          # @see MetronomeSDK::Models::V1::PlanListCustomersResponse::CustomerDetails#current_billable_status
          class CurrentBillableStatus < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute value
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::PlanListCustomersResponse::CustomerDetails::CurrentBillableStatus::Value]
            required :value,
                     enum: -> { MetronomeSDK::Models::V1::PlanListCustomersResponse::CustomerDetails::CurrentBillableStatus::Value }

            # @!attribute effective_at
            #
            #   @return [Time, nil]
            optional :effective_at, Time, nil?: true

            # @!method initialize(value:, effective_at: nil)
            #   This field's availability is dependent on your client's configuration.
            #
            #   @param value [Symbol, MetronomeSDK::Models::V1::PlanListCustomersResponse::CustomerDetails::CurrentBillableStatus::Value]
            #   @param effective_at [Time, nil]

            # @see MetronomeSDK::Models::V1::PlanListCustomersResponse::CustomerDetails::CurrentBillableStatus#value
            module Value
              extend MetronomeSDK::Internal::Type::Enum

              BILLABLE = :billable
              UNBILLABLE = :unbillable

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end

        # @see MetronomeSDK::Models::V1::PlanListCustomersResponse#plan_details
        class PlanDetails < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute custom_fields
          #   Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          #
          #   @return [Hash{Symbol=>String}]
          required :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

          # @!attribute customer_plan_id
          #
          #   @return [String]
          required :customer_plan_id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!attribute starting_on
          #   The start date of the plan
          #
          #   @return [Time]
          required :starting_on, Time

          # @!attribute ending_before
          #   The end date of the plan
          #
          #   @return [Time, nil]
          optional :ending_before, Time, nil?: true

          # @!method initialize(id:, custom_fields:, customer_plan_id:, name:, starting_on:, ending_before: nil)
          #   @param id [String]
          #
          #   @param custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          #
          #   @param customer_plan_id [String]
          #
          #   @param name [String]
          #
          #   @param starting_on [Time] The start date of the plan
          #
          #   @param ending_before [Time, nil] The end date of the plan
        end
      end
    end
  end
end
