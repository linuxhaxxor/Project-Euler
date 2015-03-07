#!/usr/bin/env python3

def is_divis_by_3_or_5(x):
    return x % 3 == 0 or x % 5 == 0

print(sum([x for x in range(1000) if is_divis_by_3_or_5(x)]))

