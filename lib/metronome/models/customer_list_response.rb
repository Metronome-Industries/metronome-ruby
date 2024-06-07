# frozen_string_literal: true

module Metronome
  module Models
    class CustomerListResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Array<Metronome::Models::CustomerDetail>]
      required :data, Metronome::ArrayOf.new(-> { Metronome::Models::CustomerDetail })

      # @!attribute [rw] next_page
      #   @return [String]
      required :next_page, String
    end
  end
end
