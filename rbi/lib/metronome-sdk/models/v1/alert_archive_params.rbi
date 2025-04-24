# typed: strong

module MetronomeSDK
  module Models
    module V1
      class AlertArchiveParams < MetronomeSDK::BaseModel
        extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(T::Boolean)) }
        def release_uniqueness_key
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def release_uniqueness_key=(_)
        end

        sig do
          params(
            id: String,
            release_uniqueness_key: T::Boolean,
            request_options: T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .void
        end
        def initialize(id:, release_uniqueness_key: nil, request_options: {})
        end

        sig do
          override
            .returns({
                       id: String,
                       release_uniqueness_key: T::Boolean,
                       request_options: MetronomeSDK::RequestOptions
                     })
        end
        def to_hash
        end
      end
    end
  end
end
