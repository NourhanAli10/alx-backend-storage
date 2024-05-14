#!/usr/bin/env python3
"""8-all.py"""


def list_all(mongo_collection):
    """
    Lists all documents in a MongoDB collection.
    """
    documents = mongo_collection.count()
    if documents == 0:
        return []
    else:
        return mongo_collection.find()
