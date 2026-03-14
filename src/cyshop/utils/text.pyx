cpdef str normalize_name(str name):
    return " ".join(part.capitalize() for part in name.strip().split())
