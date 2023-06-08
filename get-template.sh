#!/bin/bash

echo "Downloading template..."

git clone git@github.com:zjutjh/zjut-report-typst.git
cd zjut-report-typst
mv template ../
rm -rf zjut-report-typst

echo "Done!"
