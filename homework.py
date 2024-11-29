#!/usr/bin/python3
# SPDX-FileCopyrightText: 2024 KAzuya Ochiai

# 入力された数字をすべて掛け合わせるコード
def multiply_numbers():
    try:
        # 入力を受け取る（スペース区切りの数字）
        numbers = input("数字をスペースで区切って入力してください: ").split()

        # 数字のリストを整数型に変換
        numbers = [int(num) for num in numbers]

        # 初期値を1にして掛け算を実行
        result = 1
        for num in numbers:
            result *= num

        print(f"掛け合わせた結果: {result}")

    except ValueError:
        print("無効な入力です。すべての値を数字として入力してください。")

# 関数を実行
multiply_numbers()

