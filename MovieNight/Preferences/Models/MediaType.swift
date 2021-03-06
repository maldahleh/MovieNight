//
//  MediaType.swift
//  MovieNight
//
//  Created by Mohammed Al-Dahleh on 2018-01-30.
//  Copyright © 2018 Mohammed Al-Dahleh. All rights reserved.
//

enum MediaType: String {
    case movies = "movie"
    case tvShows = "tv"
}

extension MediaType {
    var tmdbUrl: String {
        switch self {
        case .movies: return "https://www.themoviedb.org/movie/"
        case .tvShows: return "https://www.themoviedb.org/tv/"
        }
    }
    
    var yearQueryString: String {
        switch self {
        case .movies: return "primary_release_date.gte"
        case .tvShows: return "first_air_date.gte"
        }
    }
}

// MARK: - JSON keys
extension MediaType {
    var posterJsonKey: String {
        return "poster_path"
    }
    
    var idJsonKey: String {
        return "id"
    }
    
    var titleJsonKey: String {
        switch self {
        case .movies: return "title"
        case .tvShows: return "name"
        }
    }
    
    var overviewJsonKey: String {
        return "overview"
    }
    
    var avereageRatingJsonKey: String {
        return "vote_average"
    }
    
    var yearJsonKey: String {
        switch self {
        case .movies: return "release_date"
        case .tvShows: return "first_air_date"
        }
    }
}
