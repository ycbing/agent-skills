# Agent Skills 🤖

个人自研 AI Agent Skills，兼容 OpenClaw、Claude Code、Codex、Cursor、Copilot、Gemini CLI 等 50+ 种 Agent 宿主。

## Skills（技能库）

| Skill | 描述 | 类型 | 触发示例 |
|-------|------|------|---------|
| [gh-project-analyzer](skills/gh-project-analyzer/) | GitHub 开源项目深度分析（30+ 指标） | 🔧 工具型 | "分析 vercel/next.js" |
| [idea-refine](skills/idea-refine/) | 结构化想法打磨为可执行方案 | 💬 对话型 | "帮我梳理这个想法" |
| [spec-driven](skills/spec-driven/) | 规格驱动开发（4步门控流程） | 📋 流程型 | "先写个 spec" |
| [context-engineering](skills/context-engineering/) | Agent 上下文分层管理最佳实践 | 📖 知识型 | "优化 AI 输出质量" |
| [debug-assistant](skills/debug-assistant/) | 系统化调试助手（5步流程） | 🔍 辅助型 | "debug 这个报错" |

## Agents（角色定义）

| Agent | 角色 | 触发示例 |
|-------|------|---------|
| [code-reviewer](agents/code-reviewer/) | 资深代码审查（5维度评估） | "审查一下这段代码" |
| [performance-auditor](agents/performance-auditor/) | 性能审计工程师 | "性能分析一下" |

---

## 完整工作流

```
idea-refine → spec-driven → [编码] → code-reviewer → debug-assistant
     ↓
context-engineering（贯穿始终，管理 Agent 上下文）
```

## 快速开始

```bash
# 安装到 OpenClaw
git clone https://github.com/ycbing/agent-skills.git
cp -r agent-skills/skills/* ~/.openclaw/workspace/skills/
cp -r agent-skills/agents/* ~/.openclaw/workspace/skills/agents/
```

## 目录结构

```
agent-skills/
├── skills/                     # 技能库
│   ├── gh-project-analyzer/    # 🔧 GitHub 项目分析
│   │   ├── scripts/             #    数据采集脚本
│   │   └── references/          #    报告模板
│   ├── idea-refine/             # 💬 想法打磨
│   ├── spec-driven/             # 📋 规格驱动开发
│   ├── context-engineering/     # 📖 上下文管理
│   └── debug-assistant/         # 🔍 调试助手
├── agents/                      # Agent 角色定义
│   ├── code-reviewer/           #    代码审查者
│   └── performance-auditor/    #    性能审计员
└── README.md
```

## Skill 类型说明

- **🔧 工具型** — 带脚本自动采集数据，输出结构化报告
- **💬 对话型** — 引导式对话，发散收敛思维
- **📋 流程型** — 门控流程，逐步推进，每步人工确认
- **📖 知识型** — 最佳实践和方法论参考
- **🔍 辅助型** — 问题诊断和排查工具

## License

MIT
