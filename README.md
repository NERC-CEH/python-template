# Python Project Template

[![tests badge](https://github.com/NERC-CEH/python-template/actions/workflows/test.yml/badge.svg)](https://github.com/NERC-CEH/python-template/actions)
[![docs badge](https://github.com/NERC-CEH/python-template/actions/workflows/doc-deployment.yml/badge.svg)](https://nerc-ceh.github.io/python-template/)

[Read the docs!](https://nerc-ceh.github.io/iot-swarm/)

This repository is a template for a basic Python project. Included here is:

* Example Python package
* Tests
* Documentation
* Automatic incremental versioning
* CI/CD
    * Installs and tests the package
    * Builds documentation on branches
    * Deploys documentation on main branch

## Building the Package Documentation

The documentation is driven by [Sphinx](https://www.sphinx-doc.org/) an industry standard for documentation with a healthy userbase and lots of add-ons. It uses `sphinx-apidoc` to generate API documentation for the codebase from Python docstrings.

To run `sphinx-apidoc` run:

```
cd docs
make apidoc
```

This will populate `./docs/sources/...` with `*.rst` files for each Python module, which may be included into the documentation.

Documentation can then be built locally by running `make html`.