#!/bin/bash


cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "utils.sh"


create_bash_local() {
    declare -r FILE_PATH="$HOME/.bash.local"


    if [ ! -e "$FILE_PATH" ] || [ -z "$FILE_PATH" ]; then
        printf "%s\n\n" "#!/bin/bash" >> "$FILE_PATH"
    fi

    print_result $? "$FILE_PATH"
}


main() {
    print_in_purple "\n • Create local config files\n\n"
    create_bash_local
}


main
