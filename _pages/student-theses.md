---
layout: page
permalink: /student-theses/
title: Student Theses, Projects, and Internships
nav: true
nav_title: Theses & Projects
nav_order: 7
toc:
  sidebar: left
---

<style>
  hr {
    margin-top: 3rem;
    margin-bottom: 3rem;
  }
  h3 {
    margin-top: 2.5rem;
  }
</style>

<div style="text-align: center; margin: 2rem 0;">
  <img src="/assets/img/FuldaHPC_Color_Full_Circle.png" alt="Fulda HPC Research Group" style="width: 180px;">
</div>

## Overview

<div class="project-meta" style="margin-bottom: 1.5rem; padding: 1rem; background: var(--global-code-bg-color); border-radius: 8px;">
  <strong>Supervisor:</strong> <a href="https://www.hs-fulda.de/angewandte-informatik/ueber-uns/team/kontakt-details/person/jonas-posner-19584/contactBox">Prof. Dr. Jonas Posner</a><br>
  <strong>Institution:</strong> <a href="https://www.hs-fulda.de/angewandte-informatik/">Fulda University of Applied Sciences, Department of Applied Computer Science</a><br>
  <strong>Contact:</strong> <a href="mailto:jonas.posner@cs.hs-fulda.de">jonas.posner@cs.hs-fulda.de</a><br>
  <strong>Supervision:</strong> <a href="#theses-bsc--msc">Theses (B.Sc. &amp; M.Sc.)</a> &nbsp;·&nbsp; <a href="#research-projects">Research Projects (M.Sc.)</a> &nbsp;·&nbsp; <a href="#internship-report">Internship Reports (B.Sc.)</a>
</div>

I supervise Bachelor's and Master's theses, M.Sc. research projects, and B.Sc. internships (Praxisprojekt) in the areas of **Parallel Programming**, **High-Performance Computing (HPC)**, and **Supercomputing** at Fulda University of Applied Sciences.

My research focuses on making supercomputers more efficient and easier to program. Theses in my group are typically closely connected to active research projects, providing students with the opportunity to work on real-world systems and contribute to scientific publications.

**Research areas I supervise in:**

- Parallel Programming Models
- Asynchronous Many-Task (AMT) Programming
- Dynamic (Adaptive/Malleable) Resource Management
- Fault Tolerance (Resiliency)
- Job Scheduling
- AI-assisted Vibe Coding
- Heterogeneous Computing Resources
- Parallel I/O

If none of the listed topics match your interests, but you have an idea in a related area, feel free to reach out — I am happy to discuss custom proposals. **Please get in touch early**.

---

## Topics

The following are initial topic proposals intended to define a research direction. These are starting points; the specific scope, research questions, and methodology will be developed collaboratively during our initial meetings. Students are encouraged to contribute their own ideas and refinements.

### Parallel Programming Models

<div style="margin-bottom: 1rem; padding: 1rem; background: var(--global-code-bg-color); border-radius: 8px;">
  <strong>MPI vs. AMT: A Comparative Performance Study</strong>
  <p style="margin-top: 0.5rem; margin-bottom: 0;">Systematically compare MPI-based and AMT-based implementations of representative HPC benchmarks with respect to performance, scalability, and programmability. We are particularly interested in also exploring <a href="https://julialang.org">Julia</a> as an alternative parallel programming system.</p>
</div>

### Asynchronous Many-Task (AMT) Programming

<div style="margin-bottom: 1rem; padding: 1rem; background: var(--global-code-bg-color); border-radius: 8px;">
  <strong>Load Balancing Heuristics for Irregular Workloads</strong>
  <p style="margin-top: 0.5rem; margin-bottom: 0;">Investigate and implement task migration strategies for AMT runtimes dealing with dynamic and irregular workloads. The focus is on developing heuristics that reduce overhead while maintaining good load balance.</p>
</div>

<div style="margin-bottom: 1rem; padding: 1rem; background: var(--global-code-bg-color); border-radius: 8px;">
  <strong>Profiling and Visualization of AMT Execution</strong>
  <p style="margin-top: 0.5rem; margin-bottom: 0;">Develop tools to trace and visualize task execution and data movement in AMT runtimes. The goal is to help developers understand runtime behavior and identify performance bottlenecks.</p>
</div>

### Dynamic (Adaptive/Malleable) Resource Management

<div style="margin-bottom: 1rem; padding: 1rem; background: var(--global-code-bg-color); border-radius: 8px;">
  <strong>Malleable Job Scheduling Strategies for HPC Clusters</strong>
  <p style="margin-top: 0.5rem; margin-bottom: 0;">Design and evaluate scheduling algorithms that dynamically resize jobs at runtime. The goal is to improve overall system utilization by allowing the resource manager to shrink or expand running jobs based on demand from the job queue.</p>
</div>

<div style="margin-bottom: 1rem; padding: 1rem; background: var(--global-code-bg-color); border-radius: 8px;">
  <strong>Performance Modeling for Adaptive Applications</strong>
  <p style="margin-top: 0.5rem; margin-bottom: 0;">Develop performance models that predict how applications respond to node additions or removals. These models will guide the resource manager in making better decisions about when and how to resize jobs.</p>
</div>

### Fault Tolerance (Resiliency)

<div style="margin-bottom: 1rem; padding: 1rem; background: var(--global-code-bg-color); border-radius: 8px;">
  <strong>Fault Tolerance in AMT Systems</strong>
  <p style="margin-top: 0.5rem; margin-bottom: 0;">Explore checkpointing and recovery mechanisms for task-based runtimes on large-scale clusters. The goal is to enable transparent recovery from node failures without losing significant computation progress.</p>
</div>

### Job Scheduling

<div style="margin-bottom: 1rem; padding: 1rem; background: var(--global-code-bg-color); border-radius: 8px;">
  <strong>Simulation Framework for HPC Job Schedulers</strong>
  <p style="margin-top: 0.5rem; margin-bottom: 0;">Build a discrete-event simulation environment to evaluate scheduling policies using real-world supercomputer logs. The framework should support both rigid and adaptive job models. The simulation builds on <a href="https://github.com/elastisim/elastisim">ElastiSim</a>, an existing open-source HPC job scheduler simulator.</p>
</div>

<div style="margin-bottom: 1rem; padding: 1rem; background: var(--global-code-bg-color); border-radius: 8px;">
  <strong>Fairness-aware Scheduling for Mixed Rigid/Adaptive Workloads</strong>
  <p style="margin-top: 0.5rem; margin-bottom: 0;">Design and evaluate scheduling policies that incentivize adaptive jobs while guaranteeing fairness for rigid jobs in a shared HPC cluster.</p>
</div>

### AI-assisted Vibe Coding

<div style="margin-bottom: 1rem; padding: 1rem; background: var(--global-code-bg-color); border-radius: 8px;">
  <strong>LLM-driven Generation of Parallel Programs</strong>
  <p style="margin-top: 0.5rem; margin-bottom: 0;">Evaluate the capability of large language models to generate correct and efficient parallel code (MPI, OpenMP, task-based) for HPC problems. Assess correctness, performance, and developer productivity.</p>
</div>

### Heterogeneous Computing Resources

<div style="margin-bottom: 1rem; padding: 1rem; background: var(--global-code-bg-color); border-radius: 8px;">
  <strong>Task Scheduling Across CPUs and GPUs in AMT Systems</strong>
  <p style="margin-top: 0.5rem; margin-bottom: 0;">Extend an existing AMT runtime to schedule tasks on heterogeneous hardware (CPU + GPU), implementing placement heuristics that minimize data movement and maximize throughput.</p>
</div>

### Parallel I/O

<div style="margin-bottom: 1rem; padding: 1rem; background: var(--global-code-bg-color); border-radius: 8px;">
  <strong>I/O-aware Task Scheduling for Data-intensive HPC Applications</strong>
  <p style="margin-top: 0.5rem; margin-bottom: 0;">Investigate how I/O access patterns of tasks can be used to guide scheduling decisions in AMT systems, reducing I/O bottlenecks on shared storage systems.</p>
</div>

---

## Theses (B.Sc. & M.Sc.)

### Formal Requirements

<div class="project-meta" style="margin-bottom: 1.5rem; padding: 1rem; background: var(--global-code-bg-color); border-radius: 8px;">
  <strong>Language:</strong> English or German<br>
  <strong>Length:</strong> B.Sc.: typically 40–60 pages &nbsp;·&nbsp; M.Sc.: typically 60–100 pages<br>
  <strong>Format:</strong> LaTeX required &nbsp;·&nbsp; Use the official <a href="https://git-ce.rwth-aachen.de/fd-fbai/templates">department template (FBAI)</a><br>
  <strong>Code:</strong> Version-controlled (Git) and submitted alongside the thesis<br>
</div>

### Expectations

- **Independence:** You are expected to work independently and proactively. I provide guidance and feedback, but the thesis is your work.
- **Regular meetings:** We meet regularly to discuss progress, problems, and next steps.
- **Scientific writing:** You are expected to read and cite relevant related work. Prefer primary sources: conference papers (ACM, IEEE, USENIX), journals, and technical reports.
- **Reproducibility:** Experiments must be documented and reproducible. Raw data and scripts must be included in the submission.
- **AI tools:** The use of AI writing tools (e.g., ChatGPT) must be transparently declared in accordance with the department's current guidelines.

### Process {#process}

<div style="margin-bottom: 0.75rem; padding: 1rem; background: var(--global-code-bg-color); border-radius: 8px;">
  <strong>1 &nbsp;·&nbsp; Application</strong>
  <div style="margin-top: 0.5rem;">
    Get in touch <strong>early</strong>. Send an email to <a href="mailto:jonas.posner@cs.hs-fulda.de">jonas.posner@cs.hs-fulda.de</a> with:
    <ul style="margin-top: 0.5rem; margin-bottom: 0.5rem;">
      <li>Thesis type (B.Sc./M.Sc.)</li>
      <li>Transcript of records</li>
      <li>Preferred start date</li>
      <li>Your experience in parallel programming</li>
      <li>Which research area from my list interests you</li>
      <li>A concrete initial idea for a topic within that area</li>
    </ul>
    Before applying, please review the <a href="#completed-theses">completed theses</a> to get an idea of the scope and quality expectations.
  </div>
</div>

<div style="margin-bottom: 0.75rem; padding: 1rem; background: var(--global-code-bg-color); border-radius: 8px;">
  <strong>2 &nbsp;·&nbsp; Initial Meeting</strong>
  <p style="margin-top: 0.5rem; margin-bottom: 0;">We meet to discuss your background, the topic, and expectations on both sides. If we agree to proceed, we define a concrete scope and research question.</p>
</div>

<div style="margin-bottom: 0.75rem; padding: 1rem; background: var(--global-code-bg-color); border-radius: 8px;">
  <strong>3 &nbsp;·&nbsp; Exposé</strong>
  <p style="margin-top: 0.5rem; margin-bottom: 0;">You write a short exposé (2 pages) covering: problem statement and motivation, objectives and research questions, planned methodology, and a rough timeline. This serves as the basis for the official registration.</p>
</div>

<div style="margin-bottom: 0.75rem; padding: 1rem; background: var(--global-code-bg-color); border-radius: 8px;">
  <strong>4 &nbsp;·&nbsp; Official Registration</strong>
  <div style="margin-top: 0.5rem;">
    You register the thesis with the examination office with confirmation from the first examiner (Prof. Dr. Posner) and a second examiner. The official processing time begins from the registration date: <strong>B.Sc.: 3 months &nbsp;·&nbsp; M.Sc.: 6 months</strong>.
  </div>
  <div style="margin-top: 0.5rem;">
    Registration is typically possible towards the end of the lecture period: <strong>late January</strong> (winter semester, deadline: March 31) and <strong>late June</strong> (summer semester, deadline: September 30).
  </div>
</div>

<div style="margin-bottom: 0.75rem; padding: 1rem; background: var(--global-code-bg-color); border-radius: 8px;">
  <strong>5 &nbsp;·&nbsp; Thesis Work</strong>
  <p style="margin-top: 0.5rem; margin-bottom: 0;">You carry out the research, implementation, and evaluation. We meet regularly to track progress. You are expected to bring topics to the meeting that you would like to discuss.</p>
</div>

<div style="margin-bottom: 0.75rem; padding: 1rem; background: var(--global-code-bg-color); border-radius: 8px;">
  <strong>6 &nbsp;·&nbsp; Draft Review</strong>
  <p style="margin-top: 0.5rem; margin-bottom: 0;">You submit a full draft at least three weeks before the deadline. I provide written feedback on structure, content, and language.</p>
</div>

<div style="margin-bottom: 0.75rem; padding: 1rem; background: var(--global-code-bg-color); border-radius: 8px;">
  <strong>7 &nbsp;·&nbsp; Submission</strong>
  <p style="margin-top: 0.5rem; margin-bottom: 0;">You submit the final thesis (PDF to supervisor + bound copy at the examination office if required) by the official deadline. All code and artefacts must be submitted alongside the thesis.</p>
</div>

<div style="margin-bottom: 0.75rem; padding: 1rem; background: var(--global-code-bg-color); border-radius: 8px;">
  <strong>8 &nbsp;·&nbsp; Presentation & Defense</strong>
  <div style="margin-top: 0.5rem;">
    You present your work in a colloquium. The date is agreed upon after submission.
  </div>
  <div style="margin-top: 0.5rem;">
    <strong>B.Sc.:</strong> ~20 min presentation + ~15 min Q&A<br>
    <strong>M.Sc.:</strong> ~30 min presentation + ~20 min Q&A
  </div>
  <div style="margin-top: 0.5rem;">
    The presentation should cover motivation, approach, results, and critical reflection.
  </div>
</div>

---

## Research Projects

<div class="project-meta" style="margin-bottom: 1.5rem; padding: 1rem; background: var(--global-code-bg-color); border-radius: 8px;">
  <strong>Type:</strong> M.Sc. module<br>
  <strong>Duration:</strong> 1 semester<br>
</div>

The research project is a supervised research module in the Master's programme. It can be done by a group of students.

Topics come from the same research areas as theses. If you are interested, reach out by email with your topic idea, a brief statement of your background, and your preferred semester. The same [contact and application process](#process) as for theses applies.

---

## Internship Report

<div class="project-meta" style="margin-bottom: 1.5rem; padding: 1rem; background: var(--global-code-bg-color); border-radius: 8px;">
  <strong>Type:</strong> B.Sc. module (Praxisprojekt)<br>
  <strong>Guidelines:</strong> <a href="https://mmnet.informatik.hs-fulda.de/abschlussarbeiten/Praktikumbericht_Richtlinien_HS-Fulda.pdf">Internship guidelines from Prof. Dr. Rieger (PDF)</a>
</div>

**Key points:**

- The practical phase takes place at a company or research institution in industry.
- The university assigns a supervising professor for the written report.
- The internship report is submitted after the practical phase ends.
- Assessment is based on both the report and the employment reference.

**Note on supervision:** I supervise internship reports if the topic in industry aligns with my research interests (Parallel Programming, HPC, Supercomputing, etc.). Please get in touch **before your internship starts** to confirm supervision. The [application process](#process) is the same as for theses.

---

## Completed Theses

The following theses were completed during my time as a researcher at the University of Kassel (2018-2025). I supervised and/or reviewed these works.

### 2026

- **Simulationsbasierte Analyse des Energieverbrauchs von HPC-Systemen mit elastischen Jobs und Knotenabschaltung** — Mike Karabet (B.Sc., 2026) [[PDF](https://www.uni-kassel.de/eecs/index.php?eID=dumpFile&t=f&f=41002&token=d63ed21121224d8951d466e694bbc10eb63fd2a6)]

### 2025

- **Evaluierung LLM-generierten parallelen Codes in der Programmiersprache Chapel** — Nils Schintze (B.Sc., 2025) [[PDF](https://www.uni-kassel.de/eecs/index.php?eID=dumpFile&t=f&f=40885&token=c3de50d4bc0fcd8727ea8df3be4734140598b6b5)]
- **Entwicklung und Evaluation eines task-basierten Laufzeitsystems mit dynamischer Ressourcenverwaltung** — Tim Ellersiek (M.Sc., 2025) [[PDF](https://www.uni-kassel.de/eecs/index.php?eID=dumpFile&t=f&f=40732&token=ba951274ebca3693bfcba2aa4174feef497f65dc)]
- **Evaluation of the multithreaded runtime system Itoyori using Task Bench** — Torben Lahnor (M.Sc., 2025) [[PDF](https://www.uni-kassel.de/eecs/index.php?eID=dumpFile&t=f&f=40727&token=97a2de5fff6672659b6981f0effc47ccb87dae5e)]
- **Simulation and Evaluation of evolving Workloads** - Kapil Karki (B.Sc., 2025)
- **Simulating Malleable Job Scheduling Algorithms using Real-World Supercomputer Trace Logs** - Patrick Zojer (B.Sc., 2025)
- **Elastisches Ressourcenmanagement: Vergleich von Asynchronous Many-Task (AMT) und Dynamic Processes with PSets (DPP)** - Nick Bietendorf (B.Sc., 2025)
- **Evaluation von Gemini–generierten End–To–End und Unit Tests für Webanwendungen** - Marius Tews (B.Sc., 2025)

### 2024

- **Entwurf und Entwicklung einer Emulation von Materialflüssen auf virtuellen Fertigungsanlagen** — Larson Schneider (B.Sc., 2024)
- **Ressourcenelastizität für das task-basierte parallele Programmiersystem APGAS** — Raoul W. Goebel (B.Sc., 2024) [[PDF](https://www.uni-kassel.de/eecs/index.php?eID=dumpFile&t=f&f=39697&token=b2d0e6cddb934bf89212a0ddf72449a41bf8ab20)]

### 2023

- **TasGPI: A Global Load Balancing Framework for C++** — Adrian Steinitz (M.Sc., 2023) [[PDF](https://www.uni-kassel.de/eecs/index.php?eID=dumpFile&t=f&f=39558&token=4722930399b6f79331c0f9a29fb014eaa0e57fbe)]
- **Prototypische Entwicklung eines Schedulers für Malleable-Jobs** — Janek Bürger (B.Sc., 2023) [[PDF](https://www.uni-kassel.de/eecs/index.php?eID=dumpFile&t=f&f=39497&token=a64d87b7c61780498d79ac0da88aa877e3cbfb99)]
- **Weiterentwicklung und Evaluation von Scheduling-Algorithmen für elastische Jobs im High-Performance-Computing** — Fabian Hupfeld (B.Sc., 2023) [[PDF](https://www.uni-kassel.de/eecs/index.php?eID=dumpFile&t=f&f=39110&token=aadbd300129c78cb1fc32f3b00c7f880fc2915db)]
- **Benchmarking von Virtuellen Threads in Java 19** — Marco Spöth (B.Sc., 2023) [[PDF](https://www.uni-kassel.de/eecs/index.php?eID=dumpFile&t=f&f=38971&token=1ca309321ef01d96c6a89ba7215ced207aac8e40)]

### 2022

- **Performanceevaluierung des Java-Parallelisierungs Frameworks APGAS mit dem Benchmark-System Task Bench** — Torben R. Lahnor (B.Sc., 2022) [[PDF](https://www.uni-kassel.de/eecs/index.php?eID=dumpFile&t=f&f=2603&token=ab506dfce87c6cdd03a0384e1f72c8b6c2db8a9f)]

### 2020

- **Entwicklung einer Netzwerkschicht für ein Java-basiertes Programmiersystem aus dem Bereich des Hochleistungsrechnens** — Steve Hildebrandt (M.Sc., 2020) [[PDF](https://www.uni-kassel.de/eecs/index.php?eID=dumpFile&t=f&f=1598&token=b9d3feb5528ef54129d4ea08ab6abb38d6b6af9e)]
- **Dynamisches Hinzufügen und Entfernen von Places innerhalb der Global Load-Balancing Runtime von APGAS** — Jonas Scherbaum (M.Sc., 2020) [[PDF](https://www.uni-kassel.de/eecs/index.php?eID=dumpFile&t=f&f=1600&token=81f782bdc98f1d064b53b300acdac4dd5485aa54)]
- **Protokollierung und Visualisierung des Laufzeitverhaltens einer Taskpool-Implementierung** — Jan Bingemann (B.Sc., 2020) [[PDF](https://www.uni-kassel.de/eecs/index.php?eID=dumpFile&t=f&f=1603&token=53c65a49d08ad64500865b9dd928ed5befe8fccc)]

### 2019

- **Vergleich zwischen APGAS und Akka** — Lukas Ried (B.Sc., 2019)
- **Design and Evaluation of a Work Stealing-Based Fault Tolerance Scheme for Task Pools** — Mia Reitz (M.Sc., 2019)
- **APGAS und Charm++ im Vergleich** — Aron Bollmann (B.Sc., 2019)
- **Isolierung von APGAS Benchmarks unter Anwendung von Containern in einer HPC-Umgebung** — Fabian Wurmbach (B.Sc., 2019) [[PDF](https://www.uni-kassel.de/eecs/index.php?eID=dumpFile&t=f&f=1601&token=04f6efe99a3925c426fb7b63b6459c4511d04bac)]
- **Nutzung von Fibers als Ersatz für Threads im Laufzeitsystem der APGAS-Bibliohek für Java** — Matthias Hartmann (M.Sc., 2019)

### 2018

- **An Asynchronous Backup Scheme Tracking Work-Stealing for Reduction-Based Task Pools** — Mia Reitz (B.Sc., 2018)
- **Benchmarks für das taskbasierte parallele Programmiersystem APGAS** — Steve Hildebrandt (B.Sc., 2018)
