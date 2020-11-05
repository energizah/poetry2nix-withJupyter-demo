Test it with



```
nix-shell --command 'jupyter run --kernel ipython_poetry  <<<"import requests; print(requests)"' --show-trace
/nix/store/p1j3cz54y4jz2s1ajwqpx6mq6kqn9igh-python3.7-traitlets-4.3.3/lib/python3.7/site-packages/traitlets/config/loader.py:795: SyntaxWarning: "is" with a literal. Did you mean "=="?
  if len(key) is 1:
/nix/store/p1j3cz54y4jz2s1ajwqpx6mq6kqn9igh-python3.7-traitlets-4.3.3/lib/python3.7/site-packages/traitlets/config/loader.py:804: SyntaxWarning: "is" with a literal. Did you mean "=="?
  if len(key) is 1:
Traceback (most recent call last):
  File "/nix/store/346skv0d24rqnf4npknbp9h5bs14j8zy-python3-3.8.6/lib/python3.8/runpy.py", line 194, in _run_module_as_main
    return _run_code(code, main_globals, None,
  File "/nix/store/346skv0d24rqnf4npknbp9h5bs14j8zy-python3-3.8.6/lib/python3.8/runpy.py", line 87, in _run_code
    exec(code, run_globals)
  File "/nix/store/rgg707my9m2qicm2jxihrl21cmh50mx6-python3.7-ipykernel-5.1.2/lib/python3.7/site-packages/ipykernel_launcher.py", line 15, in <module>
    from ipykernel import kernelapp as app
  File "/nix/store/rgg707my9m2qicm2jxihrl21cmh50mx6-python3.7-ipykernel-5.1.2/lib/python3.7/site-packages/ipykernel/__init__.py", line 2, in <module>
    from .connect import *
  File "/nix/store/rgg707my9m2qicm2jxihrl21cmh50mx6-python3.7-ipykernel-5.1.2/lib/python3.7/site-packages/ipykernel/connect.py", line 18, in <module>
    import jupyter_client
  File "/nix/store/5m9yhim8n97iihy1dz2cx3dl3fvajx0n-python3.7-jupyter_client-5.3.4/lib/python3.7/site-packages/jupyter_client/__init__.py", line 4, in <module>
    from .connect import *
  File "/nix/store/5m9yhim8n97iihy1dz2cx3dl3fvajx0n-python3.7-jupyter_client-5.3.4/lib/python3.7/site-packages/jupyter_client/connect.py", line 24, in <module>
    import zmq
  File "/nix/store/rmds624lhg7drbkxys28q61szpxid68k-python3.7-pyzmq-18.1.0/lib/python3.7/site-packages/zmq/__init__.py", line 47, in <module>
    from zmq import backend
  File "/nix/store/rmds624lhg7drbkxys28q61szpxid68k-python3.7-pyzmq-18.1.0/lib/python3.7/site-packages/zmq/backend/__init__.py", line 40, in <module>
    reraise(*exc_info)
  File "/nix/store/rmds624lhg7drbkxys28q61szpxid68k-python3.7-pyzmq-18.1.0/lib/python3.7/site-packages/zmq/utils/sixcerpt.py", line 34, in reraise
    raise value
  File "/nix/store/rmds624lhg7drbkxys28q61szpxid68k-python3.7-pyzmq-18.1.0/lib/python3.7/site-packages/zmq/backend/__init__.py", line 27, in <module>
    _ns = select_backend(first)
  File "/nix/store/rmds624lhg7drbkxys28q61szpxid68k-python3.7-pyzmq-18.1.0/lib/python3.7/site-packages/zmq/backend/select.py", line 28, in select_backend
    mod = __import__(name, fromlist=public_api)
  File "/nix/store/rmds624lhg7drbkxys28q61szpxid68k-python3.7-pyzmq-18.1.0/lib/python3.7/site-packages/zmq/backend/cython/__init__.py", line 6, in <module>
    from . import (constants, error, message, context,
ImportError: cannot import name 'constants' from partially initialized module 'zmq.backend.cython' (most likely due to a circular import) (/nix/store/rmds624lhg7drbkxys28q61szpxid68k-python3.7-pyzmq-18.1.0/lib/python3.7/site-packages/zmq/backend/cython/__init__.py)
^\%
```
