# typed: strong

module Metronome
  module Models
    class DashboardGetEmbeddableURLResponse < Metronome::BaseModel
      Shape = T.type_alias { {data: Metronome::Models::DashboardGetEmbeddableURLResponse::Data} }

      sig { returns(Metronome::Models::DashboardGetEmbeddableURLResponse::Data) }
      attr_accessor :data

      sig { params(data: Metronome::Models::DashboardGetEmbeddableURLResponse::Data).void }
      def initialize(data:); end

      sig { returns(Metronome::Models::DashboardGetEmbeddableURLResponse::Shape) }
      def to_h; end

      class Data < Metronome::BaseModel
        Shape = T.type_alias { {url: String} }

        sig { returns(T.nilable(String)) }
        attr_reader :url

        sig { params(url: String).void }
        attr_writer :url

        sig { params(url: String).void }
        def initialize(url: nil); end

        sig { returns(Metronome::Models::DashboardGetEmbeddableURLResponse::Data::Shape) }
        def to_h; end
      end
    end
  end
end
