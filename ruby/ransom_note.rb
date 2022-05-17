require "minitest/autorun"

# Given two strings ransomNote and magazine, return true if ransomNote can be constructed from magazine and false otherwise.

# Each letter in magazine can only be used once in ransomNote.

def can_construct(ransom_note, magazine)

end


class RansomNoteTest < Minitest::Test
    def test_case_one
        assert_equal(can_construct("a", "b"), false)
    end
    # def test_case_two
    #     assert_equal(can_construct("aa", "ab"), false)
    # end
    # def test_case_three
    #     assert_equal(can_construct("aa", "aab"), true)
    # end
end
