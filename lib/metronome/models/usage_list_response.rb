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

        # Create a new instance of Data from a Hash of raw data.
        #
        # @overload initialize(billable_metric_id: nil, billable_metric_name: nil, customer_id: nil, end_timestamp: nil, start_timestamp: nil, value: nil, groups: nil)
        # @param billable_metric_id [String]
        # @param billable_metric_name [String]
        # @param customer_id [String]
        # @param end_timestamp [String]
        # @param start_timestamp [String]
        # @param value [Float]
        # @param groups [Hash] Values will be either a number or null. Null indicates that there were no
        #   matches for the group_by value.
        def initialize(data = {})
          super
        end
      end

      # Create a new instance of UsageListResponse from a Hash of raw data.
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
