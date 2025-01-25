# frozen_string_literal: true

module Metronome
  module Models
    class CustomerSetNameParams < Metronome::BaseModel
      # @!parse
      #   extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      # @!attribute customer_id
      #
      #   @return [String]
      required :customer_id, String

      # @!attribute name
      #   The new name for the customer. This will be truncated to 160 characters if the
      #     provided name is longer.
      #
      #   @return [String]
      required :name, String

      # @!parse
      #   # @param customer_id [String]
      #   # @param name [String]
      #   # @param request_options [Metronome::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(customer_id:, name:, request_options: {}, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
