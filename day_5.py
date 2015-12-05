import re

def vowel(word):
    is_vowel = re.match(r'(.*?)[aeiou](.*?)[aeiou](.*?)[aeiou](.*?)', word, flags=0)
    if is_vowel:
        return True
    else:
        return False
