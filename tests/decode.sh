#!/bin/bash -eu

hsTmpDir=$1

stack ghc --                          \
    --make                            \
    -odir $hsTmpDir                   \
    -hidir $hsTmpDir                  \
    -o $hsTmpDir/simpleDecodeDotProto \
    $hsTmpDir/Test.hs                 \
    $hsTmpDir/TestImport.hs           \
    tests/SimpleDecodeDotProto.hs     \
    >/dev/null
