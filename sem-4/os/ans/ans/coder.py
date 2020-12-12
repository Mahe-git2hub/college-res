import queue


def FCFO(n):
    a = {}
    waiting,time = 0,0
    for i in range (n):
        a[i] = {}
        a[i]["time"] = int(input("enter the process time slice requirement"))
        a[i]["at"] = int(input("enter the arrival time of the process"))
        print(a)
    print("0",end=" ")
    # j: int
    for j in range (n):
        print("::p" + j + ":" + time + a[j][time] + ":",end=" ")
        waiting += (a[j][time] - a[j]["at"])
    return waiting/n

def Round_Robin(n):
    q = queue.Queue(n)
    q1 = queue.Queue(n)
    CPU_EXEC = int(input("enter the cpu execution time"))
    waiting,time = 0
    for i in range (n):
        q.put(int(input("enter the process time slice")))
        q1.put(int(input("enter the arrival time")))
    while q.qsize() != 0:
        a = q.get()
        for j in range (q._qsize()):
            print(q,end=" ")
            a -= CPU_EXEC

        if (a > CPU_EXEC):
            q.put(a)
            time += a
            q1.put(q1.get())
        else:
            _ = q1.get()
            

def SJF(n,choice = 1):
    time_slice = []
    arrival_tme = []
    time,waiting = 0,0
    for i in range (n):
        time_slice.append(int(input("enter the time slice your job requires")))
        arrival_tme.append(int(input("enter the arrival time of the job")))
    b = sorted(time_slice)
    c = sorted(arrival_tme)
    print("0:")
    if choice == 1:
        for i in range (n):
            index = time_slice.index(b[0])
            c.remove(b[0])
            time += b.pop(0)
            time_slice.pop(index)
            arrival_tme.pop(index)
            l = [time_slice[arrival_tme.index(x)] for x in c[0:time+1] ]
            b = sorted(l)
            print(time,":",end= " ")

    elif choice == 2:
        k = arrival_tme.index(c[0])
        while len(time_slice) != 0 and len(arrival_tme) != 0:

            b[b.index(time_slice[k])] -= 1
            time += 1
            if (b[b.index(time_slice[k])] > min(b[0:(c[0]+time)])):
                k = time_slice.index(min(b[0:(c[0]+time)]))
    else:
        print("Wrong input")


def priorityQueue(n):
    time = 0
    prioritt = queue.PriorityQueue()
    for i in range (n):
        prioritt.put(int(input("enter the number for the "+str(i)+"th process")))
    for j in range(n):
        time += prioritt.get()
        print(str(time)+":")



print("Welcome to scheduling algorithms")


n  = int(input("enter the number of entries required"))

print("Enter the number to correspond the required scheduled algorithm \n1)SJF\n2)FCFS\n3)ROUND ROBIN \n4)PRIORITY QUEUE")
choice = input()

if choice == 1:
    SJF(n,int(input("enter 1 FOR non preemptive manner and 2 for preemptive manner of solving")))
elif choice == 2:
    t = FCFO(n)
    print(t)
# elif choice == 3:
#     Round_Robin(n)
else:
    priorityQueue(n)

