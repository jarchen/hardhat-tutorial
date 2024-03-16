# Sample Hardhat Project
> Tutorial site: https://hardhat.org/tutorial

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, and a Hardhat Ignition module that deploys that contract.

Try running some of the following tasks:

### harhdat help information
```shell
npx hardhat help
```

### hardhat testing
```shell
# test all testcase
npx hardhat test
# test specific testcase
npx hardhat test test/Token.ts

# show gasReport for testing, need to set `gasReporter.enabled=true`
REPORT_GAS=true npx hardhat test
```

### start hardhat dev network
```shell
npx hardhat node
npx hardhat ignition deploy ./ignition/modules/Lock.ts
```

# Plugins
- [Gas Reporter](https://www.npmjs.com/package/hardhat-gas-reporter)

# Reference
- [完整的Hardhat實踐教程](https://medium.com/my-blockchain-development-daily-journey/%E5%AE%8C%E6%95%B4%E7%9A%84hardhat%E5%AF%A6%E8%B8%90%E6%95%99%E7%A8%8B-a9b005aa4c12)
