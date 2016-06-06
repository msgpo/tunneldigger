Tunneldigger
============

Tunneldigger is one of the projects of `wlan slovenija`_ open wireless network.
It is a simple VPN tunneling solution based on L2TPv3 tunnels supported in
recent Linux kernels. This is the `sudomesh`_ repo, where we occasionally make
development changes appropriate to our project. For the most part, we are
making sure this repo stays up to date with upstream changes. 

.. _wlan slovenija: https://wlan-si.net
.. _sudomesh: https://sudomesh.org/

Documentation is found at:

http://tunneldigger.readthedocs.org/

One very important thing missing from the documentation is how to actually start the broker. After activating the virtualenv do:

```
cd tunneldigger/
python -m broker.main broker/l2tp_broker.cfg
```

For development *wlan slovenija* open wireless network `development Trac`_ is
used, so you can see `existing open tickets`_ or `open a new one`_ there. Source
code is available on GitHub_. If you have any questions or if you want to
discuss the project, use `development mailing list`_.

.. _development Trac: https://dev.wlan-si.net/wiki/Tunneldigger
.. _existing open tickets: https://dev.wlan-si.net/report
.. _open a new one: https://dev.wlan-si.net/newticket
.. _GitHub: https://github.com/wlanslovenija/tunneldigger
.. _development mailing list: https://wlan-si.net/lists/info/development

or sudo mesh wiki and development list:

.. _sudo mesh wiki: https://sudoroom.org/wiki/Mesh
.. _sudo mesh mailing list: http://lists.sudoroom.org/listinfo/mesh


Branching Info (for sudomesh fork):
~~~~~~~~~~~~~~~~~~~~~~
- upstream is for tracking wlanslovenija/tunneldigger. The only necessary work to be 
  done on this branch is to rebase from wlanslovenija/tunneldigger/master

- pull_request is for work that we'd like wlanslovenija/tunneldigger to incorporate into
  their repo. It's important to make sure that this branch mirrors wlanslovenija/tunneldigger/master
  except for the specific commits we'd like to be pulled in.
  If we have multiple pull requests, we can use something like pull_requests/feature_name, etc.

- master is for our code. Generally to keep this up to date we'll occasionally need to merge upstream into it.
  Remember that we want to avoid diverging from wlanslovenija/tunneldigger/master as much as possible,
  so for any code that isn't specific to sudomesh (and there shouldn't be much aside from perhaps this README),
  create a pull request with the specific commits.



*We've had to re-write history in this repo on a couple of occasions recently. 
PLEASE MAKE SURE YOU ARE WORKING WITH A FRESH CLONE*
Contributors
------------

* `@kostko`_
* `@lynxis`_
* `@mitar`_
* `@max-b`_
* `@mehlix`_
* `@valentt`_
* `@papazoga`_

.. _@kostko: https://github.com/kostko
.. _@lynxis: https://github.com/lynxis
.. _@mitar: https://github.com/mitar
.. _@max-b: https://github.com/max-b
.. _@mehlix: https://github.com/mehlis
.. _@valentt: https://github.com/valentt
.. _@papazoga: https://github.com/papazoga
