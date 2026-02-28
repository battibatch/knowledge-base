# Anthropic: Context Engineering for AI Agents
https://anthropic.com/engineering/effective-context-engineering-for-ai-agents

2025-09-25

## Context Eng vs Prompt Eng
* context is natural progression of prompt
* Context is set of strategies to for curating and maintaining the optimal set of tokens (information) during LLM inference

As we move toward engineering more capable agents that operatie over multiple turns of inference and longer time, we need tools to manage the entire context state(system instructions, tools, MCP, external data, message history, etc.)

Context engineering is the science of curating what will go in the limited context window 

## Why context eng is important to build capable agenst
LLMs lose focus or experience confusion at a certain point
As number of tokens in context increases, the models ability to recall info from that context decreases

## Anatomy of effective context
