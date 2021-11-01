<p align="center">
  <img width="600" src="/resources/header.svg">
</p>

# pbenv

Loads env files into export statements and adds them to your clipboard

[NPM](https://www.npmjs.com/package/pbenv)

## Quickstart

Go into a directory that you want to load env files from

```sh
npx pbenv
```

This will load `.env` by default.

From there you can paste the contents and hit enter

### Load a different env file

To load another file put a path to that file as an argument

```sh
npx pbenv -f .env.local
```

This will load the `.env.local` configuration into your shell

## Usage

```
envcli -h
Loads env files into export statements and adds them to your clipboard

envcli [-h] [-v] [-f filename]
options:
h     Print this help
v     Enable verbose mode
f     Path of an env file to load
```
