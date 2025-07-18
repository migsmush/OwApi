#if os(Linux)
import FoundationNetworking
#endif
import Foundation


public struct OwApi: Sendable {
    private let session = URLSession.shared
    private let jsonDecoder = {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .secondsSince1970
        return decoder
    }()
    
    public init() {}
    
    private let baseUrl: String = "https://overfast-api.tekrop.fr"
    
    
    public func fetchHeroes() async throws -> [Hero]? {
        guard let url = urlForFetchHeroes() else { throw ApiServiceError.invalidURL }
        let (fetchHeroesRes, statusCode): ([Hero], Int) = try await fetch(url: url)
        return fetchHeroesRes
    }
    
    private func urlForFetchHeroes(locale: String = "en-us") -> URL? {
        guard var urlComp = URLComponents(string: "\(baseUrl)/heroes") else { return nil }
        
        urlComp.queryItems = [
            URLQueryItem(name: "locale", value: locale)
        ]
        
        return urlComp.url
    }
    
    private func fetch<D: Decodable>(url: URL) async throws -> (D, Int) {
        let (data, resp) = try await session.data(from: url)
        let statusCode = try validateHttpResponse(resp: resp)
        return (try jsonDecoder.decode(D.self, from: data), statusCode)
    }
    
    private func validateHttpResponse(resp: URLResponse) throws -> Int {
        guard let httpResponse = resp as? HTTPURLResponse else {
            throw ApiServiceError.invalidResponseType
        }
        
        guard 200...299 ~= httpResponse.statusCode || 400...499 ~= httpResponse.statusCode else {
            throw ApiServiceError.httpStatusCodeFailed(statusCode: httpResponse.statusCode, error: nil)
        }
        
        return httpResponse.statusCode
    }
    
}
