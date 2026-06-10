---
name: debug-assistant
description: Systematic debugging assistant. Use when encountering errors, bugs, or unexpected behavior. Triggers on "debug", "调试", "这个bug", "为什么报错", "排查问题", "fix this error", or when code isn't working as expected. Follows a structured reproduce→isolate→diagnose→fix→verify workflow.
---

# Debug Assistant — 调试助手

系统化调试流程，避免盲目试错。

## 调试流程

```
REPRODUCE → ISOLATE → DIAGNOSE → FIX → VERIFY
```

### Phase 1: REPRODUCE（复现）

1. **确认错误** — 精确记录：
   - 错误信息（完整）
   - 堆栈跟踪（关键部分）
   - 期望行为 vs 实际行为
   - 复现步骤

2. **环境检查**：
   - 版本是否匹配？（node/python/依赖版本）
   - 环境变量是否正确？
   - 最近是否有变更？

### Phase 2: ISOLATE（隔离）

1. **缩小范围**：
   - 是前端还是后端？
   - 是哪个模块/函数？
   - 是数据问题还是逻辑问题？

2. **二分法定位**：
   - 注释掉一半代码，还报错吗？
   - 回退到上一个正常版本，是哪次提交引入的？
   - 用最小输入复现，需要什么最少条件？

### Phase 3: DIAGNOSE（诊断）

1. **假设优先级**：

| 优先级 | 假设类型 | 常见示例 |
|--------|---------|---------|
| P0 | 配置/环境 | 端口、URL、环境变量、版本不匹配 |
| P1 | 数据 | 缺失数据、格式错误、类型不匹配 |
| P2 | 逻辑 | 条件判断、边界情况、状态管理 |
| P3 | 依赖 | 第三方库 bug、API 变更 |

2. **验证假设**：
   - 添加日志/打印验证
   - 用断点或 console.log 确认数据流
   - 检查输入和输出的实际值（不是假设值）

### Phase 4: FIX（修复）

1. **最小修改原则** — 只改必须改的
2. **理解后再改** — 不在不理解根因的情况下"试试看"
3. **考虑副作用** — 这个修改会影响其他地方吗？

### Phase 5: VERIFY（验证）

1. **原问题是否解决？** — 按复现步骤重跑一遍
2. **是否引入新问题？** — 相关功能是否正常
3. **是否需要补测试？** — 如果缺少测试用例就补上

## 常见错误模式速查

### Node.js / Next.js

| 错误 | 常见原因 | 快速检查 |
|------|---------|---------|
| `MODULE_NOT_FOUND` | 包未安装 / 路径大小写 | `ls node_modules/xxx` |
| `EADDRINUSE` | 端口被占用 | `lsof -i :PORT` |
| `CORS error` | 缺少 CORS 配置 | 检查 API headers |
| `hydration mismatch` | SSR/CSR 不一致 | 检查客户端特定代码 |
| `TypeError: Cannot read property` | 空值未检查 | 添加可选链 `?.` |

### Database

| 错误 | 常见原因 | 快速检查 |
|------|---------|---------|
| `relation does not exist` | 表未创建/迁移未跑 | 检查 migration 状态 |
| `connection refused` | DB 未启动/端口错 | `docker ps` / 检查端口 |
| `unique constraint` | 重复数据 | 检查是否需 upsert |
| `connection timeout` | 连接池满/慢查询 | 检查连接数和查询 |

### Docker

| 错误 | 常见原因 | 快速检查 |
|------|---------|---------|
| `OOM killed` | 内存不足 | `free -h` / 增加 swap |
| `permission denied` | 文件权限 | `chmod` / 检查 user |
| `port already in use` | 端口冲突 | `docker ps` |

## 输出格式

调试完成后输出简报：

```markdown
# Debug Report

## 问题
（一句话描述）

## 根因
（为什么出错）

## 修复
（做了什么修改）

## 验证
（如何确认修复成功）
```
