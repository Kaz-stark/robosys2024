#!/usr/bin/python3
# SPDX-FileCopyrightText: 2024 Kazuya Ochiai
# SPDX-License-Identifier: BSD-3-Clause

nano reverse_text.py


import sys

#標準入力からデータを読み込む
for line in sys.stdin:
	reversed_line = line.strip()[::-1]
	print(reversed_line)

