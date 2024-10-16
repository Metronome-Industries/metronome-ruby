# frozen_string_literal: true

module Metronome
  module Models
    class DashboardGetEmbeddableURLResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Metronome::Models::DashboardGetEmbeddableURLResponse::Data]
      required :data, -> { Metronome::Models::DashboardGetEmbeddableURLResponse::Data }

      class Data < BaseModel
        # @!attribute [rw] url
        #   @return [String]
        optional :url, String

        # Create a new instance of Data from a Hash of raw data.
        #
        # @overload initialize(url: nil)
        # @param url [String]
        def initialize(data = {})
          super
        end
      end

      # Create a new instance of DashboardGetEmbeddableURLResponse from a Hash of raw
      #   data.
      #
      # @overload initialize(data: nil)
      # @param data [Object]
      def initialize(data = {})
        super
      end
    end
  end
end
