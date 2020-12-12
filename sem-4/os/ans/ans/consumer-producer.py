import math, random
from threading import Thread


def consumer(product):
    while (True):
        while product == 0:
            pass
        next_consumed = random.choice(available)
        available.remove(next_consumed)
        product -= 1
        print(available)


def producer(product):
    while True:
        while product == 100:
            pass
        nextProduced = random.choice([x for x in range(150)])
        available.append = nextProduced
        product += 1
        print(available)


if __name__ == "__main__":
    product = 100
    available = [].extend([x for x in range(100)])
    t1 = Thread(target=producer, args=[product])
    t2 = Thread(target=consumer, args=[product])

    t1.start()
    t2.start()

    t1.run()
    t2.run()
