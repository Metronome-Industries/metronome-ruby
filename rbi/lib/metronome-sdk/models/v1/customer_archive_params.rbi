# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CustomerArchiveParams < MetronomeSDK::Models::ID
        extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

        sig { params(request_options: T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything])).void }
        def initialize(request_options: {})
        end

        sig { override.returns({request_options: MetronomeSDK::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
