# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class ContractScheduleProServicesInvoiceResponse < MetronomeSDK::BaseModel
        # @!attribute data
        #
        #   @return [Array<MetronomeSDK::Models::V1::Customers::Invoice>]
        required :data, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::Customers::Invoice] }

        # @!parse
        #   # @param data [Array<MetronomeSDK::Models::V1::Customers::Invoice>]
        #   #
        #   def initialize(data:, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
      end
    end
  end
end
