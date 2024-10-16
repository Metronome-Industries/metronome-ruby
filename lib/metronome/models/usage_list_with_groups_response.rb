# frozen_string_literal: true

module Metronome
  module Models
    class UsageListWithGroupsResponse < BaseModel
      # @!attribute [rw] ending_before
      #   @return [Time]
      required :ending_before, Time

      # @!attribute [rw] group_key
      #   @return [String]
      required :group_key, String

      # @!attribute [rw] group_value
      #   @return [String]
      required :group_value, String

      # @!attribute [rw] starting_on
      #   @return [Time]
      required :starting_on, Time

      # @!attribute [rw] value
      #   @return [Float]
      required :value, Float

      # Create a new instance of UsageListWithGroupsResponse from a Hash of raw data.
      #
      # @overload initialize(ending_before: nil, group_key: nil, group_value: nil, starting_on: nil, value: nil)
      # @param ending_before [String]
      # @param group_key [String]
      # @param group_value [String]
      # @param starting_on [String]
      # @param value [Float]
      def initialize(data = {})
        super
      end
    end
  end
end
