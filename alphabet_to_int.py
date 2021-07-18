import pdb


def alphabet_position(text):
    expectedList = []
    for t in text:
        expectedList.append(ord(t.lower()) - 96)
    expectedList = [str(x) for x in expectedList if x >= 0]
    expectedList = " ".join(expectedList)
    return expectedList


print(alphabet_position("The sunset sets at twelve o' clock."))

# test.assert_equals(alphabet_position("The sunset sets at twelve o' clock."),
#                    "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11")
