# typed: strong

module MetronomeSDK
  module Models
    module V1
      class ContractScheduleProServicesInvoiceResponse < MetronomeSDK::Internal::Type::BaseModel
        sig { returns(T::Array[MetronomeSDK::Models::V1::Customers::Invoice]) }
        attr_accessor :data

        sig do
          params(
            data: T::Array[T.any(MetronomeSDK::Models::V1::Customers::Invoice, MetronomeSDK::Internal::AnyHash)]
          )
            .returns(T.attached_class)
        end
        def self.new(data:); end

        sig { override.returns({data: T::Array[MetronomeSDK::Models::V1::Customers::Invoice]}) }
        def to_hash; end
      end
    end
  end
end
