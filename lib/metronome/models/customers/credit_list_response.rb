# frozen_string_literal: true

module Metronome
  module Models
    module Customers
      class CreditListResponse < Metronome::BaseModel
        # @!attribute data
        #   @return [Array<Metronome::Models::Credit>]
        required :data, Metronome::ArrayOf.new(-> { Metronome::Models::Credit })

        # @!attribute next_page
        #   @return [String]
        required :next_page, String

        # @!parse
        #   # Create a new instance of CreditListResponse from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [Array<Object>] :data
        #   #   @option data [String] :next_page
        #   def initialize(data = {}) = super
      end
    end
  end
end
