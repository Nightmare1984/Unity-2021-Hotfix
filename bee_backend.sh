#!/bin/bash

args=("$@")
new_args=()

for ((i=0; i<"${#args[@]}"; ++i))
do
    case ${args[i]} in
        --stdin-canary)
            continue;;
        *)
            new_args+=("${args[i]}")
            ;;
    esac
done

"${0}_real" "${new_args[@]}"