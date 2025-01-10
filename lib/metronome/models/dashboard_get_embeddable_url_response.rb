# frozen_string_literal: true

module Metronome
  module Models
    # @example
    #
    # ```ruby
    # dashboard_get_embeddable_url_response => {
    #   data: Metronome::Models::DashboardGetEmbeddableURLResponse::Data
    # }
    # ```
    class DashboardGetEmbeddableURLResponse < Metronome::BaseModel
      # @!attribute data
      #
      #   @return [Metronome::Models::DashboardGetEmbeddableURLResponse::Data]
      required :data, -> { Metronome::Models::DashboardGetEmbeddableURLResponse::Data }

      # @!parse
      #   # @param data [Metronome::Models::DashboardGetEmbeddableURLResponse::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void

      # @example
      #
      # ```ruby
      # data => {
      #   url: String
      # }
      # ```
      class Data < Metronome::BaseModel
        # @!attribute url
        #
        #   @return [String]
        optional :url, String

        # @!parse
        #   # @param url [String]
        #   #
        #   def initialize(url: nil, **) = super

        # def initialize: (Hash | Metronome::BaseModel) -> void
      end
    end
  end
end
