from cyshop.core.base cimport BaseGreeter
from cyshop.utils.text cimport normalize_name

cdef class FancyGreeter(BaseGreeter):
    def __cinit__(self, str prefix="Hi", str suffix="✨"):
        self.prefix = prefix
        self.suffix = suffix

    cpdef str greet(self, str name):
        cdef str clean_name = normalize_name(name)
        return f"{self.prefix}, {clean_name}! {self.suffix}"
