# **DataBrain Sovereignty**

**Empowering individuals to retain full control over their neurodata.**  
Sovereign, decentralized, and revocable consent management across all data interactions.

---

## 🛡️ Key Features
- **Sovereign user data ownership model**
- **Granular consent configuration**: who, what, how long
- **Immutable traceability and audit trail** of data access via blockchain
- **Smart licenses** that enforce ethical and temporal data usage policies
- **Vault-based architecture** for personal data encapsulation
- **BrainOID**: semantic identifiers for datasets and models
- **Compliant** with EU data regulations and future neuro-rights frameworks

---

## ⚙️ Current Prototype: Version 1.0 - "Sovereign Permission Layer"

- **Blockchain-based consent ledger**:  
  Using [Ganache](https://trufflesuite.com/ganache/) and [Hardhat](https://hardhat.org/), we simulate a decentralized environment for registering and auditing data permissions.
  
- **Python AI agents** manage:
  - Permission issuance
  - Consent revocation
  - Audit and monitoring of data interactions
  
- **Web3 integration**:
  - Agents connect directly to the local blockchain.
  - Every data access is registered as a verifiable on-chain transaction.

---

## 📦 Repository Structure

```plaintext
/contracts/        # Smart contracts (Solidity)
/scripts/          # Deployment and interaction scripts (Python + Web3.py)
/agents/           # Sovereignty Agents: PermissionAgent, BlockchainAgent, etc.
/data/logs/        # Temporary logs (only for local debugging)
/README.md         # Project documentation
```

---

## 🛠️ How to Run (Development Mode)

1. **Start Ganache**  
   ```bash
   npx ganache-cli
   ```
   
2. **Deploy Smart Contracts**  
   (Coming soon — deployment scripts in `/scripts/`)
   
3. **Run Sovereignty Agents**  
   ```bash
   python3 main.py
   ```

---

## 🚀 Roadmap

- [x] Build prototype with real blockchain connection
- [ ] Expand smart contract with more metadata (expiry dates, revocation)
- [ ] Add ResearchAgent, MemoryAgent, MonitorAgent
- [ ] Enable user vault management
- [ ] Move to L2 solutions or decentralized ID providers (PolygonID, zk-SNARKs)

---

## 🤝 Contributing

We welcome collaborators!  
Please open an issue or pull request if you want to contribute ideas, code, or testing.

---

Fundación de Neurociencias — 2025

---
