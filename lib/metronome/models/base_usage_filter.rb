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
      #   @return [String]
      optional :starting_at, String
    end
  end
end
