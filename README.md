# Agent Skills 🤖

个人自研 AI Agent Skills，兼容 OpenClaw、Claude Code、Codex、Cursor、Copilot、Gemini CLI 等 50+ 种 Agent 宿主。

## Skills

| Skill | 描述 | 类型 | 触发场景 |
|-------|------|------|---------|
| [gh-project-analyzer](skills/gh-project-analyzer/) | GitHub 开源项目深度分析 | 工具型 | 分析仓库、评估项目、调研技术方案 |
| [idea-refine](skills/idea-refine/) | 结构化想法打磨为可执行方案 | 对话型 | 头脑风暴、想法模糊需梳理 |
| [spec-driven](skills/spec-driven/) | 规格驱动开发（Spec→Plan→Tasks→Implement） | 流程型 | 新功能开发、需求规划 |
| [code-reviewer](skills/agents/code-reviewer/) | 资深代码审查角色（5维度评估） | Agent | Code Review、PR 审查 |

## Agents

| Agent | 角色描述 |
|-------|---------|
| [code-reviewer](skills/agents/code-reviewer/) | 资深 Staff Engineer，从正确性/可读性/架构/安全/性能五维度审查代码 |

---

## 快速开始

### 安装

```bash
# 克隆到 OpenClaw workspace
git clone https://github.com/ycbing/agent-skills.git
cp -r agent-skills/skills/* ~/.openclaw/workspace/skills/
```

### 使用

| 场景 | 示例 |
|------|------|
| 分析项目 | "分析 vercel/next.js" |
| 打磨想法 | "帮我梳理一下这个想法" |
| 规格开发 | "先写个 spec" |
| 代码审查 | "审查一下这段代码" |

## Skill 类型

- **工具型** — 带脚本自动采集数据（gh-project-analyzer）
- **对话型** — 引导式对话，发散收敛（idea-refine）
- **流程型** — 门控流程，逐步推进（spec-driven）
- **Agent** — 角色定义，注入审查视角（code-reviewer）

## 目录结构

```
agent-skills/
├── skills/                    # 技能库
│   ├── gh-project-analyzer/   # GitHub 项目分析
│   │   ├── SKILL.md
│   │   ├── scripts/           # 分析脚本
│   │   └── references/        # 报告模板
│   ├── idea-refine/           # 想法打磨
│   ├── spec-driven/           # 规格驱动开发
│   └── agents/                # Agent 角色定义
│       └── code-reviewer/     # 代码审查者
```

## 路线图

- [ ] `context-engineering` — 上下文工程最佳实践
- [ ] `project-health-monitor` — 项目健康度定时巡检
- [ ] `weekly-report` — 自动周报生成
- [ ] `debug-assistant` — 调试助手
- [ ] `performance-auditor` — 性能审计角色

## License

MIT
