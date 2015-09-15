import re

class Splitter():

    def split_string_into_sentence(self, input):

        # ElwynLikesA10TUCCheeseBiscuitsTUC

        split = self.split_string_on_uppcase_or_numeric(input)
        # [Elwyn], [A], [Likes], [1], [0], [T], [U], [C], [Cheese], [Biscuits], [T], [U], [C]

        joined = self.join_groups(split)
        # Elwyn A Likes 1 0 T U C Cheese Biscuits T U C

        number_merged = self.merge_consecutive_numbers(joined)
        # Elwyn A Likes 10 T U C Cheese Biscuits T U C

        consecutive_upper_merged = self.merge_consecutive_uppercase(number_merged)
        # Elwyn A Likes 10 TUC Cheese Biscuits TUC

        downcased = self.downcase_uppercase_followed_by_lower(consecutive_upper_merged)
        # elwyn A likes 10 TUC cheese biscuits TUC

        titled = self.uppercase_first_char(downcased)
        # Elwyn A likes 10 TUC cheese biscuits TUC

        single_char_downcased = self.downcase_single_char_words(titled)
        # Elwyn a likes 10 TUC cheese biscuits TUC

        return single_char_downcased

    def downcase_single_char_words(self, titled):
        callback = lambda pat: pat.group(1).lower()
        single_char_downcased = re.sub(r'(\s+([A-Z])\s+)', callback, titled);
        return single_char_downcased

    def uppercase_first_char(self, downcased):
        titled = re.sub('([a-zA-Z])', lambda x: x.groups()[0].upper(), downcased, 1)
        return titled

    def downcase_uppercase_followed_by_lower(self, consecutive_upper_merged):
        callback = lambda pat: pat.group(1).lower()
        downcased = re.sub(r'([A-Z])(?=[a-z]+)', callback, consecutive_upper_merged)
        return downcased

    def merge_consecutive_uppercase(self, number_merged):
        consecutive_upper_merged = re.sub(r'([A-Z])\s+(?=[A-Z]( +|$))', r'\1', number_merged)
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
