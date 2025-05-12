#!/usr/bin/env sh
##############################################################################
## Gradle startup script for UN*X
##############################################################################

# Determine the location of this script
PRG="$0"
while [ -h "$PRG" ]; do
  ls=`ls -ld "$PRG"`
  link=`expr "$ls" : '.*-> \(.*\)$'`
  if expr "$link" : '/.*' > /dev/null; then
    PRG="$link"
  else
    PRG=`dirname "$PRG"`/"$link"
  fi
done

PRGDIR=`dirname "$PRG"`
EXECUTABLE=gradle

if [ -n "$GRADLE_HOME" ] ; then
  EXECUTABLE="$GRADLE_HOME/bin/gradle"
fi

exec "$EXECUTABLE" "$@"