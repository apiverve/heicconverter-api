from setuptools import setup, find_packages

setup(
    name='apiverve_heicconverter',
    version='1.1.14',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='HEIC Converter transforms Apple HEIC and HEIF images to web-friendly formats. Perfect for processing iPhone photos that need to be converted for websites, apps, or services that don't support HEIC.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/heicconverter?utm_source=pypi&utm_medium=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
