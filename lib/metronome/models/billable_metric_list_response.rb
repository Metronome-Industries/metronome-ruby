# frozen_string_literal: true

module Metronome
  module Models
    class BillableMetricListResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Array<Metronome::Models::BillableMetricListResponse::Data>]
      required :data, Metronome::ArrayOf.new(-> { Metronome::Models::BillableMetricListResponse::Data })

      # @!attribute [rw] next_page
      #   @return [String]
      required :next_page, String

      class Data < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # @!attribute [rw] name_
        #   @return [String]
        required :name_, String

        # @!attribute [rw] group_by
        #   @return [Array<String>]
        optional :group_by, Metronome::ArrayOf.new(String)
      end
    end
  end
end
