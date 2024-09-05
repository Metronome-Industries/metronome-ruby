# frozen_string_literal: true

module Metronome
  module Models
    class ContractCreateHistoricalInvoicesResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Array<Metronome::Models::Invoice>]
      required :data, Metronome::ArrayOf.new(-> { Metronome::Models::Invoice })
    end
  end
end
