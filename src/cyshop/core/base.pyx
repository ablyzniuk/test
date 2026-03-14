from cyshop.core.interfaces cimport IGreeter

cdef class BaseGreeter(IGreeter):
    def __cinit__(self, str prefix="Hello"):
        self.prefix = prefix

    cpdef str greet(self, str name):
        return f"{self.prefix}, {name}!"
