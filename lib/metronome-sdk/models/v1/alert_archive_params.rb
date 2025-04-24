# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class AlertArchiveParams < MetronomeSDK::BaseModel
        # @!parse
        #   extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

        # @!attribute id
        #   The Metronome ID of the alert
        #
        #   @return [String]
        required :id, String

        # @!attribute [r] release_uniqueness_key
        #   If true, resets the uniqueness key on this alert so it can be re-used
        #
        #   @return [Boolean, nil]
        optional :release_uniqueness_key, MetronomeSDK::BooleanModel

        # @!parse
        #   # @return [Boolean]
        #   attr_writer :release_uniqueness_key

        # @!parse
        #   # @param id [String]
        #   # @param release_uniqueness_key [Boolean]
        #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(id:, release_uniqueness_key: nil, request_options: {}, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
      end
    end
  end
end
