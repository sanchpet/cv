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

DevOps Engineer with 4 years of production experience in Kubernetes, CI/CD automation, and infrastructure observability. Worked across retail, banking, and hosting at significant scale.

// ── Work Experience ───────────────────────────────────────────────────────────
#cvsection("Work Experience")

// ---- Middle DevOps Engineer -------------------------------------------------
#jobheader(
  [*DevOps Engineer*], [],
  [#link("https://magnit.tech")[Magnit Tech] — _electronic document management system for 30K+ store retail network_],
  [_Aug 2025 – Present_],
)

- Designed and automated GitLab CI pipelines for building and deploying a distributed application comprising 15+ Java microservices, reducing deployment lead time by 30%.
- Implemented infrastructure management and deployment automation using Terraform, Ansible, and ArgoCD on Kubernetes clusters hosted in Yandex Cloud.
- Defined pipeline standards, deployment gates, and rollback procedures for a 15+ microservice ecosystem, reducing cross-team release friction.

#v(1mm)
*Tech Stack:* Kubernetes, GitLab CI/CD, Terraform, Java, .NET, Docker, Yandex Cloud, ArgoCD, Ansible, PostgreSQL, Windows Server.

// ---- Middle Operations Engineer ---------------------------------------------
#jobheader(
  [*DevOps Engineer*], [],
  [#link("https://sbertech.ru")[Sber Tech] — _Internal Developer Platform for 2000+ engineers, largest bank of Russia_],
  [_Aug 2024 – Aug 2025_],
)

- Developed and maintained observability platform for Kubernetes clusters using VictoriaMetrics, Loki, and Tempo, improving system monitoring and fault detection.
- Enhanced Kubernetes security by enforcing SecurityContext hardening, PodSecurityAdmission controls, NetworkPolicies, and integrated OIDC authentication via Keycloak.
- Implemented Helm-based application lifecycle management with GitOps workflows using ArgoCD, Jenkins, and Nexus artifact repositories.

#v(1mm)
*Tech Stack:* Kubernetes, Helm, ArgoCD, VictoriaMetrics, Loki, Tempo, Grafana, Jenkins, Ansible, Nexus, SonarQube, BitBucket, Keycloak.

// ---- Junior System Engineer -------------------------------------------------
#jobheader(
  [*System Engineer*], [],
  [#link("https://sweb.ru")[SpaceWeb] — _local cloud hosting provider_],
  [_Nov 2023 – Aug 2024_],
)

- Managed KVM virtualization: performed diagnostics, migrations, and client/infrastructure VM installation; refactored Ansible playbooks automating service migration from RHEL7 to RHEL9.
- Deployed and maintained local S3-compatible storage using MinIO and developed a Python FastAPI service for bucket/user management.
- Implemented PXE-based OS installation system with Cobbler, authored kickstart scripts, and maintained OS images on bare-metal servers.
- Set up Kubernetes-based DBaaS infrastructure comprising VictoriaMetrics, Alertmanager, Loki, and Grafana, supporting deployment and monitoring.

// ---- Operations & Support Engineer ------------------------------------------
#jobheader(
  [*Operations & Support Engineer*], [],
  [#link("https://sweb.ru")[SpaceWeb] — _local cloud hosting provider_],
  [_Jul 2021 – Nov 2023_],
)

- Monitored infrastructure and responded to incidents, managed DNS zones, mitigated DDoS attacks via Bash scripts, and provided LAMP/LEMP support; recognized 7 times as best support engineer.

// ── Skills ────────────────────────────────────────────────────────────────────
#cvsection("Skills")

Kubernetes · Docker · Helm · ArgoCD · FluxCD · Kustomize · GitLab CI · GitHub Actions · Jenkins · Terraform · Ansible · GitOps · Yandex Cloud · AWS · VictoriaMetrics · Prometheus · Loki · Grafana · Alloy · Tempo · OpenTelemetry · ELK · Bash · Python · Golang · Nginx · Traefik · HAProxy · PostgreSQL · S3 · Keycloak · Vault · Consul · SonarQube

#pagebreak(weak: true)
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

#rowheader([English], [], [Fluent], [])
#rowheader([Spanish], [], [Intermediate (DELE B2)], [])
#rowheader([Russian], [], [Native], [])
