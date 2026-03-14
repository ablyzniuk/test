from setuptools import Extension, find_packages, setup
from Cython.Build import cythonize

extensions = [
    Extension("cyshop.core.interfaces", ["src/cyshop/core/interfaces.pyx"]),
    Extension("cyshop.core.base", ["src/cyshop/core/base.pyx"]),
    Extension("cyshop.utils.text", ["src/cyshop/utils/text.pyx"]),
    Extension("cyshop.features.fancy", ["src/cyshop/features/fancy.pyx"]),
    Extension("cyshop.pipeline.runner", ["src/cyshop/pipeline/runner.pyx"]),
]

setup(
    name="cyshop",
    version="0.1.0",
    description="Навчальний приклад структури Cython-модулів",
    package_dir={"": "src"},
    packages=find_packages(where="src"),
    ext_modules=cythonize(extensions, language_level=3),
    zip_safe=False,
)
