#!/usr/bin/env bash
# generate a UUID through uuidtools.com
# it is returned in the form ["<UUID>"], so we strip it out with sed
curl -sS "https://www.uuidtools.com/api/generate/v4" | sed 's/\[\"\(.*\)\"\]/\1/'
