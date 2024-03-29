# AsynchronousProgramming
![maxresdefault](https://user-images.githubusercontent.com/51203539/134365560-547f4377-fa74-4afe-8bc4-a9ff46da1418.jpg)

## [AsyncEngine](https://github.com/heartsker/AsynchronousProgramming/blob/master/AsynchronousProgramming/AsyncEngine.swift)
The class provides an opportunity to run tasks in the background.
- You can add some [Executable](https://github.com/heartsker/AsynchronousProgramming/blob/master/AsynchronousProgramming/Executable.swift) tasks to __queue__. They will be executed in a __background__ quality of service.
- If some task is running at the moment, the next tasks are added to the queue and they will be executed in the order they were added right after the current task's process finished.
- Logs some debug information. E.g. execution time for each task.

## [Executable](https://github.com/heartsker/AsynchronousProgramming/blob/master/AsynchronousProgramming/Executable.swift)
Protocol for all tasks which can be run by [AsyncEngine](https://github.com/heartsker/AsynchronousProgramming/blob/master/AsynchronousProgramming/AsyncEngine.swift)

## Sample tasks
- [PerfectNumbersFinder](https://github.com/heartsker/AsynchronousProgramming/blob/master/AsynchronousProgramming/PerfectNumbersFinder.swift) - find [perfect numbers](https://en.wikipedia.org/wiki/Perfect_number) in given range.
- [PrimeNumbersFinder](https://github.com/heartsker/AsynchronousProgramming/blob/master/AsynchronousProgramming/PrimeNumbersFinder.swift) - find all the [primes](https://en.wikipedia.org/wiki/Prime_number) in given range.
- This tasks' ```execute()``` function is not written using the most optimal algorithms. That is done to demonstrate long run-time _(more than 3 sec)_ processes.
  
## [UI](https://github.com/heartsker/AsynchronousProgramming/blob/master/AsynchronousProgramming/ContentView.swift)
UI implemented with SwiftUI.
- Home screen (```ContentView.swift```) have buttons to add sample tasks to the ```AsyncEngine``` queue.
- Buttons change their color every time the corresponding task finishes execution.
- At the top of the screen, there is a label. It refreshes every __0.1__ sec and contains a string of 10 random characters.
  <img src="https://user-images.githubusercontent.com/51203539/134362410-a71bebc1-f471-4572-aa9f-5e16abd49366.gif" height="400">
- Log screen in console looks like the following:
  <img src="https://user-images.githubusercontent.com/51203539/134364085-e98bf584-c0f2-4d53-bc99-4be1bef59d13.gif" height="400">
