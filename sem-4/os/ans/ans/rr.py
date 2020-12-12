# def priority_sch(processes, burst_time, number, priority, arrival_time):
#     a = {}
#     for i in range(len(processes)):
#         a[priority[i]] = [burst_time[i], arrival_time[i]]
#     b = list(a.keys()).sort()
#     sch(a, b)


# a is the dictionary
# # b is list of keys sorted
# def sch(a: dict, b: list):
#     n = len(b)
#     waiting = [0] * n
#     TAT = [0] * n
#     done = False
#     time = 0
#     while not done:
#         c = []  # a array for having only those elements that have arrived before a specified arrival time
#         for i in range(1, len(a)):
#             if a[i][1] <= time:
#                 c.append(a.get(a[i][1]))
#         # has only processes that have come before 'time'
#         c.sort()
#         m = []
#         for j in range(len(c)):
#             if a[j][1] == c[j] :
#                 #for finding out the priority of the process
#                 k = a.keys()
#                 m.append(k[j])
#     # minimum priority is maximum valued number
#         max_pri = min(m)
#         time += a[max_pri][0]
#         a.pop(max_pri)
#         b.remove(max_pri)
#
# if __name__ == "__main__":
#     n = int(input("Enter the number of processes"))
#     processes = []
#     burst_time = []
#     priority = []
#     arrival_tme = []
#     for item in range(n):
#         burst_time.append(int(input("Enter the burst time of process")))
#         processes.append(item)
#         priority.append(int(input("enter the priority of process")))
#         arrival_tme.append(int(input("enter the arrival time of the process")))
#
#     priority_sch(processes, burst_time, n, priority, arrival_tme)


def findWaitingTime(processes, n, wt):
    wt[0] = 0

    # calculating waiting time
    for i in range(1, n):
        wt[i] = processes[i - 1][1] + wt[i - 1]

    # Function to calculate turn around time


def findTurnAroundTime(processes, n, wt, tat):
    # Calculating turnaround time by
    # adding bt[i] + wt[i]
    for i in range(n):
        tat[i] = processes[i][1] + wt[i]

    # Function to calculate average waiting


# and turn-around times.
def findavgTime(processes, n):
    wt = [0] * n
    tat = [0] * n

    # Function to find waiting time
    # of all processes
    findWaitingTime(processes, n, wt)

    # Function to find turn around time
    # for all processes
    findTurnAroundTime(processes, n, wt, tat)

    # Display processes along with all details
    print("\nProcesses    Burst Time    Waiting",
          "Time    Turn-Around Time")
    total_wt = 0
    total_tat = 0
    for i in range(n):
        total_wt = total_wt + wt[i]
        total_tat = total_tat + tat[i]
        print(" ", processes[i][0], "\t\t",
              processes[i][1], "\t\t",
              wt[i], "\t\t", tat[i])

    print("\nAverage waiting time = %.5f " % (total_wt / n))
    print("Average turn around time = ", total_tat / n)


def priorityScheduling(proc, n):
    # Sort processes by priority
    proc = sorted(proc, key=lambda proc: proc[2],
                  reverse=True);

    print("Order in which processes gets executed")
    for i in proc:
        print(i[0], end=" ")
    findavgTime(proc, n)


# Driver code
if __name__ == "__main__":
    # Process id's
    proc = [[1, 10, 1],
            [2, 5, 0],
            [3, 8, 1]]
    n = 3
    priorityScheduling(proc, n)