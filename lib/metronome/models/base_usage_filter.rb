# frozen_string_literal: true

module Metronome
  module Models
    class BaseUsageFilter < BaseModel
      # @!attribute [rw] group_key
      #   @return [String]
      required :group_key, String

      # @!attribute [rw] group_values
      #   @return [Array<String>]
      required :group_values, Metronome::ArrayOf.new(String)

      # @!attribute [rw] starting_at
      #   @return [Time]
      optional :starting_at, Time

      # Create a new instance of BaseUsageFilter from a Hash of raw data.
      #
      # @overload initialize(group_key: nil, group_values: nil, starting_at: nil)
      # @param group_key [String]
      # @param group_values [Array<String>]
      # @param starting_at [String]
      def initialize(data = {})
        super
      end
    end
  end
end
