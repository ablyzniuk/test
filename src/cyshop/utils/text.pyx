cpdef str normalize_name(str name):
    cdef list raw_parts = name.strip().split()
    cdef list normalized = []
    cdef str part

    for part in raw_parts:
        normalized.append(part.capitalize())

    return " ".join(normalized)
