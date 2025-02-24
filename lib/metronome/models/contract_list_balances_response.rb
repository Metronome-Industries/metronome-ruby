# frozen_string_literal: true

module Metronome
  module Models
    class ContractListBalancesResponse < Metronome::BaseModel
      # @!attribute data
      #
      #   @return [Array<Metronome::Models::Commit, Metronome::Models::Credit>]
      required :data, -> { Metronome::ArrayOf[union: Metronome::Models::ContractListBalancesResponse::Data] }

      # @!attribute next_page
      #
      #   @return [String, nil]
      required :next_page, String, nil?: true

      # @!parse
      #   # @param data [Array<Metronome::Models::Commit, Metronome::Models::Credit>]
      #   # @param next_page [String, nil]
      #   #
      #   def initialize(data:, next_page:, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void

      # @abstract
      #
      # @example
      # ```ruby
      # case data
      # in Metronome::Models::Commit
      #   # ...
      # in Metronome::Models::Credit
      #   # ...
      # end
      # ```
      class Data < Metronome::Union
        variant -> { Metronome::Models::Commit }

        variant -> { Metronome::Models::Credit }
      end
    end
  end
end
