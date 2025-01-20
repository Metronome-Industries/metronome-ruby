# frozen_string_literal: true

module Metronome
  module Models
    # @example
    # ```ruby
    # plan_list_response => {
    #   id: String,
    #   description: String,
    #   name: String,
    #   custom_fields: -> { Metronome::HashOf[String] === _1 }
    # }
    # ```
    class PlanListResponse < Metronome::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute description
      #
      #   @return [String]
      required :description, String

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute [r] custom_fields
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :custom_fields, Metronome::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :custom_fields

      # @!parse
      #   # @param id [String]
      #   # @param description [String]
      #   # @param name [String]
      #   # @param custom_fields [Hash{Symbol=>String}]
      #   #
      #   def initialize(id:, description:, name:, custom_fields: nil, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
