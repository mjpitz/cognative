---
# Basic project information
module-name: cognative
description: |
  Traditional approaches to observability, operations, and business intelligence treat these concerns as separate and
  distinct. This often results in several, different technology stacks, often dramatically increasing the demand and
  requirements of your on-call staff.

  Cognative deploys a turn-key solution that centralizes log, metric, trace, and wide-event data into a common store and
  exposes them for analysis behind a single pane of glass. Traditional approaches often require engineering effort to
  centralize data from numerous, distinct sources into a common location. This results in toil and requires further
  maintenance as the organization grows. Cognative removes this toil by centralizing the data FIRST.

# Technical stack
technologies:
  - Docker
  - Kubernetes
  - Helm
  - SQL
  - Clickhouse
  - OpenTelemetry

# Development conventions
conventions:
  - PNPM monorepo
  - SPDX license header
  - Conventional Commits
  - Prettier + ESLint
---

## Overview

This document provides an overview of the ecosystem that exists within this repository. It captures important context,
patterns, and memories that are useful for AI code agents to produce and manipulate code.

## Architecture Details

### Component Interactions
