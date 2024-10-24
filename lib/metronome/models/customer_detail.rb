# frozen_string_literal: true

module Metronome
  module Models
    class CustomerDetail < BaseModel
      # @!attribute [rw] id
      #   the Metronome ID of the customer
      #   @return [String]
      required :id, String

      # @!attribute [rw] custom_fields
      #   @return [Hash]
      required :custom_fields, Hash

      # @!attribute [rw] customer_config
      #   @return [Metronome::Models::CustomerDetail::CustomerConfig]
      required :customer_config, -> { Metronome::Models::CustomerDetail::CustomerConfig }

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
      required :name_, String, api_name: :name

      # @!attribute [rw] current_billable_status
      #   This field's availability is dependent on your client's configuration.
      #   @return [Metronome::Models::CustomerDetail::CurrentBillableStatus]
      optional :current_billable_status, -> { Metronome::Models::CustomerDetail::CurrentBillableStatus }

      class CustomerConfig < BaseModel
        # @!attribute [rw] salesforce_account_id
        #   The Salesforce account ID for the customer
        #   @return [String]
        required :salesforce_account_id, String

        # @!parse
        #   # Create a new instance of CustomerConfig from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :salesforce_account_id The Salesforce account ID for the customer
        #   def initialize(data = {}) = super
      end

      class CurrentBillableStatus < BaseModel
        # @!attribute [rw] value
        #   @return [Symbol, Metronome::Models::CustomerDetail::CurrentBillableStatus::Value]
        required :value, enum: -> { Metronome::Models::CustomerDetail::CurrentBillableStatus::Value }

        # @!attribute [rw] effective_at
        #   @return [Time]
        optional :effective_at, Time

        class Value < Metronome::Enum
          BILLABLE = :billable
          UNBILLABLE = :unbillable
        end

        # @!parse
        #   # Create a new instance of CurrentBillableStatus from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :value
        #   #   @option data [String, nil] :effective_at
        #   def initialize(data = {}) = super
      end

      # @!parse
      #   # Create a new instance of CustomerDetail from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id the Metronome ID of the customer
      #   #   @option data [Hash] :custom_fields
      #   #   @option data [Object] :customer_config
      #   #   @option data [String] :external_id (deprecated, use ingest_aliases instead) the first ID (Metronome or ingest
      #   #     alias) that can be used in usage events
      #   #   @option data [Array<String>] :ingest_aliases aliases for this customer that can be used instead of the Metronome customer ID
      #   #     in usage events
      #   #   @option data [String] :name
      #   #   @option data [Object, nil] :current_billable_status This field's availability is dependent on your client's configuration.
      #   def initialize(data = {}) = super
    end
  end
end
