# AsynchronousProgramming

## [AsyncEngine](https://github.com/heartsker/AsynchronousProgramming/blob/master/AsynchronousProgramming/AsyncEngine.swift)
Class which provides opportunity to run tasks in background.
- You can add some [Executable](https://github.com/heartsker/AsynchronousProgramming/blob/master/AsynchronousProgramming/Executable.swift) tasks to __queue__. They will be exequted in a __background__ quality of service.
- If some task is running at the moment, next tasks are added to the queue and they will be executed in order they were added right after current task's process finished.
- Logs some debug information. E.g. execution time for each task.

## [Executable](https://github.com/heartsker/AsynchronousProgramming/blob/master/AsynchronousProgramming/Executable.swift)
Protocol for all tasks which can be run by [AsyncEngine](https://github.com/heartsker/AsynchronousProgramming/blob/master/AsynchronousProgramming/AsyncEngine.swift)

## Sample tasks
- [PerfectNumbersFinder](https://github.com/heartsker/AsynchronousProgramming/blob/master/AsynchronousProgramming/PerfectNumbersFinder.swift) - find [perfect numbers](https://en.wikipedia.org/wiki/Perfect_number) in given range.
- [PrimeNumbersFinder](https://github.com/heartsker/AsynchronousProgramming/blob/master/AsynchronousProgramming/PrimeNumbersFinder.swift) - find all the [primes](https://en.wikipedia.org/wiki/Prime_number) in given range.
- This tasks' ```execute()``` function is not written using the most optimal algorithms. That is done to demonstrate long run-time _(more than 3 sec)_ processes.

## [UI](https://github.com/heartsker/AsynchronousProgramming/blob/master/AsynchronousProgramming/ContentView.swift)
UI impmlemented with SwiftUI.
- Home screen (```ContentView.swift```) have buttons run add sample tasks to the ```AsyncEngine```.
- At the top of the screen there is a label. It refreshes every __0.1__ sec and contains string of 10 random characters.
