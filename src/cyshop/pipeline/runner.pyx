from cyshop.core.base import BaseGreeter
from cyshop.features.fancy import FancyGreeter


def demo_messages(str raw_name):
    cdef BaseGreeter base = BaseGreeter("Hello")
    cdef FancyGreeter fancy = FancyGreeter("Welcome", "🚀")

    return {
        "base": base.greet(raw_name),
        "fancy": fancy.greet(raw_name),
    }
