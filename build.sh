python setup.py bdist_wheel sdist
rm -rf build/ physics2d.egg-info/ docs/build/html/
find docs/source/* ! -name conf.py -delete
sphinx-apidoc -e F -M -o docs/source physics2d physics2d/config.py
sphinx-build -b html docs/source docs/build/html
git add .
git commit -m $1
git push
pip install --upgrade dist/physics2d-0.0.1-py3-none-any.whl