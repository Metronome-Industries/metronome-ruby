# typed: strong

module MetronomeSDK
  module Models
    module V1
      class DashboardGetEmbeddableURLResponse < MetronomeSDK::Internal::Type::BaseModel
        sig { returns(MetronomeSDK::Models::V1::DashboardGetEmbeddableURLResponse::Data) }
        attr_reader :data

        sig do
          params(
            data: T.any(MetronomeSDK::Models::V1::DashboardGetEmbeddableURLResponse::Data, MetronomeSDK::Internal::AnyHash)
          )
            .void
        end
        attr_writer :data

        sig do
          params(
            data: T.any(MetronomeSDK::Models::V1::DashboardGetEmbeddableURLResponse::Data, MetronomeSDK::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(data:); end

        sig { override.returns({data: MetronomeSDK::Models::V1::DashboardGetEmbeddableURLResponse::Data}) }
        def to_hash; end

        class Data < MetronomeSDK::Internal::Type::BaseModel
          sig { returns(T.nilable(String)) }
          attr_reader :url

          sig { params(url: String).void }
          attr_writer :url

          sig { params(url: String).returns(T.attached_class) }
          def self.new(url: nil); end

          sig { override.returns({url: String}) }
          def to_hash; end
        end
      end
    end
  end
end
