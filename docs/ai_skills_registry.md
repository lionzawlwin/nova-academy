# AI Skills / Tooling Registry (Standby List)

Reference list of external open-source AI agent frameworks, Claude Code plugins, and
adjacent tooling, kept here for future recall when a project phase actually needs one
of them. **None of these are installed, cloned, or wired into this app.** This file is
inert reference material only — it does not affect build, runtime, or CI behavior.

Verified 2026-07-20 by querying the GitHub API (`api.github.com/repos/<owner>/<repo>`)
for each URL. "Exists" confirms the repo is real and live; it does not confirm the
one-line description matches the repo's actual current functionality in depth — treat
the descriptions below as a starting pointer, not a vetted capability claim, and re-read
the README before adopting anything.

Two links from the original submitted list were dead on verification and are marked
below rather than silently dropped.

## Core agent frameworks & infrastructure
- The Agency (147-agent array) — https://github.com/msitarzewski/agency-agents
- 9Router (multi-provider local router) — https://github.com/decolua/9router
- OpenScience (research loop agent) — https://github.com/synthetic-sciences/openscience
- Context Engineering Intro — https://github.com/coleam00/context-engineering-intro
- Caveman (token optimization) — https://github.com/JuliusBrussee/caveman
- LibreChat (self-hosted multi-model chat UI) — https://github.com/danny-avila/LibreChat
- OpenClaw (personal AI assistant) — https://github.com/openclaw/openclaw
- Autoresearch (Karpathy, single-GPU research loop) — https://github.com/karpathy/autoresearch
- AI-Agents-for-Beginners (Microsoft, 12-lesson) — https://github.com/microsoft/AI-Agents-for-Beginners
- Awesome-llm-apps — https://github.com/Shubhamsaboo/awesome-llm-apps
- Hermes-agent (NousResearch) — https://github.com/NousResearch/hermes-agent
- Generic Agent — **DEAD LINK (404 as of 2026-07-20)** — https://github.com/lsdefine/Generic-Agent
- Evolver (GEP-powered self-evolving agent engine) — https://github.com/EvoMap/evolver
- MemPalace (Claude Code memory system) — https://github.com/MemPalace/mempalace

## Claude Code plugins & dev methodology
- Awesome Claude Code (directory) — https://github.com/hesreallyhim/awesome-claude-code
- Superpowers for Claude Code (TDD workflow) — https://github.com/obra/superpowers
  — **already active in this environment** as the `superpowers:*` skill plugin
  (see `.claude` skill invocations); not something to newly install.
- Everything Claude Code (135-agent array) — https://github.com/affaan-m/ECC
- Awesome Claude Skills — https://github.com/travisvn/awesome-claude-skills
- Andrej Karpathy CLAUDE.md skill — https://github.com/multica-ai/andrej-karpathy-skills
- Agent-skills (Addy Osmani) — https://github.com/addyosmani/agent-skills
- CC DevOps — **DEAD LINK (404 as of 2026-07-20)** — https://github.com/akin-ozer/cc-devops
- Skill Manager — https://github.com/buzhangsan/skill-manager
- Claude-mem (state persistence) — https://github.com/thedotmack/claude-mem
- Awesome Claude Skills (ComposioHQ) — https://github.com/ComposioHQ/awesome-claude-skills
- gstack (23 combined dev tools) — https://github.com/garrytan/gstack

## Domain-specific engineering (UI, mobile, web, data)
- Nango (API auth/sync) — https://github.com/NangoHQ/nango
- Ollama-powered OCR — https://github.com/imanoop7/Ollama-OCR
- Camofox Browser (stealth scraping) — https://github.com/jo-inc/camofox-browser
- Flowsint (OSINT mapping) — https://github.com/reconurge/flowsint

## Horizontal business / multimedia / functional
- AutoHedge (quant portfolio agents) — https://github.com/The-Swarm-Corporation/AutoHedge
- Vibe Trading — https://github.com/HKUDS/Vibe-Trading
- Fincept Terminal (Bloomberg alternative) — https://github.com/Fincept-Corporation/FinceptTerminal
- TradingAgents — https://github.com/TauricResearch/TradingAgents
- Open Higgsfield AI / Open-Generative-AI — https://github.com/Anil-matcha/Open-Generative-AI
- Open-LLM-VTuber — https://github.com/Open-LLM-VTuber/Open-LLM-VTuber
- Hyperframes (HTML to MP4) — https://github.com/heygen-com/hyperframes
- MoneyPrinterTurbo (video asset orchestration) — https://github.com/harry0703/MoneyPrinterTurbo
- VoxCPM (voice cloning) — https://github.com/OpenBMB/VoxCPM
- Agentic Inbox (Cloudflare) — https://github.com/cloudflare/agentic-inbox
- Claude Ads (ad account validator) — https://github.com/AgriciDaniel/claude-ads
- Presenton (presentation generator) — https://github.com/presenton/presenton
- Free LLM API Resources — https://github.com/cheahjs/free-llm-api-resources

## Notes for future recall
This app is Flutter/Dart on Firebase Spark (free tier, no paid APIs). Almost nothing
in this list ships a Flutter package or is directly embeddable in this codebase — most
are standalone Python/Node/Go agent runtimes, trading bots, or media pipelines meant to
run as separate services. Relevance triggers to watch for in *future* projects:
- A new project needs local multi-provider LLM routing/failover → revisit 9Router.
- A future project needs OCR on scanned documents → Ollama-OCR.
- A future integration needs third-party API auth/sync at scale → Nango.
- A future project is Node/Python-based and wants a broader agent framework →
  revisit The Agency, Hermes-agent, or Generic Agent's still-alive peers above.
None of these apply to the current Candy Core Flutter UI work or the STEM/STEAM
curriculum work completed this session.
