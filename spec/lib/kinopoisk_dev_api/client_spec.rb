# frozen_string_literal: true

RSpec.describe KinopoiskDevApi::Client, :vcr do
  let(:api_key) { ENV.fetch('X_API_KEY') }
  let(:endpoint) { KinopoiskDevApi::ENDPOINTS[:movie_awards] }
  let(:client) { described_class.new(api_key) }

  describe '#call' do
    subject(:api_call) { client.call(endpoint) }

    it 'returns hash' do
      expect(api_call).to be_a(Hash)
    end

    context 'when token is invalid' do
      let(:api_key) { 'WRONG_API_KEY' }
      let(:error_message) do
        'Kinopoisk.dev API has returned the error. (message: "Переданный токен некорректен!", error: "Unauthorized", statusCode: 401)'
      end

      it 'raises an error' do
        expect { api_call }.to raise_error(KinopoiskDevApi::Exceptions::ResponseError, error_message)
      end
    end

    context 'with low timeout' do
      before do
        KinopoiskDevApi.configure { |config| config.connection_timeout = 0.001 }
      end

      after do
        KinopoiskDevApi.configure { |config| config.connection_timeout = 30 }
      end

      it 'raises an error' do
        expect { api_call }
          .to raise_error(Faraday::TimeoutError)
      end
    end

    context 'with low open_timeout' do
      before do
        KinopoiskDevApi.configure { |config| config.connection_open_timeout = 0.001 }
      end

      after do
        KinopoiskDevApi.configure { |config| config.connection_open_timeout = 30 }
      end

      it 'raises an error' do
        expect { api_call }
          .to raise_error(Faraday::ConnectionFailed)
      end
    end
  end

  describe '#method_missing' do
    subject { client }

    context 'when method name is in snake case' do
      let(:endpoint) { 'movie_awards' }

      it 'responds to snake-cased endpoints' do
        expect(client).to respond_to(endpoint)
      end
    end
  end

  describe '#movie' do
    subject { client.movie }

    it { is_expected.to be_an_instance_of(KinopoiskDevApi::Types::MovieDocsResponseDtoV1_4) }
  end

  describe '#movie_by_id' do
    subject { client.movie_by_id(id: 476) }

    it { is_expected.to be_an_instance_of(KinopoiskDevApi::Types::MovieDtoV1_4) }
  end

  describe '#movie_search' do
    subject { client.movie_search }

    it { is_expected.to be_an_instance_of(KinopoiskDevApi::Types::SearchMovieResponseDtoV1_4) }
  end

  describe '#movie_random' do
    subject { client.movie_random }

    it { is_expected.to be_an_instance_of(KinopoiskDevApi::Types::MovieDtoV1_4) }
  end

  describe '#movie_possible_values_by_field' do
    subject { client.movie_possible_values_by_field(field: 'type') }

    it { is_expected.to all be_an_instance_of(KinopoiskDevApi::Types::PossibleValueDto) }
  end

  describe '#season' do
    subject { client.season }

    it { is_expected.to be_an_instance_of(KinopoiskDevApi::Types::SeasonDocsResponseDtoV1_4) }
  end

  describe '#review' do
    subject { client.review }

    it { is_expected.to be_an_instance_of(KinopoiskDevApi::Types::ReviewDocsResponseDtoV1_4) }
  end

  describe '#person_by_id' do
    subject { client.person_by_id(id: 1514) }

    it { is_expected.to be_an_instance_of(KinopoiskDevApi::Types::Person) }
  end

  describe '#person' do
    subject { client.person }

    it { is_expected.to be_an_instance_of(KinopoiskDevApi::Types::PersonDocsResponseDtoV1_4) }
  end

  describe '#person_search' do
    subject { client.person_search }

    it { is_expected.to be_an_instance_of(KinopoiskDevApi::Types::SearchPersonResponseDtoV1_4) }
  end

  describe '#person_awards' do
    subject { client.person_awards }

    it { is_expected.to be_an_instance_of(KinopoiskDevApi::Types::PersonAwardDocsResponseDto) }
  end

  describe '#studio' do
    subject { client.studio }

    it { is_expected.to be_an_instance_of(KinopoiskDevApi::Types::StudioDocsResponseDtoV1_4) }
  end

  describe '#keyword' do
    subject { client.keyword }

    it { is_expected.to be_an_instance_of(KinopoiskDevApi::Types::KeywordDocsResponseDtoV1_4) }
  end

  describe '#image' do
    subject { client.image }

    it { is_expected.to be_an_instance_of(KinopoiskDevApi::Types::ImageDocsResponseDtoV1_4) }
  end

  describe '#list' do
    subject { client.list }

    it { is_expected.to be_an_instance_of(KinopoiskDevApi::Types::ListDocsResponseDtoV1_4) }
  end

  describe '#list_by_slug' do
    subject { client.list_by_slug(slug: 'top250') }

    it { is_expected.to be_an_instance_of(KinopoiskDevApi::Types::List) }
  end
end
