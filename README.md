# Cython multi-module example

Це мінімальний навчальний приклад з:
- кількома пакетами Cython;
- `__init__` файлами в кожному пакеті;
- інтерфейсом (`IGreeter`), класами і наслідуванням;
- викликом одних Cython-модулів з інших.

## Структура

```text
src/cyshop/
  __init__.py
  __init__.pxd
  core/
    __init__.py
    __init__.pxd
    interfaces.pxd
    interfaces.pyx
    base.pxd
    base.pyx
  utils/
    __init__.py
    __init__.pxd
    text.pxd
    text.pyx
  features/
    __init__.py
    __init__.pxd
    fancy.pxd
    fancy.pyx
  pipeline/
    __init__.py
    runner.pyx
examples/
  run_demo.py
```

## Збірка

```bash
python -m pip install -e .
```

Альтернатива (локальна збірка in-place):

```bash
python setup.py build_ext --inplace
```

## Запуск прикладу

```bash
python examples/run_demo.py
```

Очікуваний результат:
- базове привітання від `BaseGreeter`;
- "покращене" привітання від `FancyGreeter`, який успадковується від `BaseGreeter`;
- виклик `utils.text.normalize_name` з `features.fancy`.

## Як модулі взаємодіють

- `core.base` **cimport**-ить `IGreeter` з `core.interfaces`.
- `features.fancy` **cimport**-ить `BaseGreeter` і **import/cimport**-ить `utils.text`.
- `pipeline.runner` використовує класи з `core.base` і `features.fancy`.

Це дає робочий шаблон для подальшого розширення проєкту.
