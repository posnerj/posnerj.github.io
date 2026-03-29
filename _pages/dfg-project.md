---
layout: page
permalink: /dfg-project/
title: Transparent Resource Adaptivity for Dynamic and Irregular Task-Based Applications on HPC Clusters
nav: true
nav_title: DFG Project
nav_order: 5
---

## DFG Project

<div class="project-meta" style="margin-bottom: 1.5rem; padding: 1rem; background: var(--global-code-bg-color); border-radius: 8px;">
  <strong>Funding:</strong> Deutsche Forschungsgemeinschaft (DFG) - Project number <a href="https://gepris.dfg.de/gepris/projekt/558599020?language=en">558599020</a><br>
  <strong>Principal Investigator:</strong> Prof. Dr. Jonas Posner<br>
  <strong>Institution:</strong> <a href="https://www.hs-fulda.de/angewandte-informatik/forschung/forschungsprojekte/hpc">Fulda University of Applied Sciences, Germany</a><br>
  <strong>Duration:</strong> April 2026 - March 2029
</div>

### Summary

The static resource management of today's supercomputers, where jobs request a fixed number of nodes and keep them for the entire execution, has significant limitations.
Resource managers are inflexible in scheduling jobs, and programs cannot adjust their resources to meet changing needs at runtime.
This results in reduced performance for both the supercomputer and individual programs, especially for irregular and dynamic workloads that have unpredictable resource needs at runtime.

**Resource adaptivity** can overcome these limitations by allowing jobs to add or remove nodes at runtime, either initiated by the resource manager (_malleable_) or by the jobs themselves (_evolving_).
Jobs that can do both are called _adaptive_.
However, resource adaptivity is not widely adopted due to a significantly increased programming complexity required to enable it.
Additionally, widely used resource managers, such as Slurm, and programming models, such as MPI, offer limited support.

### Approach

**Asynchronous Many-Task (AMT)** programming is a promising alternative to MPI, enhancing programmer productivity and automatically balancing dynamic and irregular workloads.
AMT splits computations into many tasks that are dynamically assigned to computational resources by the runtime system.
AMT's transparent resource management is ideal for adaptivity, allowing the runtime system to redistribute tasks and data to enable resource changes without additional programmer effort.
However, AMTs with built-in adaptivity are still lacking.

This project aims to unlock the potential of adaptivity through AMT.

### Research Goals

1. **Adaptive AMT Runtime System** -- We will develop adaptivity techniques for an existing AMT system with load-balancing capabilities. New programming constructs will allow for expressing explicit resource needs. Heuristics will enable the AMT system to autonomously identify computationally intensive phases to request additional nodes, while proactively releasing nodes during phases of low computational intensity.

2. **Adaptive Job Scheduling** -- We will develop algorithms for scheduling a mix of rigid and adaptive jobs, ensuring fairness but incentivizing adaptive jobs. The resource manager will make decisions based on a global system state, balancing overall supercomputer performance and individual program efficiency. To do this, jobs will periodically report their status (impact of node changes). These algorithms will be evaluated with real-world experiments and simulations, using performance models derived from application experiments and supercomputer logs.

3. **End-to-End Integration and Validation** -- We will enable communication between our adaptive AMT system and a prototype resource manager. Experiments with real-world applications will validate the feasibility and benefits of low-overhead resource changes.

### Methodology

This project involves designing innovative algorithms, implementing them in prototypes, and evaluating them through experiments and simulations.
The knowledge gained could pave the way for adaptivity to significantly improve the efficiency of supercomputers.
