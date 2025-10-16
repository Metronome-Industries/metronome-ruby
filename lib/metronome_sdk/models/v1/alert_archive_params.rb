# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Alerts#archive
      class AlertArchiveParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute id
        #   The Metronome ID of the threshold notification
        #
        #   @return [String]
        required :id, String

        # @!attribute release_uniqueness_key
        #   If true, resets the uniqueness key on this threshold notification so it can be
        #   re-used
        #
        #   @return [Boolean, nil]
        optional :release_uniqueness_key, MetronomeSDK::Internal::Type::Boolean

        # @!method initialize(id:, release_uniqueness_key: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V1::AlertArchiveParams} for more details.
        #
        #   @param id [String] The Metronome ID of the threshold notification
        #
        #   @param release_uniqueness_key [Boolean] If true, resets the uniqueness key on this threshold notification so it can be r
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
