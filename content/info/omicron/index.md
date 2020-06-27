---
title: 'Omicron'
date: 2020-05-24T15:14:39+10:00
weight: 5
---

Rather than focusing on building a single-domain task solver, Omicron agents provide developers with a core agent architecture that supports integration with third-party task solvers through Mechanisms. The core architecture is composed of an **Agent** class, a memory graph called **Omnigraph**, an **Agenda** and **AgendaProcessor**, and **Mechanisms** which are categorized into **InputMechanisms**, **OutputMechanisms**, and **InternalMechanisms**. 

The agents memory and agenda are handled through built in InternalMechanisms as part of the core architecture, but can be extended or replaced by custom IntenalMechanism implementations. 

More information coming soon. 