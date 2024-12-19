# frozen_string_literal: true

module Metronome
  module Models
    class CustomerListParams < Metronome::BaseModel
      # @!attribute customer_ids
      #   Filter the customer list by customer_id.  Up to 100 ids can be provided.
      #
      #   @return [Array<String>]
      optional :customer_ids, Metronome::ArrayOf[String]

      # @!attribute ingest_alias
      #   Filter the customer list by ingest_alias
      #
      #   @return [String]
      optional :ingest_alias, String

      # @!attribute limit
      #   Max number of results that should be returned
      #
      #   @return [Integer]
      optional :limit, Integer

      # @!attribute next_page
      #   Cursor that indicates where the next page of results should start.
      #
      #   @return [String]
      optional :next_page, String

      # @!attribute only_archived
      #   Filter the customer list by only archived customers.
      #
      #   @return [Boolean]
      optional :only_archived, Metronome::BooleanModel

      # @!attribute salesforce_account_ids
      #   Filter the customer list by salesforce_account_id.  Up to 100 ids can be provided.
      #
      #   @return [Array<String>]
      optional :salesforce_account_ids, Metronome::ArrayOf[String]

      # @!parse
      #   # @param customer_ids [Array<String>, nil] Filter the customer list by customer_id. Up to 100 ids can be provided.
      #   #
      #   # @param ingest_alias [String, nil] Filter the customer list by ingest_alias
      #   #
      #   # @param limit [Integer, nil] Max number of results that should be returned
      #   #
      #   # @param next_page [String, nil] Cursor that indicates where the next page of results should start.
      #   #
      #   # @param only_archived [Boolean, nil] Filter the customer list by only archived customers.
      #   #
      #   # @param salesforce_account_ids [Array<String>, nil] Filter the customer list by salesforce_account_id. Up to 100 ids can be
      #   #   provided.
      #   #
      #   def initialize(
      #     customer_ids: nil,
      #     ingest_alias: nil,
      #     limit: nil,
      #     next_page: nil,
      #     only_archived: nil,
      #     salesforce_account_ids: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
