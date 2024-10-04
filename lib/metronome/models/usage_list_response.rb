# frozen_string_literal: true

module Metronome
  module Models
    class UsageListResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Array<Metronome::Models::UsageListResponse::Data>]
      required :data, Metronome::ArrayOf.new(-> { Metronome::Models::UsageListResponse::Data })

      # @!attribute [rw] next_page
      #   @return [String]
      required :next_page, String

      class Data < BaseModel
        # @!attribute [rw] billable_metric_id
        #   @return [String]
        required :billable_metric_id, String

        # @!attribute [rw] billable_metric_name
        #   @return [String]
        required :billable_metric_name, String

        # @!attribute [rw] customer_id
        #   @return [String]
        required :customer_id, String

        # @!attribute [rw] end_timestamp
        #   @return [Time]
        required :end_timestamp, Time

        # @!attribute [rw] start_timestamp
        #   @return [Time]
        required :start_timestamp, Time

        # @!attribute [rw] value
        #   @return [Float]
        required :value, Float

        # @!attribute [rw] groups
        #   Values will be either a number or null. Null indicates that there were no matches for the group_by value.
        #   @return [Hash]
        optional :groups, Hash
      end
    end
  end
end
