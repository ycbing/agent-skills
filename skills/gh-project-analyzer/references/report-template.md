# Analysis Report Template

This file defines the output structure for GitHub project analysis reports.

## Report Structure

Generate the report in this order:

### 1. 项目概览 (Project Overview)
- 项目名 + 描述
- GitHub URL + 首页（如有）
- Star / Fork / Watch 数
- 主要语言 + 语言占比
- License
- 创建时间 / 最近更新时间
- 是否 Archive / Fork

### 2. 技术栈分析 (Tech Stack)
- 主语言及版本（从 package.json / requirements.txt / go.mod 等推断）
- 框架和依赖（关键依赖分析）
- 构建工具（webpack/turbopack/vite/esbuild 等）
- CI/CD 流水线（GitHub Actions workflows）
- 包管理器（npm/yarn/pnpm）

### 3. 项目结构 (Project Structure)
- 目录树概览（根目录文件列表）
- 关键目录说明（src/, lib/, tests/, docs/ 等）
- 架构模式（monorepo/turborepo/nx/单体）

### 4. 活跃度分析 (Activity Analysis)
- 最近 30 次提交的频率和作者分布
- 提交活跃度评分（日均提交数）
- 最近 30 天 Issue 开启/关闭趋势
- PR 开启/合并趋势
- Release 频率

### 5. 社区分析 (Community)
- 核心贡献者列表（Top 10）
- 贡献者集中度（头部贡献者占比）
- Issue 响应速度（开启到首次回复平均时间）
- Fork 数量和活跃度

### 6. 代码质量 (Code Quality)
- 代码规模（总行数估算，从语言占比推算）
- Test 覆盖情况（是否有 tests/ 目录，CI 是否跑测试）
- 文档质量（README 长度、是否有 CONTRIBUTING.md / CODE_OF_CONDUCT.md）
- 代码规范（是否有 linter 配置）

### 7. 安全与维护 (Security & Maintenance)
- 依赖安全（是否有 Dependabot / Renovate）
- 安全漏洞（GitHub Security Advisories）
- 最后一次安全更新时间

### 8. 商业价值评估 (Value Assessment)
- 项目成熟度（⭐ 1-5）
- 社区活跃度（⭐ 1-5）
- 代码质量（⭐ 1-5）
- 适合借鉴的场景
- 潜在风险点

### 9. 可借鉴点 (Key Takeaways)
- 值得学习的架构设计
- 有用的代码模式/工具链
- 可直接复用的组件/库

### 10. 总结与建议 (Summary)
- 一句话评价
- 是否推荐关注/使用/贡献
- 适合什么样的开发者/团队

## Scoring Guidelines

- **5★**: 顶级水平，行业标杆
- **4★**: 优秀，值得深入学习
- **3★**: 中上水平，有亮点
- **2★**: 一般，部分可借鉴
- **1★**: 较差，不建议参考
