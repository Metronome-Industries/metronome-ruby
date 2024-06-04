# frozen_string_literal: true

module Metronome
  module Models
    class CreditTypeListResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Array<Metronome::Models::CreditTypeListResponse::Data>]
      required :data, Metronome::ArrayOf.new(-> { Metronome::Models::CreditTypeListResponse::Data })

      # @!attribute [rw] next_page
      #   @return [String]
      required :next_page, String

      class Data < BaseModel
        # @!attribute [rw] id
        #   @return [String]
        optional :id, String

        # @!attribute [rw] is_currency
        #   @return [Boolean]
        optional :is_currency, Metronome::BooleanModel

        # @!attribute [rw] name_
        #   @return [String]
        optional :name_, String
      end
    end
  end
end
