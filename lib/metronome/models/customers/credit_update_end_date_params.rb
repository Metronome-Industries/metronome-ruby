# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class CreditUpdateEndDateParams < Metronome::BaseModel
        # @!attribute access_ending_before
        #   RFC 3339 timestamp indicating when access to the credit will end and it will no longer be possible to draw it down (exclusive).
        #   @return [Time]
        required :access_ending_before, Time

        # @!attribute credit_id
        #   ID of the commit to update
        #   @return [String]
        required :credit_id, String

        # @!attribute customer_id
        #   ID of the customer whose credit is to be updated
        #   @return [String]
        required :customer_id, String
      end
    end
  end
end
