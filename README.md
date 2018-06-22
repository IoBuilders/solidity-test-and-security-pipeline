# solidity-test-and-security-pipeline

This is our current gitlab pipeline based on docker + gitlab-ci. Our vision is to have full coverage and automatically audit code, to be 100% sure that our smart contracts are safe from well known bugs and follow good practices.

We use [Solium](https://github.com/duaraghav8/Solium) as code linter, [Solidity Coverage](https://github.com/sc-forks/solidity-coverage) as test coverage tool customized with our 100% threshold coverage checker, and Solium and [Myhtril](https://github.com/ConsenSys/mythril). Thanks community for this amazing tools!

### TODO

- Implement a custom gitlab runner to speed up the pipeline execution
