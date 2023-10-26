
# 📝 Action Validate GitHub Action: Demo Notes (condensed)

## 🎯 Introduction

**Team:** Enterprise Contract Team  
**Meeting:** RHTAP Demo bi-weekly (26 Oct 2023)
**Author:** Sean Conroy 
**Purpose:** EC Validate is a GitHub Action designed to integrate the validation capabilities of the Enterprise Contract CLI into your GitHub Workflow.  
**Use Case:** Can be added to build pipelines or any other GitHub workflows.  
🌱 **For Beginners:** If you're not familiar with GitHub workflows, think of it like a Tekton Pipeline.

## 🛠 The Action

- **Type:** Composite action
- **Container:** Uses the same container image as the Tekton Task.
- **Inputs:** Offers straightforward input options.
- **Extra Param:** Allows for additional CLI references like `--ignore-rekor`.
- **Output:** Utilizes GitHub's output summary for quick status checks.

## 🌟 Example Pipeline

### 🚀 Initial Steps:

1. Build the image using Buildah.
2. Push the image to ghcr.
3. Digitally sign the image using OpenID Connect (OIDC) and GitHub token.
4. Generate a Software Bill of Materials (SBOM) and add attestation using Cosign.
5. Use SLSA tooling for provenance information.

### 🛡 EC Validate:

- **Purpose:** Validates the container image for security and compliance.
- **When:** Run at the end of the pipeline.
- **Inputs:**
  - **Identity:** Entity that produced the image signature (SLSA GitHub Generator, repository owner).
  - **Issuer:** OIDC issuer (GitHub's token).
  - **Policy:** GitHub-default policy.

**Outcome:** If successful, the image is promoted to 'latest'.

### 🎉 Demo Conclusion:

Run the image and show GitHub step summary output.

---

🛒 **See us on GitHub Marketplace:** [EC Validate on GitHub Marketplace](https://github.com/marketplace/actions/ec-validate)

📖 **Read the Blog Post:** [Enterprise Contract Blog](https://enterprisecontract.dev/posts/)
'''
