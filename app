from game import City

MENU = "\n*** Choose ***\n[A]dd Worker\n[C]alculate Production\n[S]how Capital\nE[x]it\n"
cites = [("istanbul", (8, 40)), ("adana", (6, 45))]


def main(city: City):
    print("{} Information Uploaded".format(city.name.upper()))

    while True:
        cmd = input(MENU)

        if cmd == "x":
            print("Game Over!")
            break

        if cmd == "a":
            city.economy.add_worker_fn()

        elif cmd == "c":
            urt = city.economy.calculate_prodct_fn()

        elif cmd == "s":
            capital = city.economy.get_capital_fn()
            worker_num = city.economy.get_worker_nums_fn()
            print("*** STATUS ***")
            print("Total Capital: {}\nWorkers Num: {}".format(capital, worker_num))


city_current = cites[0]
istanbul = City(*city_current)
main(istanbul)
