from cyshop import demo_messages


if __name__ == "__main__":
    result = demo_messages("   ivan petrenko  ")
    print("Base:", result["base"])
    print("Fancy:", result["fancy"])
