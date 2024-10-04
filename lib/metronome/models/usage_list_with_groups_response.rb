# frozen_string_literal: true

module Metronome
  module Models
    class UsageListWithGroupsResponse < BaseModel
      # @!attribute [rw] ending_before
      #   @return [DateTime]
      required :ending_before, DateTime

      # @!attribute [rw] group_key
      #   @return [String]
      required :group_key, String

      # @!attribute [rw] group_value
      #   @return [String]
      required :group_value, String

      # @!attribute [rw] starting_on
      #   @return [DateTime]
      required :starting_on, DateTime

      # @!attribute [rw] value
      #   @return [Float]
      required :value, Float
    end
  end
end
