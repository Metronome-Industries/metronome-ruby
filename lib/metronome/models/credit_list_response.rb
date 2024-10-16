# frozen_string_literal: true

module Metronome
  module Models
    class CreditListResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Array<Metronome::Models::Credit>]
      required :data, Metronome::ArrayOf.new(-> { Metronome::Models::Credit })

      # @!attribute [rw] next_page
      #   @return [String]
      required :next_page, String

      # Create a new instance of CreditListResponse from a Hash of raw data.
      #
      # @overload initialize(data: nil, next_page: nil)
      # @param data [Array<Object>]
      # @param next_page [String]
      def initialize(data = {})
        super
      end
    end
  end
end
