#!/bin/sh
# This will be the run directory
RUN_DIR=`pwd`
# Move up to the parent directory
cd ..
# This will the base directory
BASE_DIR=`pwd`


stop_osiris3_server() {
  echo "Stopping apps/server please wait..."
  touch /apps/server/bin/.shutdown_pid
}

trap "stop_osiris3_server" SIGINT SIGTERM SIGHUP



# set the java home if neccessary
# JAVA_HOME=

# set java options
if [ "x$JAVA_MEM" = "x" ]; then
   JAVA_OPTS_MEM="-Xmx2048m"
else
   JAVA_OPTS_MEM="$JAVA_MEM"
fi

JAVA_OPTS="$JAVA_OPTS_MEM -Dosiris.run.dir=$RUN_DIR -Dosiris.base.dir=$BASE_DIR -Dosiris.repo.dir=$BASE_DIR -Duser.language=en"

# run java
if [ "x$JAVA_HOME" = "x" ]; then
   JAVA="java"
else
   JAVA="$JAVA_HOME/bin/java"
fi

rm -f $RUN_DIR/bin/.osiris_pid

$JAVA $JAVA_OPTS -cp lib/*:lib/ext/s3/*:. com.rameses.main.bootloader.MainBootLoader
