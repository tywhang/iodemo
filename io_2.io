# A Fibonacci sequence starts with two 1s. Each subsequence number is the sum of the two numbers
# that came before: 1, 1, 2, 3, 5, 8, 13, 21, and so on. Write a program to find the nth Fibonacci
# number. fib(1) is 1, and fib(4) is 3. As a bonus, solve the problem with recursion and with loops.


# Recursion answer

fibRecursive := method(
  targetIndex := call sender doMessage(call message argAt(0))
  currentIndex := call sender doMessage(call message argAt(1))
  prev := call sender doMessage(call message argAt(2))
  current := call sender doMessage(call message argAt(3))
  next := call sender doMessage(call message argAt(4))

  if (currentIndex == targetIndex) then (
    current println
  ) else (
    fibRecursive(targetIndex, currentIndex + 1, current, next, current + next)
  )
)


# Loop answer

fibLoop := method(
  targetIndex := call sender doMessage(call message argAt(0))

  prev := 0
  current := 0
  next := 1

  for (i, 1, targetIndex,
    prev = current
    current = next
    next = prev + current
  )
  current println
)

fibRecursive(5, 0, 0, 0, 1)
