# frozen_string_literal: true

module Metronome
  module Models
    class CustomerArchiveParams < Metronome::Models::ID
      # @!parse
      #   extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      # @!parse
      #   # @param request_options [Metronome::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(request_options: {}, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
