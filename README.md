The Learning Bees Algorithm (BAl) is a reinforcement-learning-based enhancement of the Bees Algorithm (BA), developed to improve the search process of the conventional Bees Algorithm by allowing the algorithm to learn from its previous search experience.

The Learning Bees Algorithm uses Q-learning to adaptively select important search decisions during the optimisation process. In the continuous optimisation domain, the algorithm learns three key search components: the dimension to be modified, the search direction, and the neighbourhood size. Instead of selecting these components solely through predefined or random mechanisms, BAl updates its probability distributions based on the quality of previously generated solutions. This enables the algorithm to progressively favour search actions that have demonstrated better performance during the optimisation process.

This repository contains the continuous optimisation version of the Learning Bees Algorithm and provides the implementation used to evaluate the proposed approach on continuous benchmark functions. The repository is intended to support the reproducibility of the experiments and the further development and application of the Learning Bees Algorithm to other optimisation problems.

The Learning Bees Algorithm was developed as part of the doctoral research of Fatih Mehmet Eker under the supervision of Professor Duc Truong Pham at the University of Birmingham.

The methodology is described in:

F. M. Eker and D. T. Pham, "Disassembly Sequence Planning by Hybrid Bees Algorithm with Reinforcement Learning," in Advances in Remanufacturing 2024, Lecture Notes in Mechanical Engineering, Springer, 2025.

DOI: 10.1007/978-3-031-92425-5_4

The referenced publication presents the application of a reinforcement-learning-enhanced Bees Algorithm to disassembly sequence planning in the combinatorial optimisation domain. The algorithmic framework presented in that work provides the basis for the Learning Bees Algorithm; however, the code provided in this repository implements the continuous optimisation version of the method rather than the combinatorial version used for disassembly sequence planning.

The repository can therefore be used to reproduce the continuous optimisation experiments and to investigate the application of reinforcement-learning-guided Bees Algorithm to other continuous optimisation problems.

To cite this repository, please use the "Cite this repository" option in the upper-right-hand section of the GitHub repository.
