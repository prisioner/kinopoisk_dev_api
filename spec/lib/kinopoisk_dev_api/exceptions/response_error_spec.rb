# frozen_string_literal: true

RSpec.describe KinopoiskDevApi::Exceptions::ResponseError, :vcr do
  subject(:error) do
    described_class.new(response)
  rescue StandardError => e
    e
  end

  let(:endpoint) { KinopoiskDevApi::ENDPOINTS[:list] }
  let(:response) { KinopoiskDevApi::Client.new("WRONG-API-KEY").call(endpoint) }

  describe "#error_code" do
    subject { super().error_code }

    it { is_expected.to eq 401 }
  end

  describe "#to_s" do
    subject { super().to_s }

    let(:expected_result) do
      <<~STRING.chomp
        Kinopoisk.dev API has returned the error. (message: "Переданный токен некорректен!", error: "Unauthorized", statusCode: 401)
      STRING
    end

    it { is_expected.to eq expected_result }
  end

  describe "#data" do
    subject { super().data }

    let(:expected_result) do
      {
        error: "Unauthorized",
        message: "Переданный токен некорректен!",
        statusCode: 401
      }.transform_keys(&:to_s)
    end

    it { is_expected.to eq(expected_result) }
  end
end
