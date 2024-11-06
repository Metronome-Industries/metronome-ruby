# frozen_string_literal: true

module Metronome
  module Models
    class DashboardGetEmbeddableURLResponse < Metronome::BaseModel
      # @!attribute [rw] data
      #   @return [Metronome::Models::DashboardGetEmbeddableURLResponse::Data]
      required :data, -> { Metronome::Models::DashboardGetEmbeddableURLResponse::Data }

      class Data < Metronome::BaseModel
        # @!attribute [rw] url
        #   @return [String]
        optional :url, String

        # @!parse
        #   # Create a new instance of Data from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String, nil] :url
        #   def initialize(data = {}) = super
      end

      # @!parse
      #   # Create a new instance of DashboardGetEmbeddableURLResponse from a Hash of raw
      #   #   data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [Object] :data
      #   def initialize(data = {}) = super
    end
  end
end
