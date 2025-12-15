# 🛡️ [JHJ] | Security Portfolio

정보 보안 포트폴리오

---

## 📞 Contact & Channels

| Channel | Link |
| :--- | :--- |
| 📧 **Email** | [hjmscs4@gmail.com] |
| 📝 **Blog** | [준비중] |

[![Linux](https://img.shields.io/badge/OS-Linux-FCC624?logo=linux&logoColor=black)](https://www.linux.org/)
[![Windows](https://img.shields.io/badge/OS-Windows-0078D6?logo=windows&logoColor=white)](https://www.microsoft.com/)
[![AWS](https://img.shields.io/badge/Cloud-AWS-232F3E?logo=amazon-aws&logoColor=white)](https://aws.amazon.com/)
[![Docker](https://img.shields.io/badge/Infra-Docker-2496ED?logo=docker&logoColor=white)](https://www.docker.com/)
[![Wireshark](https://img.shields.io/badge/Tool-Wireshark-1679A7?logo=wireshark&logoColor=white)](https://www.wireshark.org/)
---

## 🛠️ Technical Skills

*   **Cloud & Infrastructure:** Azure (VNet, Firewall, VPN), Terraform, Docker, Kubernetes
*   **Security & Forensics:** Metasploit, Wireshark, Snort, Chainsaw, Nessus, OpenVAS
*   **System & Network:** Linux (CentOS/Ubuntu), Windows Server, TCP/IP, Shell Scripting
*   **Tools:** Git, Notion/Excel(Documentation)

---

## 📰 Security News Analysis & Solutions

보안 이슈 스크랩

| 📅 작성일 | 🎯 분석 주제 (Title) | 🛡️ 핵심 분석 및 제안 (Key Solution) | 🔗 링크 |
| :--- | :--- | :--- | :--- |
| | | |


---

## 🧪 핵심 프로젝트 Key Projects

실제 수행한 실습

### [Project 1] Chainsaw 기반 윈도우 이벤트 로그 포렌식 및 취약점 분석
> **도구의 신뢰성 검증부터 데이터 가공까지, 엔지니어의 시각으로 분석**

*   **개요:** 침해 사고 분석 도구인 Chainsaw와 Sigma Rule을 활용하여 대용량 Windows 이벤트 로그(EVTX)에서 공격 징후를 탐지하고 상세 분석 보고서 작성
*   **나의 역할 (100%):** 환경 구축, 도구 검증, 로그 분석, 트러블슈팅, 보고서 작성
*   **주요 성과 & 해결 과정:**
    *   **[보안 검증]** 도구 다운로드 시 백신 탐지 발생 → 무시하지 않고 **CVE-2022-23307(Log4j)** 관련 이슈임을 파악, GitHub Issue 분석을 통해 오탐(False Positive) 및 안전성을 검증 후 진행
    *   **[트러블슈팅]** CSV 결과 파일의 한글 깨짐 현상 발생 → 인코딩 문제임을 식별하고 Notepad++를 활용해 UTF-8 변환하여 해결
    *   **[분석]** Pass-the-Hash, 권한 상승 등 5건의 핵심 위협 이벤트 탐지 및 **MITRE ATT&CK** 프레임워크 기반 분석 수행
*   **산출물:** [취약점 분석 결과 보고서 PDF 링크]

### [Project 2] Azure 하이브리드 클라우드 보안 인프라 구축
> **온프레미스와 클라우드를 잇는 보안 아키텍처 설계 및 자동화**

*   **개요:** 기업 환경을 가정한 Hub & Spoke 네트워크 아키텍처 설계 및 Azure-OnPremise 간 VPN 연결 구현
*   **주요 기술:** Azure VNet, VPN Gateway(IPsec/IKEv2), Terraform, StrongSwan
*   **주요 성과:**
    *   **Terraform**을 활용한 인프라(VM, Network) 자동 배포 환경(IaC) 구현
    *   Azure Firewall 및 NSG를 서브넷 단위로 적용하여 트래픽 제어 강화
    *   StrongSwan을 이용한 **Site-to-Site VPN** 구축 중 IKEv2 프로토콜 협상 오류 해결 및 연결 성공

### [Project 3] 리눅스 서버 보안 취약점 자동 점검 스크립트 개발
> **반복적인 점검 업무 자동화로 효율성 증가**

*   **개요:** KISA 주요정보통신기반시설 기술적 취약점 가이드를 기반으로 리눅스 서버의 보안 설정(U-01~U-06)을 자동 진단하는 Shell Script 개발
*   **주요 성과:**
    *   Root 원격 접속 제한, 패스워드 복잡성 등 핵심 항목에 대한 자동 진단 로직 구현
    *   `sed`, `awk`를 활용한 설정 파일 파싱 및 컬러링 된 결과 리포트 출력으로 가독성 확보
*   **Code:** [GitHub 소스 코드 링크]


---

## 📜 교육 이수 및 보유 자격증 Certifications & Education

* **정보처리기사 필기** | 한국산업인력공단 (2025.09)
* **CCNA (Cisco Certified Network Associate)** | Cisco (2025.09)
* **Linux Master 2급** | 한국정보통신진흥협회 (2025.10)
* **[Microsoft] Cyber Security School 수료 ** | [경기인력개발원] (2025.05 - 2025.12)

---

## 5. 📝 TIL (Today I Learned) & Docs
> **6개월간 하루도 빠짐없이 기록한 성장의 증거**



