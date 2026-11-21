#!/bin/bash

# Demo script for CDL MVP

echo "CDL Demo - v0.7.0 Semantic-First Foundation"
echo "==================="

# Build
echo "Building..."
./gradlew jar -q

# Demo commands
echo ""
echo "1. Compile sample.cdl"
java -jar build/libs/cdl-0.7.0.jar build sample.cdl
echo "Compilation facade completed; v0.7.0 does not write an IR artifact"

echo ""
echo "2. Generate OpenAPI from sample.cdl"
java -jar build/libs/cdl-0.7.0.jar gen openapi -i sample.cdl -o demo.openapi.yaml
echo "OpenAPI generated: demo.openapi.yaml"

echo ""
echo "3. Lint sample.cdl"
java -jar build/libs/cdl-0.7.0.jar lint sample.cdl

echo ""
echo "4. Format sample.cdl"
java -jar build/libs/cdl-0.7.0.jar fmt sample.cdl

echo ""
echo "Demo complete. Check demo.openapi.yaml"
