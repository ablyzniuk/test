cdef class IGreeter:
    cpdef str greet(self, str name):
        raise NotImplementedError("Subclasses must implement greet")
