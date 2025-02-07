# frozen_string_literal: true

module Metronome
  module Models
    class CustomerListParams < Metronome::BaseModel
      # @!parse
      #   extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      # @!attribute [r] customer_ids
      #   Filter the customer list by customer_id. Up to 100 ids can be provided.
      #
      #   @return [Array<String>, nil]
      optional :customer_ids, Metronome::ArrayOf[String]

      # @!parse
      #   # @return [Array<String>]
      #   attr_writer :customer_ids

      # @!attribute [r] ingest_alias
      #   Filter the customer list by ingest_alias
      #
      #   @return [String, nil]
      optional :ingest_alias, String

      # @!parse
      #   # @return [String]
      #   attr_writer :ingest_alias

      # @!attribute [r] limit
      #   Max number of results that should be returned
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :limit

      # @!attribute [r] next_page
      #   Cursor that indicates where the next page of results should start.
      #
      #   @return [String, nil]
      optional :next_page, String

      # @!parse
      #   # @return [String]
      #   attr_writer :next_page

      # @!attribute [r] only_archived
      #   Filter the customer list to only return archived customers. By default, only
      #     active customers are returned.
      #
      #   @return [Boolean, nil]
      optional :only_archived, Metronome::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :only_archived

      # @!attribute [r] salesforce_account_ids
      #   Filter the customer list by salesforce_account_id. Up to 100 ids can be
      #     provided.
      #
      #   @return [Array<String>, nil]
      optional :salesforce_account_ids, Metronome::ArrayOf[String]

      # @!parse
      #   # @return [Array<String>]
      #   attr_writer :salesforce_account_ids

      # @!parse
      #   # @param customer_ids [Array<String>]
      #   # @param ingest_alias [String]
      #   # @param limit [Integer]
      #   # @param next_page [String]
      #   # @param only_archived [Boolean]
      #   # @param salesforce_account_ids [Array<String>]
      #   # @param request_options [Metronome::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     customer_ids: nil,
      #     ingest_alias: nil,
      #     limit: nil,
      #     next_page: nil,
      #     only_archived: nil,
      #     salesforce_account_ids: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
