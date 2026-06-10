---
name: gh-project-analyzer
description: Analyze GitHub open-source projects comprehensively. Use when user mentions analyzing a GitHub repo, evaluating an open-source project, researching a repo, comparing projects, or asks questions like "分析这个项目", "这个仓库怎么样", "evaluate this repo", "what is this project about". Covers tech stack, activity, community health, code quality, and value assessment.
---

# GitHub Project Analyzer

Analyze any GitHub open-source project with comprehensive metrics.

## Quick Scan

For a fast overview, run:

```bash
bash scripts/quick-scan.sh <owner/repo>
```

Returns: stars, forks, language, license, dates, topics.

## Full Analysis

For a deep dive, run:

```bash
bash scripts/analyze.sh <owner/repo> [/tmp/output-dir]
```

This fetches: repo info, README, commits, contributors, issues, PRs, releases, package.json, directory structure, CI workflows, traffic data. All saved as JSON files in the output directory.

Then read each JSON file and synthesize into a structured report following `references/report-template.md`.

## Report Sections

After running the analysis script, generate a report with these sections:

1. **项目概览** — Name, URL, stars, forks, languages, license, dates
2. **技术栈** — Framework, dependencies, build tools, CI/CD (from package.json + workflows.json)
3. **项目结构** — Directory tree, architecture pattern (from structure.json)
4. **活跃度** — Commit frequency, issue/PR trends, release cadence (from commits.json, issues-*.json, prs-open.json, releases.json)
5. **社区** — Top contributors, contribution concentration (from contributors.json)
6. **代码质量** — Test coverage presence, docs quality, linting config (from structure.json, README.md)
7. **安全维护** — Dependabot/lockfile presence, last update recency
8. **价值评估** — Score 1-5 on maturity, community, quality; suitable use cases, risks
9. **可借鉴点** — Architecture patterns, code patterns, reusable components
10. **总结建议** — One-line verdict, recommendation (watch/use/contribute), target audience

## Scoring

- 5★ Industry benchmark
- 4★ Excellent, worth deep study
- 3★ Good, has highlights
- 2★ Average, partial reference
- 1★ Poor, not recommended

## Tips

- Read `references/report-template.md` for detailed section structure
- For Chinese-speaking users, output report in Chinese
- Compare two repos by running analysis on both, then diff key metrics side-by-side
- Use `gh api` directly for ad-hoc queries not covered by scripts
