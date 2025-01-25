# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class CreditUpdateEndDateParams < Metronome::BaseModel
        # @!parse
        #   extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        # @!attribute access_ending_before
        #   RFC 3339 timestamp indicating when access to the credit will end and it will no
        #     longer be possible to draw it down (exclusive).
        #
        #   @return [Time]
        required :access_ending_before, Time

        # @!attribute credit_id
        #   ID of the commit to update
        #
        #   @return [String]
        required :credit_id, String

        # @!attribute customer_id
        #   ID of the customer whose credit is to be updated
        #
        #   @return [String]
        required :customer_id, String

        # @!parse
        #   # @param access_ending_before [String]
        #   # @param credit_id [String]
        #   # @param customer_id [String]
        #   # @param request_options [Metronome::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(access_ending_before:, credit_id:, customer_id:, request_options: {}, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end
