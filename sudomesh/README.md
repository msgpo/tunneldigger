
Example startup scripts for broker and client are included in this dir.

One very important thing missing from the documentation is how to actually start the broker. After activating the virtualenv do:

```
cd tunneldigger/
python -m broker.main broker/l2tp_broker.cfg
```