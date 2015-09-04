try:
    from setuptools import setup
except ImportError:
    from distutils.core import setup

config = {
    'description': 'Code Club 3 - String Split',
    'author': 'Sean Robinson',
    'author_email': 'srobinson@sorensonmedia.com',
    'version': '0.1',
    'install_requires': ['nose'],
    'packages': ['string_split'],
    'scripts': [],
    'name': 'string_split'
}

setup(**config)
