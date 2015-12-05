import unittest
from day_2 import *
from day_5 import *




class AdventTest(unittest.TestCase):

    def test(self):
        self.failUnless(True)

    def test_regex_vowels(self):
        a = "ugknbfddgicrmopn"
        b = "danai"
        f = "dvszwmarrgswjxmb"

        self.assertTrue(vowel(a))
        self.assertTrue(vowel(b))
        self.assertFalse(vowel(f))

    # def test_day2_clean_list(self):
    #     day_2_data = """20x3x11
    #     15x27x5
    #     """
    #
    #     presents = clean_presents(day_2_data)
    #     self.assertEqual(presents,[{"l":20,"w":3,"h":11},{"l":15,"w":27,"h":5}])

if __name__ == '__main__':
    unittest.main()
