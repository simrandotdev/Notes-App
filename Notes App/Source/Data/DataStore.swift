//
//  DataStore.swift
//  Notes App
//
//  Created by Simran Preet Narang on 2023-07-11.
//
import Foundation

class DataStore {
    
    private var store = UserDefaults.standard
    private var encoder = JSONEncoder()
    private var decoder = JSONDecoder()
    
    func set<T>(_ object: T, key: String) where T: Codable {
        if let objectData = try? encoder.encode(object) {
            store.set(objectData, forKey: key)
        }
    }

    
    func object<T>(forKey key: String, type: T.Type) -> T? where T: Codable {
        guard let itemsData = store.data(forKey: key) else { return nil }
        let items = try? decoder.decode(T.self, from: itemsData)
        return items
    }
}
