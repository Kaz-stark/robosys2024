#!/usr/bin/bash
# SPDX-FileCopyrightText: 2024 Kazuya Ochiai
# SPDX-License-Identifier

# ユーザーへのメッセージを表示
echo -n "反転させたい文字を入力してください: "

# 入力を読み込む
read input_text

#入力文字列を反転
reversed_line=$(echo "$input_text" | rev)

#反転結果を出力
echo "$reversed_line"


