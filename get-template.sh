#!/bin/bash

echo "Downloading template..."

git clone git@github.com:zjutjh/zjut-report-typst.git
mv zjut-report-typst/template ./
mv zjut-report-typst/example.typ ./
rm zjut-report-typst -rf

echo "Done!"
