# frozen_string_literal: true

require_relative "../test_helper"

class MetronomeSDK::Test::Resources::PackagesTest < MetronomeSDK::Test::ResourceTest
  def test_create_required_params
    response = @metronome.packages.create(name: "My package")

    assert_pattern do
      response => MetronomeSDK::Models::PackageCreateResponse
    end

    assert_pattern do
      response => {
        data: MetronomeSDK::ID
      }
    end
  end
end
