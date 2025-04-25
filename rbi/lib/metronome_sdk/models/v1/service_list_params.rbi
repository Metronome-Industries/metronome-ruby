# typed: strong

module MetronomeSDK
  module Models
    module V1
      class ServiceListParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        sig do
          params(request_options: T.any(MetronomeSDK::RequestOptions, MetronomeSDK::Internal::AnyHash))
            .returns(T.attached_class)
        end
        def self.new(request_options: {}); end

        sig { override.returns({request_options: MetronomeSDK::RequestOptions}) }
        def to_hash; end
      end
    end
  end
end
