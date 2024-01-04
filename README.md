# Cloudformation simple test with devcontainer in a module

Test for the most basic AWS cloudformation template and the cloudformation devcontainer.

The purpose of this repository is to provide a starting point for Cloudformation projects developed with Visual Studio Code and
 - one or more .devcontainer submodules.
 - one or more template submodules.

The idea is to obtain value by:

1. Reuse the .devcontainer configuration. Keep the devcontainer in a separate repo, use it in as many cloudformation parent repositories as needed.
2. Eventually use more .devcontainer flavors, according to developer's preferences.
3. Reuse the templates across multiple projects, but keep this project for GitOps / SecOps of a single deployment using one or more concrete stacks.
