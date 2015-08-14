Tunneldigger
============

Tunneldigger is one of the projects of `wlan slovenija`_ open wireless network.
It is a simple VPN tunneling solution based on L2TPv3 tunnels supported in
recent Linux kernels.

.. _wlan slovenija: https://wlan-si.net

This is the sudo mesh fork. It has only the following changes:

- Added init.d file for broker
- Fixed requirements.txt file
- Added link to improved documentation in this readme file
- Changed broker/l2tp_broker.py slightly altering netfilter (iptables) rules

wlan slovenija documentation is found at:

http://tunneldigger.readthedocs.org/

<<<<<<< HEAD
and sudo mesh documentation is found at:

https://sudoroom.org/wiki/Mesh/Relay_setup#Tunneldigger_broker

More info on `wlan slovenija wiki`_. Use `development mailing list`_ for
questions and development discussions.
=======
For development *wlan slovenija* open wireless network `development Trac`_ is
used, so you can see `existing open tickets`_ or `open a new one`_ there. Source
code is available on GitHub_. If you have any questions or if you want to
discuss the project, use `development mailing list`_.
>>>>>>> 72c6e4c6f0d8c8d05b0f1d074d6cd237201f28b9

.. _development Trac: https://dev.wlan-si.net/wiki/Tunneldigger
.. _existing open tickets: https://dev.wlan-si.net/report
.. _open a new one: https://dev.wlan-si.net/newticket
.. _GitHub: https://github.com/wlanslovenija/tunneldigger
.. _development mailing list: https://wlan-si.net/lists/info/development

or sudo mesh wiki and development list:

.. _sudo mesh wiki: https://sudoroom.org/wiki/Mesh
.. _sudo mesh mailing list: http://lists.sudoroom.org/listinfo/mesh

<<<<<<< HEAD
=======
*If you're confused about why you can't pull a fresh version of the sudomesh fork, it's because I (maxb) 
re-wrote a bunch of history on the master branch. I apologize and it's pretty much entirely my fault, but 
it was inevitable. Go ahead and pull a clean version of this repo and it let's all cross our fingers it works!*
>>>>>>> 72c6e4c6f0d8c8d05b0f1d074d6cd237201f28b9
