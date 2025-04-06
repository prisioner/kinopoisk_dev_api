# frozen_string_literal: true

module KinopoiskDevApi
  ENDPOINTS = {
    movie_by_id: {
      path: '/movie/:id',
      response_type: "Types::MovieDto<VERSION>"
    }.freeze,
    movie: {
      path: '/movie',
      response_type: "Types::MovieDocsResponseDto<VERSION>"
    }.freeze,
    movie_search: {
      path: '/movie/search',
      response_type: "Types::SearchMovieResponseDto<VERSION>"
    }.freeze,
    movie_random: {
      path: '/movie/random',
      response_type: "Types::MovieDto<VERSION>"
    }.freeze,
    movie_awards: {
      path: '/movie/awards',
      response_type: Types::MovieAwardDocsResponseDto
    }.freeze,
    movie_possible_values_by_field: {
      path: '/movie/possible-values-by-field',
      response_type: Types::Array.of(Types::PossibleValueDto),
      version: 'v1'
    }.freeze,
    season: {
      path: '/season',
      response_type: "Types::SeasonDocsResponseDto<VERSION>"
    }.freeze,
    review: {
      path: '/review',
      response_type: "Types::ReviewDocsResponseDto<VERSION>"
    }.freeze,
    person_by_id: {
      path: '/person/:id',
      response_type: Types::Person
    }.freeze,
    person: {
      path: '/person',
      response_type: "Types::PersonDocsResponseDto<VERSION>"
    }.freeze,
    person_search: {
      path: '/person/search',
      response_type: "Types::SearchPersonResponseDto<VERSION>"
    }.freeze,
    person_awards: {
      path: '/person/awards',
      response_type: Types::PersonAwardDocsResponseDto
    }.freeze,
    studio: {
      path: '/studio',
      response_type: "Types::StudioDocsResponseDto<VERSION>"
    }.freeze,
    keyword: {
      path: '/keyword',
      response_type: "Types::KeywordDocsResponseDto<VERSION>"
    }.freeze,
    image: {
      path: '/image',
      response_type: "Types::ImageDocsResponseDto<VERSION>"
    }.freeze,
    list: {
      path: '/list',
      response_type: "Types::ListDocsResponseDto<VERSION>",
    }.freeze,
    list_by_slug: {
      path: '/list/:slug',
      response_type: Types::List
    }.freeze
  }.freeze
end
