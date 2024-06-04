# frozen_string_literal: true

module Metronome
  module Models
    class CustomerListResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Array<Metronome::Models::CustomerListResponse::Data>]
      required :data, Metronome::ArrayOf.new(-> { Metronome::Models::CustomerListResponse::Data })

      # @!attribute [rw] next_page
      #   @return [String]
      required :next_page, String

      class Data < BaseModel
        # @!attribute [rw] id
        #   the Metronome ID of the customer
        #   @return [String]
        required :id, String

        # @!attribute [rw] current_billable_status
        #   @return [Metronome::Models::CustomerListResponse::Data::CurrentBillableStatus]
        required :current_billable_status,
                 -> { Metronome::Models::CustomerListResponse::Data::CurrentBillableStatus }

        # @!attribute [rw] custom_fields
        #   @return [Hash]
        required :custom_fields, Hash

        # @!attribute [rw] customer_config
        #   @return [Metronome::Models::CustomerListResponse::Data::CustomerConfig]
        required :customer_config, -> { Metronome::Models::CustomerListResponse::Data::CustomerConfig }

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
    end
  end
end
