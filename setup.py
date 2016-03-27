from distutils.core import setup

setup(
  name = 'djangocms-server',
  packages = ['djangocms-server'],
  version = '0.1',
  description = 'For managing multiple DjangoCMS installations on a server',
  author = 'Lynn Cyrin',
  author_email = 'lynncyrin@gmail.com',
  url = 'https://github.com/LynnCo/djangocms-server',
  keywords = ['django'],
  classifiers = [],
  install_requires=['djangocms-installer'],
)
