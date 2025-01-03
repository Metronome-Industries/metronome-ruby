# frozen_string_literal: true

module Metronome
  module Models
    class UsageListResponse < Metronome::BaseModel
      # @!attribute data
      #
      #   @return [Array<Metronome::Models::UsageListResponse::Data>]
      required :data, Metronome::ArrayOf[-> { Metronome::Models::UsageListResponse::Data }]

      # @!attribute next_page
      #
      #   @return [String, nil]
      required :next_page, String

      # @!parse
      #   # @param data [Array<Metronome::Models::UsageListResponse::Data>]
      #   # @param next_page [String, nil]
      #   #
      #   def initialize(data:, next_page:, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void

      class Data < Metronome::BaseModel
        # @!attribute billable_metric_id
        #
        #   @return [String]
        required :billable_metric_id, String

        # @!attribute billable_metric_name
        #
        #   @return [String]
        required :billable_metric_name, String

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute end_timestamp
        #
        #   @return [Time]
        required :end_timestamp, Time

        # @!attribute start_timestamp
        #
        #   @return [Time]
        required :start_timestamp, Time

        # @!attribute value
        #
        #   @return [Float, nil]
        required :value, Float

        # @!attribute groups
        #   Values will be either a number or null. Null indicates that there were no matches for the group_by value.
        #
        #   @return [Hash{Symbol => Float, nil}]
        optional :groups, Metronome::HashOf[Float]

        # @!parse
        #   # @param billable_metric_id [String]
        #   #
        #   # @param billable_metric_name [String]
        #   #
        #   # @param customer_id [String]
        #   #
        #   # @param end_timestamp [String]
        #   #
        #   # @param start_timestamp [String]
        #   #
        #   # @param value [Float, nil]
        #   #
        #   # @param groups [Hash{Symbol => Float, nil}] Values will be either a number or null. Null indicates that there were no
        #   #   matches for the group_by value.
        #   #
        #   def initialize(
        #     billable_metric_id:,
        #     billable_metric_name:,
        #     customer_id:,
        #     end_timestamp:,
        #     start_timestamp:,
        #     value:,
        #     groups: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end
