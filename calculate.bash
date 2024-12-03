#!/usr/bin/bash
# SPXD-FileCopyrightText: 2024 Kazuya Ochiai
# SPDX-License-Identifier: BSD-3-Clause

# 標準入力から数値を受け取り、配列に格納
numbers=($(cat))

# 数値の個数を求める
n=${#numbers[@]}

# 平均を計算
sum=0
for num in "${numbers[@]}"; do
    sum=$((sum + num))
done
mean=$((sum / n))

# 分散を計算
sum_of_squares=0
for num in "${numbers[@]}"; do
    diff=$((num - mean))
    sum_of_squares=$((sum_of_squares + diff * diff))
done

# 分散
variance=$((sum_of_squares / n))

# 標準偏差（分散の平方根）を計算
# `bc` を使って平方根を計算
stddev=$(echo "scale=2; sqrt($variance)" | bc)

# 結果を表示
echo "分散: $variance"
echo "標準偏差: $stddev"

