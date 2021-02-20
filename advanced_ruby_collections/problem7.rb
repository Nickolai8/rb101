# arr starts off [a,b], which is [2, [5,8]]. Then, arr[0], which is also
# 'a', is incremented by 2, but a itself it not changed, rather the arr
# array is reassigning its 0 index where a previously was to the value
# of a + 2. So at this point, so a = 2, and arr is [4, [5,8]]. Then,
# arr[1][0] which is 5, has the value of a(2) subtracted from it.
# so, in the end a = 2 and b = [3,8]