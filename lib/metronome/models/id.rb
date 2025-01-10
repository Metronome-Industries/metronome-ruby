# frozen_string_literal: true

module Metronome
  module Models
    # @example
    #
    # ```ruby
    # id => {
    #   id: String
    # }
    # ```
    class ID < Metronome::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!parse
      #   # @param id [String]
      #   #
      #   def initialize(id:, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
