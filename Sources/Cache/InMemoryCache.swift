import Foundation

public class InMemoryCache<Key: Hashable, Value> {

    private var storage: [Key: Value] = [:]

    public init() {}

    // MARK: - Cache

    public func read(for key: Key) throws -> Value? {
        storage[key]
    }

    public func write(item: Value, for key: Key) {
        storage[key] = item
    }

    public func remove(for key: Key) throws {
        storage[key] = nil
    }
}
