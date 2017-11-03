#!/bin/bash

DOCFILE="script_listing"

echo "#!/bin/more" > "$DOCFILE"

ls *.yml > tmplisting.txt

while IFS= read -r FILENAME
do
  if [ -f "$FILENAME" ]; then
    echo "==================================" >> "$DOCFILE"
    echo "SCRIPT NAME: $FILENAME  " >> "$DOCFILE"
    echo "==================================" >> "$DOCFILE"
    echo ""
    echo "`cat $FILENAME`" >> "$DOCFILE"
  fi
done < tmplisting.txt

chmod 755 "$DOCFILE"
