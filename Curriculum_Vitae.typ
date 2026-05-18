// ── Page & base text ─────────────────────────────────────────────────────────
#set page(paper: "a4", margin: (x: 1.5cm, y: 1.5cm))
#set text(font: "Charter", size: 10pt, lang: "en")

#set par(leading: 0.3em, spacing: 0pt)
#set list(
  indent: 0pt,
  body-indent: 5mm,
  spacing: 2mm,
)
#show list: set par(leading: 0.15em)

// ── Colours ───────────────────────────────────────────────────────────────────
#let c-rulegray = luma(64)
#let c-softgray = rgb("#E0E0E0")
#let c-cyan   = rgb("#BDEBFF")
#let c-lime   = rgb("#B8F5B5")
#let c-orange = rgb("#FFE1B8")
#let c-pink   = rgb("#F4C7D1")
#let c-purple = rgb("#E0C7EE")
#let c-yellow = rgb("#FFF7A8")

// ── Highlight helpers ─────────────────────────────────────────────────────────
#let cyan(body)   = highlight(fill: c-cyan,   body)
#let lime(body)   = highlight(fill: c-lime,   body)
#let oran(body)   = highlight(fill: c-orange, body)
#let pink(body)   = highlight(fill: c-pink,   body)
#let violet(body) = highlight(fill: c-purple, body)
#let yellow(body) = highlight(fill: c-yellow, body)
#let graytag(body) = box(fill: c-softgray, inset: (x: 1.3pt, y: 1.3pt), body)

// ── Layout helpers ────────────────────────────────────────────────────────────
#let cvsection(title) = {
  v(6mm)
  text(size: 14pt, weight: "bold", title)
  v(1mm)
  line(length: 100%, stroke: 0.5pt + c-rulegray)
  v(1mm)
}

// Two-line, two-column header row (left fills remaining, right auto-width)
#let rowheader(lt, rt, lb, rb) = grid(
  columns: (1fr, auto),
  align: (left, right),
  row-gutter: 1pt,
  strong(lt), strong(rt),
  emph(lb),   emph(rb),
)

// Education entry: uni + location on row 1, degree+year inline on row 2
#let eduentry(uni, location, year, degree, thesis, gpa) = block(breakable: false, {
  grid(
    columns: (1fr, auto),
    align: (left, right),
    strong(uni), strong(location),
  )
  v(0.5mm)
  emph[#degree, #year]
  v(0.5mm)
  emph[Thesis: #thesis]
  linebreak()
  [GPA: #gpa]
})

#let jobheader(lt, rt, lb, rb) = {
  v(4mm)
  rowheader(lt, rt, lb, rb)
  v(1.5mm)
}

// ═════════════════════════════════════════════════════════════════════════════
// Document
// ═════════════════════════════════════════════════════════════════════════════

// ── Header ────────────────────────────────────────────────────────────────────
#align(center)[
  #text(size: 28pt, weight: "bold")[ALEKSANDR PETROV]
  #v(2mm)
  #link("mailto:petrov@sanch.pet")[petrov\@sanch.pet]
  $dot$
  #link("https://www.linkedin.com/in/sanchpet/")[linkedin.com/in/sanchpet/]
  $dot$
  #link("https://github.com/sanchpet")[github.com/sanchpet]
  $dot$
  #link("https://t.me/sanchpet")[t.me/sanchpet]
]

// ── Professional Summary ──────────────────────────────────────────────────────
#cvsection("Professional Summary")

DevOps / Platform Engineer with 4 years building Kubernetes-based internal developer platforms at scale — from a 2000-engineer IDP at Russia's largest bank to a 30K-store retail network. Focused on GitOps, IaC, and full-stack observability; contributed to open-source Yandex Cloud Terraform providers. Currently expanding into MLOps infrastructure. Fluent in English, Spanish B2 (DELE), targeting international cloud-native roles.

// ── Work Experience ───────────────────────────────────────────────────────────
#cvsection("Work Experience")

// ---- DevOps Engineer -------------------------------------------------
#jobheader(
  [*DevOps Engineer*], [],
  [#link("https://magnit.tech")[Magnit Tech] — _electronic document management system for 30K+ store retail network_],
  [_Aug 2025 – Present_],
)

- Replaced manual RDP/PowerShell deployments with GitLab CI pipelines for Java and .NET microservices in 2 months with no prior handover — introducing GitFlow, multi-environment rollouts, and Nexus artifact management.
- Migrated 50+ CentOS 7 VMs to Rocky Linux 8 without data loss under an information security audit, extending OS support lifecycle to 2029.
- Replaced click-ops Yandex Cloud infrastructure with Terragrunt modules (per-environment state isolation), building custom wrappers with automated Vault secret provisioning; contributed to open-source Yandex Cloud Terraform modules.
- Containerized Tessa (.NET) platform from VMs to Kubernetes — introducing review environments, reducing deployment time, and cutting VM infrastructure costs.

// ---- DevOps Engineer ---------------------------------------------
#jobheader(
  [*DevOps Engineer*], [],
  [#link("https://sbertech.ru")[Sber Tech] — _Internal Developer Platform for 2000+ engineers, largest bank of Russia_],
  [_Aug 2024 – Aug 2025_],
)

- Built and maintained observability platform from zero for Kubernetes clusters (VictoriaMetrics, Loki, Tempo, Grafana) serving an Internal Developer Platform for 2000+ engineers
- Managed lifecycle of 5+ self-hosted Kubernetes clusters — upgrades, CNI and Ingress-Controller installations, capacity planning, and troubleshooting.
- Hardened Kubernetes security (SecurityContext, PodSecurityAdmission, NetworkPolicies, Keycloak OIDC), passing company-wide information security audit.
- Consolidated scattered Helm deployments into a unified GitOps mono-repo (ArgoCD), enabling consistent multi-environment rollouts for a team of 15 engineers.

// ---- System Engineer -------------------------------------------------
#jobheader(
  [*System Engineer*], [],
  [#link("https://sweb.ru")[SpaceWeb] — _bare-metal and cloud hosting provider_],
  [_Nov 2023 – Aug 2024_],
)

- Automated bare-metal OS provisioning via PXE/Cobbler with kickstart scripts, eliminating manual server setup
- Refactored Ansible playbooks for RHEL 7→9 migration; managed KVM virtualization at hosting scale
- Built S3-compatible storage with MinIO and a Python FastAPI service for bucket/user lifecycle management

// ---- Operations & Support Engineer ------------------------------------------
#jobheader(
  [*Operations & Support Engineer*], [],
  [#link("https://sweb.ru")[SpaceWeb] — _bare-metal and cloud hosting provider_],
  [_Jul 2021 – Nov 2023_],
)

- Managed infrastructure incidents, DNS zones, and DDoS mitigation; diagnosed and installed bare-metal servers (ipKVM/IPMI), cabled and commissioned datacenter racks; automated routine tasks with Bash scripts.
- Recognised 7× as best support engineer across the team.

// ── Open Source Projects (placeholder) ───────────────────────────────────────
// #cvsection("Open Source Projects")

#pagebreak(weak: true)
// ── Skills ────────────────────────────────────────────────────────────────────
#cvsection("Skills")

Kubernetes · Docker · Helm · ArgoCD · FluxCD · Kustomize · GitLab CI · GitHub Actions · Terraform · Terragrunt · Ansible · GitOps · Yandex Cloud · VictoriaMetrics · Prometheus · Loki · Tempo · Grafana · OpenTelemetry · Bash · Python · Golang · .NET · Nginx · PostgreSQL · S3 · Vault · AWS

// ── Education ─────────────────────────────────────────────────────────────────
#cvsection("Education")

#eduentry(
  [ITMO University], [Saint Petersburg, RU], [2025],
  [Master of Science in Computer Systems Networking & Telecommunications],
  [Development of the DBaaS platform architecture in a Kubernetes cluster],
  [5.0 / 5.0],
)

#v(3mm)

#eduentry(
  [ITMO University], [Saint Petersburg, RU], [2023],
  [Bachelor of Science in Computer & Information Systems Security],
  [Development of an automated phishing site search system on virtual hosting servers],
  [4.86 / 5.0],
)

// ── Languages ─────────────────────────────────────────────────────────────────
#cvsection("Languages")

#strong[English] — Fluent #h(1em) #strong[Spanish] — Intermediate (DELE B2) #h(1em) #strong[Russian] — Native
