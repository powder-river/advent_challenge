import re

def vowel(word):
    is_vowel = re.search(r'(.*?)[aeiou](.*?)[aeiou](.*?)[aeiou](.*?)', word, flags=0)
    if is_vowel:
        return True
    else:
        return False

def multi_letter(word):
    letters = re.search(r'(.)\1+',word, flags=0)
    if letters:
        return True
    else:
        return False
