# typed: strong

module Metronome
  module Models
    class DashboardGetEmbeddableURLResponse < Metronome::BaseModel
      sig { returns(Metronome::Models::DashboardGetEmbeddableURLResponse::Data) }
      attr_accessor :data

      sig { params(data: Metronome::Models::DashboardGetEmbeddableURLResponse::Data).void }
      def initialize(data:)
      end

      sig { override.returns({data: Metronome::Models::DashboardGetEmbeddableURLResponse::Data}) }
      def to_hash
      end

      class Data < Metronome::BaseModel
        sig { returns(T.nilable(String)) }
        attr_reader :url

        sig { params(url: String).void }
        attr_writer :url

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
