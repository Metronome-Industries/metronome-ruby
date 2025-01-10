# frozen_string_literal: true

module Metronome
  module Models
    # @example
    #
    # ```ruby
    # contract_list_balances_response => {
    #   data: -> { Metronome::ArrayOf[union: Metronome::Models::ContractListBalancesResponse::Data] === _1 },
    #   next_page: String
    # }
    # ```
    class ContractListBalancesResponse < Metronome::BaseModel
      # @!attribute data
      #
      #   @return [Array<Metronome::Models::Commit, Metronome::Models::Credit>]
      required :data, -> { Metronome::ArrayOf[union: Metronome::Models::ContractListBalancesResponse::Data] }

      # @!attribute next_page
      #
      #   @return [String, nil]
      required :next_page, String

      # @!parse
      #   # @param data [Array<Metronome::Models::Commit, Metronome::Models::Credit>]
      #   # @param next_page [String, nil]
      #   #
      #   def initialize(data:, next_page:, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void

      # @example
      #
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
