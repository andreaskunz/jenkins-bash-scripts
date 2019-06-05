# unitTestsWithSimulator

The **unitTestsWithSimulator** bash scripts support Jenkins Items to run all EEROS unit tests and
using the sim-eeros simulator therefor. To version control the scripts, they are hosted on GitHub instead of embedded in the Jenkins Item directly.

The following Item for example is using the scripts:
[unitTestsWithSimulator-masters (internal link)](http://inf009:8080/job/eeros-project/job/eeros-integrationTest/job/unitTestsWithSimulator-masters/).
It is running both master branches of [eeros-framework](https://github.com/eeros-project/eeros-framework) and
[sim-eeros](https://github.com/eeros-project/sim-eeros)
using the toolchain gcc-4.9.4.
