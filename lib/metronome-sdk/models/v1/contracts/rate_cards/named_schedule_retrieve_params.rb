# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        module RateCards
          class NamedScheduleRetrieveParams < MetronomeSDK::BaseModel
            # @!parse
            #   extend MetronomeSDK::RequestParameters::Converter
            include MetronomeSDK::RequestParameters

            # @!attribute contract_id
            #   ID of the contract whose named schedule is to be retrieved
            #
            #   @return [String]
            required :contract_id, String

            # @!attribute customer_id
            #   ID of the customer whose named schedule is to be retrieved
            #
            #   @return [String]
            required :customer_id, String

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
            #   # @param contract_id [String]
            #   # @param customer_id [String]
            #   # @param schedule_name [String]
            #   # @param covering_date [Time]
            #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
            #   #
            #   def initialize(contract_id:, customer_id:, schedule_name:, covering_date: nil, request_options: {}, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
          end
        end
      end
    end
  end
end
