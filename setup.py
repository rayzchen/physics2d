from setuptools import setup, find_packages
import os, physics2d

with open("README.md", "r") as fh:
    long_description = fh.read()

setup(
    name = "physics2d",
    version = physics2d.__version__,
    author = "Ray Chen",
    author_email = "tankimarshal2@gmail.com",
    description = "Template for a new Python project",
    long_description = long_description,
    long_description_content_type = "text/markdown",
    url = "https://github/rayzchen/physics2d",
    packages = find_packages(),
    classifiers = [
        "Programming Language :: Python :: 3.7",
        "License :: OSI Approved :: MIT License",
        "Operating System :: Microsoft :: Windows :: Windows 10",
    ],
    install_requires = [
        
    ],
    python_requires = '>=3.7',
)