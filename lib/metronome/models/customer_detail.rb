# frozen_string_literal: true

module Metronome
  module Models
    # @example
    # ```ruby
    # customer_detail => {
    #   id: String,
    #   custom_fields: -> { Metronome::HashOf[String] === _1 },
    #   customer_config: Metronome::Models::CustomerDetail::CustomerConfig,
    #   external_id: String,
    #   ingest_aliases: -> { Metronome::ArrayOf[String] === _1 },
    #   **_
    # }
    # ```
    class CustomerDetail < Metronome::BaseModel
      # @!attribute id
      #   the Metronome ID of the customer
      #
      #   @return [String]
      required :id, String

      # @!attribute custom_fields
      #
      #   @return [Hash{Symbol=>String}]
      required :custom_fields, Metronome::HashOf[String]

      # @!attribute customer_config
      #
      #   @return [Metronome::Models::CustomerDetail::CustomerConfig]
      required :customer_config, -> { Metronome::Models::CustomerDetail::CustomerConfig }

      # @!attribute external_id
      #   (deprecated, use ingest_aliases instead) the first ID (Metronome or ingest alias) that can be used in usage events
      #
      #   @return [String]
      required :external_id, String

      # @!attribute ingest_aliases
      #   aliases for this customer that can be used instead of the Metronome customer ID in usage events
      #
      #   @return [Array<String>]
      required :ingest_aliases, Metronome::ArrayOf[String]

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute current_billable_status
      #   This field's availability is dependent on your client's configuration.
      #
      #   @return [Metronome::Models::CustomerDetail::CurrentBillableStatus]
      optional :current_billable_status, -> { Metronome::Models::CustomerDetail::CurrentBillableStatus }

      # @!parse
      #   # @param id [String] the Metronome ID of the customer
      #   #
      #   # @param custom_fields [Hash{Symbol=>String}]
      #   #
      #   # @param customer_config [Metronome::Models::CustomerDetail::CustomerConfig]
      #   #
      #   # @param external_id [String] (deprecated, use ingest_aliases instead) the first ID (Metronome or ingest
      #   #   alias) that can be used in usage events
      #   #
      #   # @param ingest_aliases [Array<String>] aliases for this customer that can be used instead of the Metronome customer ID
      #   #   in usage events
      #   #
      #   # @param name [String]
      #   #
      #   # @param current_billable_status [Metronome::Models::CustomerDetail::CurrentBillableStatus] This field's availability is dependent on your client's configuration.
      #   #
      #   def initialize(
      #     id:,
      #     custom_fields:,
      #     customer_config:,
      #     external_id:,
      #     ingest_aliases:,
      #     name:,
      #     current_billable_status: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Metronome::BaseModel) -> void

      # @example
      # ```ruby
      # customer_config => {
      #   salesforce_account_id: String
      # }
      # ```
      class CustomerConfig < Metronome::BaseModel
        # @!attribute salesforce_account_id
        #   The Salesforce account ID for the customer
        #
        #   @return [String, nil]
        required :salesforce_account_id, String

        # @!parse
        #   # @param salesforce_account_id [String, nil] The Salesforce account ID for the customer
        #   #
        #   def initialize(salesforce_account_id:, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end

      # @example
      # ```ruby
      # current_billable_status => {
      #   value: enum: Metronome::Models::CustomerDetail::CurrentBillableStatus::Value,
      #   effective_at: Time
      # }
      # ```
      class CurrentBillableStatus < Metronome::BaseModel
        # @!attribute value
        #
        #   @return [Symbol, Metronome::Models::CustomerDetail::CurrentBillableStatus::Value]
        required :value, enum: -> { Metronome::Models::CustomerDetail::CurrentBillableStatus::Value }

        # @!attribute effective_at
        #
        #   @return [Time, nil]
        optional :effective_at, Time

        # @!parse
        #   # This field's availability is dependent on your client's configuration.
        #   #
        #   # @param value [String]
        #   # @param effective_at [String, nil]
        #   #
        #   def initialize(value:, effective_at: nil, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void

        # @example
        # ```ruby
        # case value
        # in :billable
        #   # ...
        # in :unbillable
        #   # ...
        # end
        # ```
        class Value < Metronome::Enum
          BILLABLE = :billable
          UNBILLABLE = :unbillable

          finalize!
        end
      end
    end
  end
end
