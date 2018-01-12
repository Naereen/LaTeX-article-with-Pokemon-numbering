#!/usr/bin/env bash

for i in {1..151}; do
    # get the long number
    longi=$(printf "%.3d" $i)
    outhtml="$i.html"
    outmd="$i.md"
    # get the basic data
    wget --quiet "https://www.math.miami.edu/~jam/azure/pokedex/species/${longi}.htm" -O "$outhtml"
    # convert to utf8
    iconv -f iso-8859-1 -t utf-8 "$outhtml" > "${outhtml}~"
    mv "${outhtml}~" "$outhtml"
    [ -f "$outmd" ] && rm -vf "$outmd"
    # convert to markdown
    html2text --ignore-links -b 0 --ignore-tables "$outhtml" > "$outmd"
    # remove trailing spaces
    perl -pi -e 's/[ \t]+$//' "$outmd"
    # get the name
    name=$(grep -o '\*\*.* #'${longi}'\*\*' "$outmd" | tr -d '*' | awk '{print $1}')
    # get the long description
    description=$(grep -A 1 'lbs.' "$outmd" | tail -n1)
    # get the keyword description
    keyword=$(grep 'lbs.' "$outmd" | grep -o "^.* [[:digit:]]\+'" | grep -o "^[[:alpha:]]*")
    # get the weight
    weight=$(grep -o '[[:digit:]]\+ lbs.' "$outmd")
    # get the height
    height=$(grep 'lbs.' "$outmd" | grep -o "[[:digit:]]\+. [[:digit:]]\+\"")
    # Use jo for formating
    # https://github.com/jpmens/jo
    jo -p i=$i longi=$longi name=$name description="$description" keyword="$keyword" weight="$weight" height="$height" | tee $i.json
    echo
    rm -vf "$outhtml" "$outmd"
done
