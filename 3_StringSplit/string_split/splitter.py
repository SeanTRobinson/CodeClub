import re
import pdb

class Splitter():

    def lowercase_replacement(match):
        return "["+match.group(1).lower()+"]"

    def split(self, input):
        pdb.set_trace()
        split = re.findall('([A-Z0-9][a-z]*)', input)
        joined = ' '.join(str(word) for word in split)
        number_merged = re.sub(r'(\d+)\s+(?=\d)', r'\1', joined)
        consecutive_upper_merged = re.sub(r'([A-Z])\s+(?=[A-Z] +)', r'\1', number_merged)

        callback = lambda pat: pat.group(1).lower()
        downcased = re.sub(r'([A-Z])(?=[a-z]+)', callback, consecutive_upper_merged)
        titled = re.sub('([a-zA-Z])', lambda x: x.groups()[0].upper(), downcased, 1)
        return titled
