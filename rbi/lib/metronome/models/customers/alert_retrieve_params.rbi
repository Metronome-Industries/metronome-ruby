# typed: strong

module Metronome
  module Models
    module Customers
      class AlertRetrieveParams < Metronome::BaseModel
        extend Metronome::RequestParameters::Converter
        include Metronome::RequestParameters

        Shape = T.type_alias do
          T.all({alert_id: String, customer_id: String}, Metronome::RequestParameters::Shape)
        end

        sig { returns(String) }
        attr_accessor :alert_id

        sig { returns(String) }
        attr_accessor :customer_id

        sig { params(alert_id: String, customer_id: String, request_options: Metronome::RequestOpts).void }
        def initialize(alert_id:, customer_id:, request_options: {}); end

        sig { returns(Metronome::Models::Customers::AlertRetrieveParams::Shape) }
        def to_h; end
      end
    end
  end
end
