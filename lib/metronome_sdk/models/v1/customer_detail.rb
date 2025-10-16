# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Customers#list
      class CustomerDetail < MetronomeSDK::Internal::Type::BaseModel
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
        #   @return [MetronomeSDK::Models::V1::CustomerDetail::CustomerConfig]
        required :customer_config, -> { MetronomeSDK::V1::CustomerDetail::CustomerConfig }

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

        # @!attribute updated_at
        #   RFC 3339 timestamp indicating when the customer was last updated.
        #
        #   @return [Time]
        required :updated_at, Time

        # @!attribute archived_at
        #   RFC 3339 timestamp indicating when the customer was archived. Null if the
        #   customer is active.
        #
        #   @return [Time, nil]
        optional :archived_at, Time, nil?: true

        # @!attribute current_billable_status
        #   This field's availability is dependent on your client's configuration.
        #
        #   @return [MetronomeSDK::Models::V1::CustomerDetail::CurrentBillableStatus, nil]
        optional :current_billable_status, -> { MetronomeSDK::V1::CustomerDetail::CurrentBillableStatus }

        # @!method initialize(id:, created_at:, custom_fields:, customer_config:, external_id:, ingest_aliases:, name:, updated_at:, archived_at: nil, current_billable_status: nil)
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V1::CustomerDetail} for more details.
        #
        #   @param id [String] the Metronome ID of the customer
        #
        #   @param created_at [Time] RFC 3339 timestamp indicating when the customer was created.
        #
        #   @param custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
        #
        #   @param customer_config [MetronomeSDK::Models::V1::CustomerDetail::CustomerConfig]
        #
        #   @param external_id [String] (deprecated, use ingest_aliases instead) the first ID (Metronome or ingest alias
        #
        #   @param ingest_aliases [Array<String>] aliases for this customer that can be used instead of the Metronome customer ID
        #
        #   @param name [String]
        #
        #   @param updated_at [Time] RFC 3339 timestamp indicating when the customer was last updated.
        #
        #   @param archived_at [Time, nil] RFC 3339 timestamp indicating when the customer was archived. Null if the custom
        #
        #   @param current_billable_status [MetronomeSDK::Models::V1::CustomerDetail::CurrentBillableStatus] This field's availability is dependent on your client's configuration.

        # @see MetronomeSDK::Models::V1::CustomerDetail#customer_config
        class CustomerConfig < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute salesforce_account_id
          #   The Salesforce account ID for the customer
          #
          #   @return [String, nil]
          required :salesforce_account_id, String, nil?: true

          # @!method initialize(salesforce_account_id:)
          #   @param salesforce_account_id [String, nil] The Salesforce account ID for the customer
        end

        # @see MetronomeSDK::Models::V1::CustomerDetail#current_billable_status
        class CurrentBillableStatus < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute value
          #
          #   @return [Symbol, MetronomeSDK::Models::V1::CustomerDetail::CurrentBillableStatus::Value]
          required :value, enum: -> { MetronomeSDK::V1::CustomerDetail::CurrentBillableStatus::Value }

          # @!attribute effective_at
          #
          #   @return [Time, nil]
          optional :effective_at, Time, nil?: true

          # @!method initialize(value:, effective_at: nil)
          #   This field's availability is dependent on your client's configuration.
          #
          #   @param value [Symbol, MetronomeSDK::Models::V1::CustomerDetail::CurrentBillableStatus::Value]
          #   @param effective_at [Time, nil]

          # @see MetronomeSDK::Models::V1::CustomerDetail::CurrentBillableStatus#value
          module Value
            extend MetronomeSDK::Internal::Type::Enum

            BILLABLE = :billable
            UNBILLABLE = :unbillable

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
