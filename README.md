# Python Project Template

[![tests badge](https://github.com/NERC-CEH/python-template/actions/workflows/pipeline.yml/badge.svg)](https://github.com/NERC-CEH/python-template/actions)
[![docs badge](https://github.com/NERC-CEH/python-template/actions/workflows/deploy-docs.yml/badge.svg)](https://nerc-ceh.github.io/python-template/)

[Read the docs!](https://nerc-ceh.github.io/python-template)

This repository is a template for a basic Python project. Included here is:

* Example Python package
* Tests
* Documentation
* Automatic incremental versioning
* CI/CD
    * Installs and tests the package
    * Builds documentation on branches
    * Deploys documentation on main branch
    * Deploys docker image to AWS ECR

## Building the Package Documentation

The documentation is driven by [Sphinx](https://www.sphinx-doc.org/) an industry standard for documentation with a healthy userbase and lots of add-ons. It uses `sphinx-apidoc` to generate API documentation for the codebase from Python docstrings.

To run `sphinx-apidoc` run:

```
cd docs
make apidoc
```

This will populate `./docs/sources/...` with `*.rst` files for each Python module, which may be included into the documentation.

Documentation can then be built locally by running `make html`, or found on the [GitHub Deployment](https://nerc-ceh.github.io/python-template).

## Automatic Versioning

This codebase is set up using [autosemver](https://autosemver.readthedocs.io/en/latest/usage.html#) a tool that uses git commit history to calculate the package version. Each time you make a commit, it increments the patch version by 1. You can increment by:

* Normal commit. Use for bugfixes and small updates
    * Increments patch version: `x.x.5 -> x.x.6`
* Commit starts with `* NEW:`. Use for new features
    * Increments minor version `x.1.x -> x.2.x`
* Commit starts with `* INCOMPATIBLE:`. Use for API breaking changes
    * Increments major version `2.x.x -> 3.x.x`

## Docker and the ECR

The python code is packaged into a docker image and pushed to the AWS ECR. For the deployment to succeed you must:

* Add 2 secrets to the GitHub Actions:
    * AWS_REGION: \<our-region\>
    * AWS_ROLE_ARN: \<the-IAM-role-used-to-deploy\>
* Add a repository to the ECR with the same name as the GitHub repo
