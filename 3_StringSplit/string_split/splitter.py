import re
import pdb

class Splitter():

    def lowercase_replacement(match):
        return "["+match.group(1).lower()+"]"

    def split(self, input):
        split = self.split_string_on_uppcase_or_numeric(input)
        joined = self.join_groups(split)
        number_merged = self.merge_consecutive_numbers(joined)
        consecutive_upper_merged = self.merge_consecutive_uppercase(number_merged)
        downcased = self.downcase_uppercase_followed_by_lower(consecutive_upper_merged)
        titled = self.uppercase_first_char(downcased)

        return titled

    def uppercase_first_char(self, downcased):
        titled = re.sub('([a-zA-Z])', lambda x: x.groups()[0].upper(), downcased, 1)
        return titled

    def downcase_uppercase_followed_by_lower(self, consecutive_upper_merged):
        callback = lambda pat: pat.group(1).lower()
        downcased = re.sub(r'([A-Z])(?=[a-z]+)', callback, consecutive_upper_merged)
        return downcased

    def merge_consecutive_uppercase(self, number_merged):
        consecutive_upper_merged = re.sub(r'([A-Z])\s+(?=[A-Z] +)', r'\1', number_merged)
        return consecutive_upper_merged

    def merge_consecutive_numbers(self, joined):
        number_merged = re.sub(r'(\d+)\s+(?=\d)', r'\1', joined)
        return number_merged

    def join_groups(self, split):
        joined = ' '.join(str(word) for word in split)
        return joined

    def split_string_on_uppcase_or_numeric(self, input):
        split = re.findall('([A-Z0-9][a-z]*)', input)
        return split
