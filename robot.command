#!/bin/bash

# Use this only if Robot is installed and make sure log*, output* and report* is not present in root folder

cd "$(dirname "$0")"
robot --name Chrome --variable Browser:Chrome --timestampoutputs .
robot --name Safari --variable Browser:Safari --timestampoutputs .
rebot --name JupiterToys --output FinalReport.xml output*.xml

rm output-*.xml log-*.html report-*.html 
exit 0

