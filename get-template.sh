#!/bin/bash

echo "Downloading template..."

git clone git@github.com:zjutjh/zjut-report-typst.git
mv zjut-report-typst/template ./
rm zjut-report-typst -rf

echo "Done!"

rm get-template.sh
