#!/bin/sh

setValues()
{
  kdb set /sw/wc/show/no_default_args $1
  kdb set /sw/wc/show/lines $2
  kdb set /sw/wc/show/words $3
} &> /dev/null

test()
{
  setValues $1 $2 $3
  OUTPUT=`cmake-build-debug/wc README`
  if [ "$OUTPUT" = "$REFERENCE" ]
  then
    echo "OK"
  else
    echo "FAILED"
    echo " TEST: no_default_args = $1, lines = $2, words = $3"
    echo " REFERENCE: $REFERENCE"
    echo " OUTPUT: $OUTPUT"
  fi
}

REFERENCE=" 8 35 README"
test 1 1 1
test 0 0 0
test 0 0 1
test 0 1 0
test 0 1 1

REFERENCE=" README"
test 1 0 0

REFERENCE=" 35 README"
test 1 0 1

REFERENCE=" 8 README"
test 1 1 0

# Reset kdb
setValues 0 0 0
