# frozen_string_literal: true

module Metronome
  module Models
    class PlanListResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Array<Metronome::Models::PlanListResponse::Data>]
      required :data, Metronome::ArrayOf.new(-> { Metronome::Models::PlanListResponse::Data })

      # @!attribute [rw] next_page
      #   @return [String]
      required :next_page, String

      class Data < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        required :id, String

        # @!attribute [rw] description
        #   @return [String]
        required :description, String

        # @!attribute [rw] name_
        #   @return [String]
        required :name_, String

        # @!attribute [rw] custom_fields
        #   @return [Hash]
        optional :custom_fields, Hash
      end
    end
  end
end
