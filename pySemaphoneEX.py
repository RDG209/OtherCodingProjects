import threading
import time
import random

total_tickets = 5

semaphore = threading.Semaphore(total_tickets)

tickets_left = total_tickets

lock = threading.Lock()

def book_ticket(thread_name):
    global tickets_left

    if semaphore.acquire(timeout = 1):
        with lock:
            if tickets_left > 0:
                tickets_left -= 1
                print(f"{thread_name} successfully booked a ticket! Tickets left: {tickets_left}")
            else:
                print(f"{thread_name} could not book a ticket. Tickets are sold out.")

        semaphore.release()
    else:
        print(f"{thread_name} could not acquire the semaphore and left.")

threads = []
for i in range(10):
    thread = threading.Thread(target=book_ticket, args=(f"User-{i+1}",))
    threads.append(thread)
    thread.start()

for thread in threads:
    thread.join()
