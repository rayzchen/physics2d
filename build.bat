@ECHO OFF

python setup.py bdist_wheel sdist
RMDIR /S /Q "build/" /S /Q "physics2d.egg-info/" /S /Q "docs/build/html/"
cd docs/source && move conf.py .. && cd ..
del /Q source && move conf.py source && cd ..
sphinx-apidoc -e -F -M -o docs/source physics2d physics2d/config.py
sphinx-build -b html docs/source docs/build/html
git add .
git commit -m %1
git push
pip install --upgrade dist/physics2d-0.0.1-py3-none-any.whl