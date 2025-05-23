# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Customers#retrieve
      class CustomerRetrieveResponse < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [MetronomeSDK::Models::V1::CustomerRetrieveResponse::Data]
        required :data, -> { MetronomeSDK::Models::V1::CustomerRetrieveResponse::Data }

        # @!method initialize(data:)
        #   @param data [MetronomeSDK::Models::V1::CustomerRetrieveResponse::Data]

        # @see MetronomeSDK::Models::V1::CustomerRetrieveResponse#data
        class Data < MetronomeSDK::Internal::Type::BaseModel
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
          #
          #   @return [Hash{Symbol=>String}]
          required :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

          # @!attribute customer_config
          #
          #   @return [MetronomeSDK::Models::V1::CustomerRetrieveResponse::Data::CustomerConfig]
          required :customer_config, -> { MetronomeSDK::Models::V1::CustomerRetrieveResponse::Data::CustomerConfig }

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
          #   @return [MetronomeSDK::Models::V1::CustomerRetrieveResponse::Data::CurrentBillableStatus, nil]
          optional :current_billable_status,
                   -> { MetronomeSDK::Models::V1::CustomerRetrieveResponse::Data::CurrentBillableStatus }

          # @!method initialize(id:, created_at:, custom_fields:, customer_config:, external_id:, ingest_aliases:, name:, archived_at: nil, current_billable_status: nil)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::CustomerRetrieveResponse::Data} for more details.
          #
          #   @param id [String] the Metronome ID of the customer
          #
          #   @param created_at [Time] RFC 3339 timestamp indicating when the customer was created.
          #
          #   @param custom_fields [Hash{Symbol=>String}]
          #
          #   @param customer_config [MetronomeSDK::Models::V1::CustomerRetrieveResponse::Data::CustomerConfig]
          #
          #   @param external_id [String] (deprecated, use ingest_aliases instead) the first ID (Metronome or ingest alias
          #
          #   @param ingest_aliases [Array<String>] aliases for this customer that can be used instead of the Metronome customer ID
          #
          #   @param name [String]
          #
          #   @param archived_at [Time, nil] RFC 3339 timestamp indicating when the customer was archived. Null if the custom
          #
          #   @param current_billable_status [MetronomeSDK::Models::V1::CustomerRetrieveResponse::Data::CurrentBillableStatus] This field's availability is dependent on your client's configuration.

          # @see MetronomeSDK::Models::V1::CustomerRetrieveResponse::Data#customer_config
          class CustomerConfig < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute salesforce_account_id
            #   The Salesforce account ID for the customer
            #
            #   @return [String, nil]
            required :salesforce_account_id, String, nil?: true

            # @!method initialize(salesforce_account_id:)
            #   @param salesforce_account_id [String, nil] The Salesforce account ID for the customer
          end

          # @see MetronomeSDK::Models::V1::CustomerRetrieveResponse::Data#current_billable_status
          class CurrentBillableStatus < MetronomeSDK::Internal::Type::BaseModel
            # @!attribute value
            #
            #   @return [Symbol, MetronomeSDK::Models::V1::CustomerRetrieveResponse::Data::CurrentBillableStatus::Value]
            required :value,
                     enum: -> { MetronomeSDK::Models::V1::CustomerRetrieveResponse::Data::CurrentBillableStatus::Value }

            # @!attribute effective_at
            #
            #   @return [Time, nil]
            optional :effective_at, Time, nil?: true

            # @!method initialize(value:, effective_at: nil)
            #   This field's availability is dependent on your client's configuration.
            #
            #   @param value [Symbol, MetronomeSDK::Models::V1::CustomerRetrieveResponse::Data::CurrentBillableStatus::Value]
            #   @param effective_at [Time, nil]

            # @see MetronomeSDK::Models::V1::CustomerRetrieveResponse::Data::CurrentBillableStatus#value
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
end
