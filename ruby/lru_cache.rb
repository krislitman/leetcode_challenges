# Design a data structure that follows the constraints of a Least Recently Used (LRU) cache.

# Implement the LRUCache class:

# LRUCache(int capacity) Initialize the LRU cache with positive size capacity.
# int get(int key) Return the value of the key if the key exists, otherwise return -1.
# void put(int key, int value) Update the value of the key if the key exists. Otherwise, add the key-value pair to the cache. If the number of keys exceeds the capacity from this operation, evict the least recently used key.
# The functions get and put must each run in O(1) average time complexity.

class LRUCache
    attr_reader :cache

    def initialize(capacity)
        @capacity = capacity
        @cache = {}
        @key = nil
        @c_arr = []
    end

    def get(key)
        if cache[key]
            adjust_c_arr(key)
            cache[key]
        else
            -1
        end
    end

    def put(key, value)

        pair = {
            key => value
        }

        if cache.keys.length == @capacity
            remove = @c_arr.last
            delete_from_c_arr(remove)
            cache.delete(remove)

            @key = key
            cache.merge! pair
            add_to_c_arr(key)
        else
            @key = key
            cache.merge! pair
            add_to_c_arr(key)
        end
    end

    def adjust_c_arr(key)
        least = @c_arr[0]
        curr = @c_arr.index(key)
        @c_arr[0], @c_arr[curr] = curr, least
    end

    def delete_from_c_arr(key)
        @c_arr.delete_if{|i| i == key}
    end

    def add_to_c_arr(key)
        @c_arr.unshift(key)
    end
end

# Example 1:

# Input
# ["LRUCache", "put", "put", "get", "put", "get", "put", "get", "get", "get"]
# [[2], [1, 1], [2, 2], [1], [3, 3], [2], [4, 4], [1], [3], [4]]
# Output
# [null, null, null, 1, null, -1, null, -1, 3, 4]

# Explanation
# LRUCache lRUCache = new LRUCache(2);
# lRUCache.put(1, 1); // cache is {1=1}
# lRUCache.put(2, 2); // cache is {1=1, 2=2}
# lRUCache.get(1);    // return 1
# lRUCache.put(3, 3); // LRU key was 2, evicts key 2, cache is {1=1, 3=3}
# lRUCache.get(2);    // returns -1 (not found)
# lRUCache.put(4, 4); // LRU key was 1, evicts key 1, cache is {4=4, 3=3}
# lRUCache.get(1);    // return -1 (not found)
# lRUCache.get(3);    // return 3
# lRUCache.get(4);    // return 4

require "minitest/autorun"

class TestCache < Minitest::Test
  def setup
    @lru = LRUCache.new(2)
  end

  def test_it_exists
    assert_instance_of(LRUCache, @lru)
  end

  def test_functionality
    @lru.put(1,1)
    one = {
        1 => 1
    }
    assert_equal(one, @lru.cache)

    two = {
        1 => 1,
        2 => 2
    }
    @lru.put(2,2)
    assert_equal(two, @lru.cache)
    assert_equal(1, @lru.get(1))

    three = {
        1 => 1,
        3 => 3
    }
    @lru.put(3,3)
    assert_equal(three, @lru.cache)
    assert_equal(-1, @lru.get(2))

    four = {
        4 => 4,
        3 => 3,
    }
    @lru.put(4,4)
    assert_equal(four, @lru.cache)
    assert_equal(-1, @lru.get(1))
    assert_equal(3, @lru.get(3))
    assert_equal(4, @lru.get(4))
  end
end
