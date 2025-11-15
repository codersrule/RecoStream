#!/bin/zsh

echo "Downloading Movielens 100k datasets"

wget -q https://files.grouplens.org/datasets/movielens/ml-100k.zip

echo "Extracting ..."

unzip -q ml-100k.zip

echo "Converting to csv format"

python3 << PYTHON

import pandas as pd

#Load ratings
ratings = pd.read_csv('ml-100k/u.data', sep='\t',
                      names=['user_id', 'item_id', 'rating', 'timestamp',])

ratings.to_csv('ratings.csv', index=False)

print(f"Loaded {len(ratings)} ratings")
print(f"Users: {ratings['user_id'].nunique()}")
print(f"Items: {ratings['item_id'].nunique()}")
PYTHON

echo "Cleaning up...."
rm ml-100k.zip
rm -rf ml-100k

echo "Dataset ready : ratings.csv"