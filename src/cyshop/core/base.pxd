from cyshop.core.interfaces cimport IGreeter

cdef class BaseGreeter(IGreeter):
    cdef public str prefix
    cpdef str greet(self, str name)
