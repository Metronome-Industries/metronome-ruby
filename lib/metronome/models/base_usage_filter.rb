# frozen_string_literal: true

module Metronome
  module Models
    class BaseUsageFilter < Metronome::BaseModel
      # @!attribute group_key
      #
      #   @return [String]
      required :group_key, String

      # @!attribute group_values
      #
      #   @return [Array<String>]
      required :group_values, Metronome::ArrayOf.new(String)

      # @!attribute starting_at
      #
      #   @return [Time]
      optional :starting_at, Time

      # @!parse
      #   # @param group_key [String]
      #   # @param group_values [Array<String>]
      #   # @param starting_at [String, nil]
      #   #
      #   def initialize(group_key:, group_values:, starting_at: nil) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
