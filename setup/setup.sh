#!/bin/bash

pip install --user -r requirements.txt
python bulk_insert.py worldbuilding -s -q -n inputs/User.csv -n inputs/Question.csv -n inputs/Tag.csv -n inputs/Answer.csv -r inputs/ANSWER_TO.csv -r inputs/AUTHOR_OF.csv -r inputs/HAS_TAG.csv
redis-cli save