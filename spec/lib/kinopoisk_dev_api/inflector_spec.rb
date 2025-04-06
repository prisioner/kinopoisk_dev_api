# frozen_string_literal: true

RSpec.describe KinopoiskDevApi::Inflector do
  subject(:inflector) { described_class.new(__FILE__) }

  describe '#camelize' do
    subject { super().camelize(basename, "/kinopoisk_dev_api/#{basename}.rb") }

    context 'when endpoints inflected' do
      let(:basename) { 'endpoints' }

      it { is_expected.to eq('ENDPOINTS') }
    end

    context 'when versionized type inflected' do
      let(:basename) { 'my_type_v1_4' }

      it { is_expected.to eq('MyTypeV1_4') }
    end

    context 'when usual class inflected' do
      let(:basename) { 'birth_place' }

      it { is_expected.to eq('BirthPlace') }
    end
  end
end
