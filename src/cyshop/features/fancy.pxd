from cyshop.core.base cimport BaseGreeter

cdef class FancyGreeter(BaseGreeter):
    cdef public str suffix
    cpdef str greet(self, str name)
