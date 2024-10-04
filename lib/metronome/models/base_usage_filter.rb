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
    end
  end
end
