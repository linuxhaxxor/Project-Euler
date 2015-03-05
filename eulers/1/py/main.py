#!/usr/bin/env python3

def divisBy3or5(x):
    return x % 3 == 0 or x % 5 == 0

print(sum([x for x in range(1000) if divisBy3or5(x)]))

