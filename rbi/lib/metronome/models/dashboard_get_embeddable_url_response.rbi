# typed: strong

module Metronome
  module Models
    class DashboardGetEmbeddableURLResponse < Metronome::BaseModel
      sig { returns(Metronome::Models::DashboardGetEmbeddableURLResponse::Data) }
      def data
      end

      sig do
        params(_: Metronome::Models::DashboardGetEmbeddableURLResponse::Data).returns(Metronome::Models::DashboardGetEmbeddableURLResponse::Data)
      end
      def data=(_)
      end

      sig { params(data: Metronome::Models::DashboardGetEmbeddableURLResponse::Data).void }
      def initialize(data:)
      end

      sig { override.returns({data: Metronome::Models::DashboardGetEmbeddableURLResponse::Data}) }
      def to_hash
      end

      class Data < Metronome::BaseModel
        sig { returns(T.nilable(String)) }
        def url
        end

        sig { params(_: String).returns(String) }
        def url=(_)
        end

        sig { params(url: String).void }
        def initialize(url: nil)
        end

        sig { override.returns({url: String}) }
        def to_hash
        end
      end
    end
  end
end
