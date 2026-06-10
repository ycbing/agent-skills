# Agent Skills 🤖

个人自研 AI Agent Skills，兼容 OpenClaw、Claude Code、Codex、Cursor、Copilot、Gemini CLI 等 50+ 种 Agent 宿主。

## Skills

| Skill | 描述 | 触发场景 |
|-------|------|---------|
| **[gh-project-analyzer](skills/gh-project-analyzer/)** | GitHub 开源项目深度分析 | 分析仓库、评估项目、调研技术方案 |

---

## gh-project-analyzer

GitHub 开源项目分析技能，无需认证，分析任意公开仓库。

### 分析维度（10 大维度，30+ 指标）

1. **项目概览** — 名称、Stars、Forks、语言、License、创建/更新时间
2. **技术栈** — 框架、依赖、构建工具、CI/CD
3. **项目结构** — 目录树、架构模式
4. **活跃度** — 提交频率、Issue/PR 趋势、Release 周期
5. **社区** — 核心贡献者、贡献集中度、响应速度
6. **代码质量** — 测试覆盖、文档质量、代码规范
7. **安全维护** — Dependabot、安全更新
8. **价值评估** — 成熟度/活跃度/质量评分（1-5★）
9. **可借鉴点** — 架构设计、代码模式、可复用组件
10. **总结建议** — 一句话评价、推荐程度

### 使用方式

**快速扫描**（基础信息）：
```bash
bash skills/gh-project-analyzer/scripts/quick-scan.sh <owner/repo>
```

**完整分析**（全量数据）：
```bash
bash skills/gh-project-analyzer/scripts/analyze.sh <owner/repo> [/tmp/output-dir]
```

### 安装

```bash
# 通过 ClawHub
clawhub install gh-project-analyzer

# 或手动克隆到 skills 目录
git clone https://github.com/ycbing/agent-skills.git
cp -r agent-skills/skills/gh-project-analyzer ~/.openclaw/workspace/skills/
```

---

## 开发中

- 🚧 **content-publisher** — 多平台内容自动发布（飞书、微信公众号、掘金等）
- 🚧 **project-health-monitor** — 项目健康度定时巡检
- 🚧 **weekly-report** — 自动生成周报

## 贡献

欢迎提交 Issue 和 PR！Follow [Agent Skills 规范](https://agentskills.io)。
