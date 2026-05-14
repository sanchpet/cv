// ── Page & base text ─────────────────────────────────────────────────────────
#set page(paper: "a4", margin: (x: 1.5cm, y: 1.5cm))
#set text(font: "Charter", size: 10pt, lang: "en")
// If "Charter" is not found, try "Bitstream Charter" or remove the font line
// to fall back to Typst's default (New Computer Modern).

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
]

// ── Professional Summary ──────────────────────────────────────────────────────
#cvsection("Professional Summary")

Experienced DevOps and Cloud Infrastructure Engineer specializing in Kubernetes orchestration, CI/CD automation, and cloud-native solutions. Proven track record of building scalable microservices deployment pipelines and enhancing infrastructure observability with modern tools. Strong background in automation with Ansible, Terraform, and GitOps. Skilled in Golang, Python, and multi-platform environment management.

// ── Work Experience ───────────────────────────────────────────────────────────
#cvsection("Work Experience")

// ---- Middle DevOps Engineer -------------------------------------------------
#jobheader(
  [*Middle DevOps Engineer*], [*Saint Petersburg, RU*],
  [#link("https://magnit.tech")[Magnit Tech] — _tech team of Russia's largest retailer with 30K+ stores_],
  [_Aug 2025 – Present_],
)

- Designed and automated GitLab CI pipelines for building and deploying a distributed application comprising 15+ Java microservices, reducing deployment lead time by 30%.
- Implemented infrastructure management and deployment automation using Terraform, Ansible, and ArgoCD on Kubernetes clusters hosted in Yandex Cloud.
- Collaborated with cross-functional teams to improve CI/CD reliability and application stability across multi-cloud environments.

#v(1mm)
*Tech Stack:* Kubernetes, GitLab CI/CD, Terraform, Java, .NET, Docker, Yandex Cloud, ArgoCD, Ansible, PostgreSQL, Windows Server.

// ---- Middle Operations Engineer ---------------------------------------------
#jobheader(
  [*Middle Operations Engineer*], [*Saint Petersburg, RU*],
  [#link("https://sbertech.ru")[Sber Tech] — _tech team of the largest bank of Russia_],
  [_Aug 2024 – Aug 2025_],
)

- Developed and maintained observability platform for Kubernetes clusters using VictoriaMetrics, Loki, and Tempo, improving system monitoring and fault detection.
- Enhanced Kubernetes security by enforcing SecurityContext hardening, PodSecurityAdmission controls, NetworkPolicies, and integrated OIDC authentication via Keycloak.
- Implemented Helm-based application lifecycle management with GitOps workflows using ArgoCD, Jenkins, and Nexus artifact repositories.

#v(1mm)
*Tech Stack:* Kubernetes, Helm, ArgoCD, VictoriaMetrics, Loki, Tempo, Grafana, Jenkins, Ansible, Nexus, SonarQube, BitBucket, Keycloak.

// ---- Junior System Engineer -------------------------------------------------
#jobheader(
  [*Junior System Engineer*], [*Saint Petersburg, RU*],
  [#link("https://sweb.ru")[SpaceWeb] — _local cloud hosting provider_],
  [_Nov 2023 – Aug 2024_],
)

- Managed KVM virtualization: performed diagnostics, migrations, and client/infrastructure VM installation; refactored Ansible playbooks automating service migration from RHEL7 to RHEL9.
- Deployed and maintained local S3-compatible storage using MinIO and developed a Python FastAPI service for bucket/user management.
- Implemented PXE-based OS installation system with Cobbler, authored kickstart scripts, and maintained OS images on bare-metal servers.
- Set up Kubernetes-based DBaaS infrastructure comprising VictoriaMetrics, Alertmanager, Loki, and Grafana, supporting deployment and monitoring.

#v(1mm)
*Tech Stack:* Ansible, Kubernetes, Grafana, VictoriaMetrics, Loki, S3, Docker, GitLab, Apache, Nginx, Bash, Python, KVM, libvirt, Nagios, Puppet, PXE, SVN, IPMI/ipKVM.

// ---- Operations Engineer ----------------------------------------------------
#jobheader(
  [*Operations Engineer*], [*Saint Petersburg, RU*],
  [#link("https://sweb.ru")[SpaceWeb] — _local cloud hosting provider_],
  [_Sep 2022 – Nov 2023_],
)

- Performed active monitoring and incident response; installed bare-metal servers using PXE; managed DNS zones and mitigated DDoS attacks through custom Bash scripts.

// ---- Support Engineer -------------------------------------------------------
#jobheader(
  [*Support Engineer*], [*Saint Petersburg, RU*],
  [#link("https://sweb.ru")[SpaceWeb] — _local cloud hosting provider_],
  [_Jul 2021 – Sep 2022_],
)

- Provided LAMP/LEMP stack troubleshooting for client websites, handled mail and DNS diagnostics; recognized 7 times as best support engineer for outstanding performance.

#v(3mm)

// ── Core Skills ───────────────────────────────────────────────────────────────
#cvsection("Core Skills")

*Containers & Orchestration:* Kubernetes, Docker, Helm, ArgoCD, FluxCD, Kustomize \
*CI/CD & Version Control:* Git, GitLab CI, GitHub Actions, Jenkins, SonarQube \
*Infrastructure as Code & Automation:* Ansible, Terraform, GitOps principles \
*Observability & Monitoring:* VictoriaMetrics, Prometheus, Loki, ELK Stack, Grafana, Alloy, Tempo \
*Programming & Scripting:* Bash, Python, Golang, Java, .NET \
*Load Balancing & Proxies:* Nginx, Traefik, HAProxy \
*Other Technologies:* PostgreSQL, S3, Keycloak, Vault, Consul

// ── Education ─────────────────────────────────────────────────────────────────
#cvsection("Education")

#rowheader(
  [ITMO University], [Saint Petersburg, RU],
  [Master of Science in Computer Systems Networking & Telecommunications], [2025],
)
_Thesis: Development of the DBaaS platform architecture in a Kubernetes cluster_

GPA: 5.0 / 5.0

#v(3mm)

#rowheader(
  [ITMO University], [Saint Petersburg, RU],
  [Bachelor of Science in Computer & Information Systems Security], [2023],
)
_Thesis: Development of an automated phishing site search system on virtual hosting servers_

GPA: 4.86 / 5.0

// ── Languages ─────────────────────────────────────────────────────────────────
#cvsection("Languages")

#rowheader([English], [], [Fluent], [])
#rowheader([Spanish], [], [Intermediate (DELE B2)], [])
#rowheader([Russian], [], [Native], [])
