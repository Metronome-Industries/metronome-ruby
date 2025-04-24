# typed: strong

module MetronomeSDK
  module Models
    module V1
      class ContractCreateHistoricalInvoicesResponse < MetronomeSDK::BaseModel
        sig { returns(T::Array[MetronomeSDK::Models::V1::Customers::Invoice]) }
        def data
        end

        sig do
          params(_: T::Array[MetronomeSDK::Models::V1::Customers::Invoice])
            .returns(T::Array[MetronomeSDK::Models::V1::Customers::Invoice])
        end
        def data=(_)
        end

        sig { params(data: T::Array[MetronomeSDK::Models::V1::Customers::Invoice]).void }
        def initialize(data:)
        end

        sig { override.returns({data: T::Array[MetronomeSDK::Models::V1::Customers::Invoice]}) }
        def to_hash
        end
      end
    end
  end
end
