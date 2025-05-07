# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CustomerArchiveParams < MetronomeSDK::Models::ID
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

        sig do
          params(request_options: MetronomeSDK::RequestOptions::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(request_options: {})
        end

        sig do
          override.returns({ request_options: MetronomeSDK::RequestOptions })
        end
        def to_hash
        end
      end
    end
  end
end
