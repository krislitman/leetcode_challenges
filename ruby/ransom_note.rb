require "minitest/autorun"

# Given two strings ransomNote and magazine, return true if ransomNote can be constructed from magazine and false otherwise.

# Each letter in magazine can only be used once in ransomNote.

# two string inputs
# iterate over magazine, each letter can only be used once to
# try and construct the note
# return true if it can be, false otherwise

def can_construct(ransom_note, magazine)
    l = ransom_note.length
    c = 0
    ransom_dup = ransom_note.split("")
    magazine.split("").each_with_index do |letter, element|
        if ransom_dup.include?(letter)
            c += 1
            i = ransom_dup.index(letter)
            ransom_dup.delete(i)
        end
    end
    l == c ? true : false
end


class RansomNoteTest < Minitest::Test
    def test_case_one
        assert_equal(false, can_construct("a", "b"))
    end

    def test_case_two
        assert_equal(false, can_construct("aa", "ab"))
    end

    def test_case_three
        assert_equal(true, can_construct("aa", "aab"))
    end
end
