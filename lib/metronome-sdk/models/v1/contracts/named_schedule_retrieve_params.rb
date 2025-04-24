# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        class NamedScheduleRetrieveParams < MetronomeSDK::BaseModel
          # @!parse
          #   extend MetronomeSDK::RequestParameters::Converter
          include MetronomeSDK::RequestParameters

          # @!attribute rate_card_id
          #   ID of the rate card whose named schedule is to be retrieved
          #
          #   @return [String]
          required :rate_card_id, String

          # @!attribute schedule_name
          #   The identifier for the schedule to be retrieved
          #
          #   @return [String]
          required :schedule_name, String

          # @!attribute [r] covering_date
          #   If provided, at most one schedule segment will be returned (the one that covers
          #     this date). If not provided, all segments will be returned.
          #
          #   @return [Time, nil]
          optional :covering_date, Time

          # @!parse
          #   # @return [Time]
          #   attr_writer :covering_date

          # @!parse
          #   # @param rate_card_id [String]
          #   # @param schedule_name [String]
          #   # @param covering_date [Time]
          #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(rate_card_id:, schedule_name:, covering_date: nil, request_options: {}, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
        end
      end
    end
  end
end
