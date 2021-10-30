#!/usr/bin/env bash

Help() {
    # Display Help
    echo "Loads environment variables into your environment"
    echo
    echo "envcli [-h] [-v] [-f filename]"
    echo "options:"
    echo "h     Print this help"
    echo "v     Enable verbose mode"
    echo "f     Path of an env file to load"
}

Verbose() {
    echo "verbose mode enabled"
}

file='.env'
verbose='false'

while getopts 'f:vh' flag; do
    case "${flag}" in
    f) file="${OPTARG}" ;;
    v) Verbose && verbose='true' ;;
    h) Help && exit 0 ;;
    *)
        Help
        exit 1
        ;;
    esac
done

if [ -f "$file" ]; then
    echo "Using $file to load variables from"
else
    echo "$file not found"
    exit 1
fi

output=""

while IFS= read -r line; do
    tokens=(${line//=/ })
    $verbose && echo "Read line: ${line}"
    [ -z "$line" ] && continue
    output+="export ${tokens[0]}=${tokens[1]}\n"
    $verbose && echo "${tokens[0]} set"
done <$file

$verbose && echo -e "\nGenerated Result:"
$verbose && echo -e ${output}

echo -e ${output} | pbcopy

echo "Contents copied to clipboard"
