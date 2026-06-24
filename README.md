# AdventOfCode

A repository containing my solutions to the **Advent of Code (AoC)** programming challenges.

This project serves as a personal archive of my submissions, problem-solving approaches, and learning progress across multiple years of the event. The goal is to maintain a single, organized repository containing all completed and future Advent of Code solutions while experimenting with different programming languages, algorithms, and coding techniques.

---

## Project Objectives

* Track progress across Advent of Code events and years.
* Maintain a centralized collection of puzzle solutions.
* Experiment with different programming languages and problem-solving approaches.
* Build reusable tooling to simplify running and validating solutions.
* Create a long-term reference for algorithmic and coding challenges.

---

## Repository Structure

The repository is designed to support solutions across multiple years and programming languages.

```text
AdventOfCode/
├── java/
│   ├── 2024/
│   └── 2025/
├── javascript/
│   ├── 2024/
│   └── 2025/
├── ruby/
│   ├── 2024/
│   └── 2025/
└── cli/
```

Additional languages and years may be added as new challenges are completed.

---

## Planned CLI Tool

To simplify running solutions, this repository will include a command-line interface (CLI) capable of locating and executing challenge solutions without requiring manual navigation through the project structure.

### Planned Features

* Run the solution for the current day's challenge by default.
* Run a specific day from the current year.
* Run the current day from a specific year.
* Run a specific day from a specific year.
* Display the answers for both Part 1 and Part 2 of the selected challenge.
* Support multiple programming language implementations where available.

### Example Usage

```bash
# Run today's challenge
aoc

# Run Day 1 of the current year
aoc 1

# Run today's challenge from 2024
aoc 2024

# Run Day 1 of 2024
aoc 1/2024

# Alternative formats
aoc 2024-01
aoc 2024:1
aoc 01_2024
```

The CLI will accept flexible day/year formats, allowing challenge identifiers to be supplied in any reasonable order and separated by common delimiters.

---

## Repository Vision

As the repository grows, it will become a comprehensive collection of Advent of Code solutions that enables:

* Quick execution of any completed challenge.
* Comparison of solutions across different programming languages.
* Exploration of alternative algorithms and optimizations.
* Retrospective analysis of problem-solving techniques developed over time.
* Continuous improvement of coding and software design skills.

---

## About Advent of Code

Advent of Code is an annual programming challenge created by Eric Wastl. Every day from December 1st through December 25th, participants are presented with a new programming puzzle consisting of two parts. The challenges are language-agnostic and encourage learning, experimentation, and creative problem solving.

Whether you're practicing algorithms, learning a new programming language, or simply enjoying the challenge, Advent of Code provides an excellent platform for improving software engineering skills.

### Official Challenge Links

* Advent of Code Homepage: https://adventofcode.com/
* Advent of Code 2024: https://adventofcode.com/2024
* Advent of Code 2025: https://adventofcode.com/2025

---

## License

This repository contains my personal solutions to Advent of Code challenges and is intended for educational and learning purposes.
