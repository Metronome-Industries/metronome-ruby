# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        class CreditListResponse < MetronomeSDK::BaseModel
          # @!attribute data
          #
          #   @return [Array<MetronomeSDK::Models::Credit>]
          required :data, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::Credit] }

          # @!attribute next_page
          #
          #   @return [String, nil]
          required :next_page, String, nil?: true

          # @!parse
          #   # @param data [Array<MetronomeSDK::Models::Credit>]
          #   # @param next_page [String, nil]
          #   #
          #   def initialize(data:, next_page:, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
        end
      end
    end
  end
end
