#!/usr/bin/env bash
#
#

dir=`dirname $0`

javac -cp "$dir/lib/*:" Parser.java
java -mx600m -cp "$dir/lib/*:" Parser
