# frozen_string_literal: true

module Metronome
  module Models
    class UsageListWithGroupsResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Array<Metronome::Models::UsageListWithGroupsResponse::Data>]
      required :data, Metronome::ArrayOf.new(-> { Metronome::Models::UsageListWithGroupsResponse::Data })

      # @!attribute [rw] next_page
      #   @return [String]
      required :next_page, String

      class Data < BaseModel
        # @!attribute [rw] ending_before
        #   @return [String]
        required :ending_before, String

        # @!attribute [rw] group_key
        #   @return [String]
        required :group_key, String

        # @!attribute [rw] group_value
        #   @return [String]
        required :group_value, String

        # @!attribute [rw] starting_on
        #   @return [String]
        required :starting_on, String

        # @!attribute [rw] value
        #   @return [Float]
        required :value, Float
      end
    end
  end
end
