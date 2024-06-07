# frozen_string_literal: true

module Metronome
  module Models
    class InvoiceListResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Array<Metronome::Models::Invoice>]
      required :data, Metronome::ArrayOf.new(-> { Metronome::Models::Invoice })

      # @!attribute [rw] next_page
      #   @return [String]
      required :next_page, String
    end
  end
end
