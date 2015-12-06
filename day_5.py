import re
from words import *

def clean_words(word_list):
    word_list = word_list.split('\n')
    return word_list


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


def exception_chars(word):
    exception = re.search(r'(ab|cd|pq|xy)',word, flags=0)
    if exception:
        return True
    else:
        return False

def naughty_nice(words):
    total = 0
    for w in words:
        if vowel(w) == True and multi_letter(w) == True and exception_chars(w) == False:
            total += 1
    return total

clean = clean_words(words)
nice = naughty_nice(clean)

print("Number of Words: {}, Number of Nice Words: {}".format(len(clean),nice))
