import setuptools

with open("README.md", "r", encoding="utf-8") as fh:
    long_description = fh.read()

setuptools.setup(
    name="ptop.py", # Replace with your own username
    version="v2.1.1",
    author="dwhirlpool",
    author_email="ludaniel@apps.singapore.edu.hk",
    description="View System Processes",
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="https://github.com/DWhirlpool/ptop",
    packages=setuptools.find_packages(),
    install_requires = ['psutil',
                       'colorama'],
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
    ],
    python_requires='>=3.6',
)