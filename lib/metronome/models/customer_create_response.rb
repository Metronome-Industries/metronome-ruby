# frozen_string_literal: true

module Metronome
  module Models
    class CustomerCreateResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Metronome::Models::Customer]
      required :data, -> { Metronome::Models::Customer }
    end
  end
end
