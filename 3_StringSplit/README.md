# Description:
Converts mixed case sentences that include numbers into a readable sentence structure

# Installation:
```
pip install nose
```

# Usage: (From root)
```
python string_split/split.py "String1" "String2" etc...
```

# Tests: (From root)
```
nosetests
```

# Example:
```
python string_split/split.py "String10" "StringA200" "StringA38AWS"

Formatted 'String10' -> 'String 10'
Formatted 'StringA200' -> 'String a 200'
Formatted 'StringA38AWS' -> 'String a 38 AWS'

```