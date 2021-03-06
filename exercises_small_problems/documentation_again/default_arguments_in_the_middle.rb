# 'p' directly writes the object itself to the consol, and then follows that
# with a newline character. 
# However, because only 3 arguments are passed to the method, and there
# are 4 parameters with the middle two having defaults, the first and last
# parameters will take the first and last arguments respectively, with the
# middle argument going to the first default parameter.
# so p [a, b, c, d] would end up being
#    p [4, 5, 3, 6].
# the Kernel.p method would put the array object [4,5,3,6] to the
# programs standard output.