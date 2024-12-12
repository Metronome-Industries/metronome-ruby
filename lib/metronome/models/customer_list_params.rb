# frozen_string_literal: true

module Metronome
  module Models
    class CustomerListParams < Metronome::BaseModel
      # @!attribute [rw] customer_ids
      #   Filter the customer list by customer_id.  Up to 100 ids can be provided.
      #   @return [Array<String>]
      optional :customer_ids, Metronome::ArrayOf.new(String)

      # @!attribute [rw] ingest_alias
      #   Filter the customer list by ingest_alias
      #   @return [String]
      optional :ingest_alias, String

      # @!attribute [rw] limit
      #   Max number of results that should be returned
      #   @return [Integer]
      optional :limit, Integer

      # @!attribute [rw] next_page
      #   Cursor that indicates where the next page of results should start.
      #   @return [String]
      optional :next_page, String

      # @!attribute [rw] only_archived
      #   Filter the customer list by only archived customers.
      #   @return [Boolean]
      optional :only_archived, Metronome::BooleanModel

      # @!attribute [rw] salesforce_account_ids
      #   Filter the customer list by salesforce_account_id.  Up to 100 ids can be provided.
      #   @return [Array<String>]
      optional :salesforce_account_ids, Metronome::ArrayOf.new(String)
    end
  end
end
