# envcli

Loads env files into shell environment variables quick

## Quickstart

Go into a directory that you want to load env files from

```
npx envcli
```

This will load `.env` by default.

To load another file put a path to that file as an argument

```
npx envcli .env.local
```

This will load the `.env.local` configuration into your shell

## Usage

```
envcli [-h] <env file>
options:
h           Print this Help.
env file    Path of an env file to load
```
