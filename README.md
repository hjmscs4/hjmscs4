# 🛡️ [JHJ] | Security Portfolio

정보 보안 포트폴리오

<br/>

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

<br/>

---

## 🛠️ Technical Skills

**1. Cloud Security & Infrastructure (Azure)**
*   Infrastructure: Azure VNet, Subnet, Peering 설계를 통한 Hub & Spoke 네트워크 구축 경험
*   Security: Azure Firewall, NSG(Network Security Group), App Gateway(WAF), DDoS Protection 구성 및 운영
*   IaC: Terraform을 활용한 VM, Network, DB 리소스 자동 배포 및 State 관리, 모듈화 경험
*   Management: VMSS(Auto Scaling), Load Balancer, Bastion Host 구성 및 트래픽 분산 처리

<br/>

**2. System & Network Security**
*   Linux/Windows: CentOS/Rocky/Ubuntu 및 Windows Server(AD, IIS, DNS, DHCP) 구축 및 보안 설정(Hardening)
*   Network: TCP/IP, OSI 7 Layer 심층 분석, Wireshark를 이용한 패킷 분석 및 트러블슈팅
*   Firewall/VPN: Secui BLUEMAX NGF 운용, StrongSwan을 활용한 Site-to-Site IPsec VPN(IKEv2) 및 Hybrid Cloud 네트워크 구축
*   Encryption: OpenSSL/PKI 기반 사설 인증서(Root CA) 발급 및 관리, SSH 터널링 기법 활용

<br/>

**3. Offensive Security (Red Teaming)**
*   Vulnerability Assessment: Nessus, OpenVAS(GVM)를 활용한 자산 취약점 스캐닝 및 CVSS 기반 위험도 분석
*   Pentesting: Metasploit, Hydra, Burp Suite를 활용한 시스템/웹(SQLi, XSS, File Upload) 모의해킹 및 Exploit 시나리오 수행
*   Forensics: Chainsaw, NetworkMiner를 활용한 침해 사고 로그 분석(Windows Event Log) 및 공격 징후 탐지

<br/>

**4. Container & Orchestration**
*   Docker: Dockerfile 작성, Image Layer 관리, Volume/Network 설정 및 컨테이너 서비스(Web/DB) 연동
*   Kubernetes: Kubeadm 클러스터 구축, Pod/Deployment/Service 관리, Ingress/MetalLB를 통한 트래픽 제어, Calico CNI 구성

<br/>

**5. DevSecOps & Automation**
*   Scripting: Bash Shell Script를 활용한 시스템 보안 설정 자동화(KISA 가이드 기반) 및 백업/복구 스크립트 작성
*   Development: C언어 기반 시스템 프로그래밍(Socket, Process, Thread), Secure Coding 원리 이해

<br/>

---

## 📰 Security News Analysis & Solutions

보안 이슈 스크랩

| 📅 작성일 | 🎯 분석 주제 (Title) | 🛡️ 핵심 분석 및 제안 (Key Solution) | 🔗 링크 |
| :--- | :--- | :--- | :--- |
| | | |

<br/>

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
*   **보고서:** [Project/Project 1_chainsaw/Chainsaw의 예제 파일과 AI를 활용한 취약점 분석 보고서.pdf]

### [Project 2] Azure 하이브리드 클라우드 보안 인프라 구축
> **온프레미스와 클라우드를 잇는 보안 아키텍처 설계 및 자동화**

*   **개요:** 기업 환경을 가정한 Hub & Spoke 네트워크 아키텍처 설계 및 Azure-OnPremise 간 VPN 연결 구현
*   **주요 기술:** Azure VNet, VPN Gateway(IPsec/IKEv2), Terraform, StrongSwan
*   **주요 성과:**
    *   **Terraform**을 활용한 인프라(VM, Network) 자동 배포 환경(IaC) 구현
    *   Azure Firewall 및 NSG를 서브넷 단위로 적용하여 트래픽 제어 강화

### [Project 3] 리눅스 서버 보안 취약점 자동 점검 스크립트 개발
> **반복적인 점검 업무 자동화로 효율성 증가**

*   **개요:** KISA 주요정보통신기반시설 기술적 취약점 가이드를 기반으로 리눅스 서버의 보안 설정(U-01~U-06)을 자동 진단하는 Shell Script 개발
*   **주요 성과:**
    *   Root 원격 접속 제한, 패스워드 복잡성 등 핵심 항목에 대한 자동 진단 로직 구현
    *   `sed`, `awk`를 활용한 설정 파일 파싱 및 컬러링 된 결과 리포트 출력으로 가독성 확보
*   **Code:** [GitHub 소스 코드 링크]

### [Project 4] 시스템 취약점 분석 보고서
> **Rapid7 metasploit3를 활용한 취약점 분석**

*   **개요:** 시스템의 취약점 확인 방법과, 그 취약점을 이용해 외부 접근 및 모의공격 진행, 시스템 취약점 보완 과정 기술
*   **주요 성과:**
    *   취약점 분석 도구와 공격 도구를 활용한 취약점 확인 및 보완 과정 습득
    *   CTF 플래그를 찾아내며 다양한 파일 변환 방식 확인
*   **보고서:** [Project/Project 4_rapid7 metasploit3/시스템 모의해킹 보고서.pdf]

<br/>

---


## 📜 교육 이수 및 보유 자격증 Certifications & Education

* **정보처리기사·산업기사 필기** | 한국산업인력공단 (2025.09)
* **CCNA (Cisco Certified Network Associate)** | Cisco (2025.09)
* **Linux Master 2급** | 한국정보통신진흥협회 (2025.10)
* **네트워크관리사 2급** | 한국정보통신자격협회 (2025.07)
* **정보기기운용기능사** | 한국산업인력공단 (2016.07)
* **[Microsoft] Cyber Security School 수료** | 경기인력개발원 (2025.05 - 2025.12)

<br/>

---

## 📝 TIL (Today I Learned) & Docs
> **6개월간 하루도 빠짐없이 기록한 성장의 증거**


| 일자 | 내용 |
| :--- | :--- |
| 5/28 | 독립적 프로세스 간 통신을 위한 IPC의 개념과 필요성, 버퍼링 모델(Bounded/Unbounded) 및 공유 메모리·메시지 패싱 기법의 구조적 차이 학습 |
| 5/29 | 운영체제 핵심인 커널의 인터페이스 역할과 물리적·추상적 자원(CPU-Task, 메모리-Page 등) 매핑 및 관리 구조 이해, CMD 내·외부 명령어의 구분 및 배치 파일·링크(mklink) 활용법과 리눅스 실행 권한(chmod)의 차이, 쉘 간(CMD↔PowerShell) 명령어 교차 실행 방법 학습 |
| 5/30 | 리눅스 계정 생성 원리(/etc/passwd, shadow 구조) 및 파일 권한(chmod)과 소유권(chown) 관리 체계 학습 |
| 6/2 | CLI(wget, curl)와 GUI(브라우저) 다운로드 방식의 차이점 비교 및 자동화·대량 처리에 최적화된 터미널 도구의 효율성 학습 |
| 6/4 | 네트워크 규모(LAN/MAN/WAN)와 전송 매체(구리/광)의 특성, TCP/IP 프로토콜의 신뢰성 메커니즘, 그리고 이더넷(IEEE 802.3) 및 CSMA/CD 등의 LAN 기술 표준과 토폴로지 개념 학습 |
| 6/10 | 리눅스 패키지 관리(yum/dnf) 및 원격 접속의 개념을 익히고, 보안 강화를 위한 SSH 포트 변경과 ssh-keygen을 이용한 키 생성 실습 |
| 6/11 | mailx 명령어를 이용한 메일 전송 실습과 /etc/bashrc 파일 수정을 통해 쉘 프롬프트에 전체 경로가 표시되도록 환경 변수를 설정하는 방법 학습 |
| 6/12 | systemd-preset 설정 경로 확인 및 디스크, 파티션, 볼륨으로 구분되는 저장소 계층 구조와 메모리 개념 학습 |
| 6/13 | WSL과 Hyper-V의 가상화 방식 및 자원 효율성 차이를 비교하고, systemctl을 이용한 계층적 서비스 관리와 외부 패키지 저장소 활용법 학습 |
| 6/16 | Hyper-V 가상화 구축과 RPM 패키지 조회, 절대 경로 및 파이프(|)를 활용한 tar 아카이빙 심화 기법, 그리고 make 컴파일 단계와 쉘 변수 및 Alias 설정법 학습 |
| 6/17 | nmtui와 nmcli를 이용한 네트워크 설정 실습, Wireshark를 활용한 ICMP 패킷 구조 및 보안 위협(DDoS, Spoofing) 분석, 그리고 리눅스 프로세스 메모리(pmap) 관리 학습 |
| 6/18 | CentOS 9 시간 동기화(Chronyd) 및 시스템 로그 분석(journalctl) 방법과 Nmap·OWASP ZAP 등 보안 진단 도구 기초, 그리고 NFS/Samba를 이용한 네트워크 파일 공유 기술 학습 |
| 6/19 | UTP 케이블 표준(T568B) 이해 및 리눅스-윈도우 파일 공유를 위한 Samba 서버 구축과 configure, make를 이용한 소스 코드 컴파일 설치 방법 학습 |
| 6/20 | /etc/sudoers 권한 설정 및 Hyper-V 환경에서의 Samba 연동(Firewall/SELinux)과 Bash 스크립트를 이용한 사용자 계정 자동 생성 및 관리 실습 |
| 6/23 | 그룹 프로젝트를 위한 리눅스 멀티 서버 구축 설계와 MySQL 설치 및 초기 보안 설정(임시 비밀번호 확인, 권한 부여), 그리고 Workbench를 이용한 원격 접속 환경 구성 학습 |
| 6/24 | OSI 7계층 및 TCP/IP 모델의 각 계층별 역할과 프로토콜, IP/MAC 주소 체계와 서브네팅, 그리고 Wireshark를 이용한 3-Way Handshake 분석 등 네트워크 통신 이론 전반 학습 |
| 6/25 | 가상 네트워크 스위치 구성 및 리눅스 시스템 격리를 위한 chroot 환경 구축과 ldd를 이용한 라이브러리 의존성 분석, 그리고 SFTP 등 보안 파일 전송 프로토콜의 특징 학습 |
| 6/26 | journalctl을 이용한 시스템 로그 분석과 파일 보안 속성(chattr) 관리를 익히고, BIND를 활용한 DNS 서버 구축(정방향/역방향 Zone 및 방화벽 설정) 실습 |
| 6/27 | OSI 7계층별 네트워크 장비(Switch/Router)의 동작 원리와 IPv6 및 서브네팅(CIDR) 개념을 익히고, netsh, arp, route 등을 활용한 네트워크 설정 및 트러블슈팅 실습 |
| 7/1 | 라우터의 내부 구조(RAM/NVRAM/Flash)와 부팅 프로세스를 이해하고, Cisco IOS의 CLI 모드별 필수 명령어(호스트명·비밀번호·인터페이스 설정 및 저장) 학습 |
| 7/2 | 데이터베이스 커넥션 풀(DBCP)의 효율성을 이해하고, MySQL의 필수 쿼리(CRUD) 및 다양한 JOIN 기법(Inner/Outer)을 활용한 관계형 데이터 조작 실습 |
| 7/3 | UTP/FTP/STP 등 케이블 차폐 종류와 PoE 및 MDI/MDI-X 결선 방식을 이해하고, 라우터 복구를 위한 ROMMON 모드와 인터페이스 상태 지표(MTU/BW) 학습 |
| 7/4 | MySQL 데이터 백업 및 복원(Import/Export) 실습과 MySQL 내장 방화벽 설정, 그리고 SELinux 및 상용 방화벽(Secui) 등 다양한 보안 솔루션의 개념 학습 |
| 7/7 | Apache 웹서버 구축 및 설정(httpd.conf) 분석, 소스 코드 컴파일 설치(configure, make)와 systemd 서비스 수동 등록 방법, 그리고 NAS·블레이드 서버 등 인프라 하드웨어 개념 학습 |
| 7/8 | Kali Linux 환경 설정 및 주요 해킹 도구(Metasploit, DVWA) 소개, NIS+/LDAP 등 디렉터리 서비스의 개념과 Apache 웹 서버 설정 파일(httpd.conf) 분석 및 해시 알고리즘(SHA-256) 학습 |
| 7/9 | ssh-keygen을 이용한 비대칭 키(Public/Private) 생성 원리와 authorized_keys 등 SSH 설정 파일 분석, 그리고 ssh-copy-id를 활용한 키 기반 인증 및 배포 실습 |
| 7/14 | 방화벽 및 IDS/IPS의 세대별 발전 단계와 하드웨어 구성을 이해하고, Secui BLUEMAX NGF의 초기 구축(Console/CLI 초기화)부터 GUI 기반 보안 정책(Policy/Object) 및 NAT 설정 실습 |
| 7/15 | 방화벽 운영 모드(Bridge/Router)의 차이점 이해 및 구축 실습과 NAT 심화 기술(Reverse/PAT), 그리고 DMZ Zone 구성을 통한 내·외부망 접근 제어 학습 |
| 7/16 | 동적 라우팅 프로토콜 설정(network 명령)과 스위칭 방식(Cut-through) 및 STP(PortFast)의 원리를 익히고, KISA/NIST 가이드를 참고한 패스워드 암호화 등 장비 보안 설정 학습 |
| 7/17 | 방화벽 고가용성(HA) 확보를 위한 장비 이중화 및 가상 IP(VIP) 연동 실습과 데이터 암호화 통신을 위한 IPsec VPN(IKE/터널링) 구축 기술 학습 |
| 7/18 | MS Azure 클라우드와 온프레미 방화벽(Secui NGF) 간의 Site-to-Site IPsec VPN 연동 및 보안 정책 설정(Cloud Shell) 실습과 하이브리드 네트워크 구성 미니 프로젝트 수행 |
| 7/21, 7/22 | 주요 프로토콜(FTP/HTTP/SMTP) 이론을 바탕으로 BLUEMAX NGF의 L7 보안 기능(App 제어, 웹 필터, DLP, 안티바이러스)을 활용한 콘텐츠 기반 위협 차단 및 데이터 유출 방지 실습 |
| 7/23 | 라우터 및 스위치의 설정 파일 관리(erase와 delete의 차이, 텍스트 일괄 적용)와 OSPF의 계층적 구조(Backbone Area, ABR) 및 루프백 인터페이스의 동작 특성 학습 |
| 7/24 | OSPF 라우팅 프로토콜 심화(재분배/AD값) 및 트래픽 제어를 위한 ACL(Standard/Extended) 설정, 스위치 VLAN/Trunk 구성과 라우터 기반 NAT(PAT) 및 DHCP 서버 구축 실습 |
| 7/25 | 라우터 서브 인터페이스(802.1Q)를 활용한 Inter-VLAN 구성과 L3 스위치의 라우팅 활성화(ip routing) 및 SVI·Routed Port(no switchport) 설정 실습 |
| 8/5 | 무선 LAN 표준(802.11) 및 주파수 대역별 특성을 이해하고, AAA 인증을 적용한 엔터프라이즈 무선 네트워크 구성과 대역폭 확장을 위한 LACP(Link Aggregation) 기술 학습 |
| 8/6 | LDAP/AD/389 DS 등 디렉터리 서비스를 활용한 계정 중앙 관리(Centralized Management) 개념과 LDIF 파일을 이용한 사용자 데이터 운용 방법 학습 |
| 8/7 | AZ-700 교육 과정을 기반으로 한 Azure 가상 네트워크(VNet) 설계 및 로드 밸런싱(L4/L7) 차이점 이해, 피어링(Peering)과 NAT 구성 등 클라우드 네트워킹 핵심 기술 학습 |
| 8/8 | CentOS Stream 9 환경에서 쉘 스크립트를 활용한 Cockpit(Web GUI) 및 Podman 컨테이너(Nginx) 연동 환경 자동 구축과 방화벽·볼륨·네트워크 설정 실습 |
| 8/11 | withsecurelabs chainsaw 툴을 이용한 취약점 확인 |
| 8/19 | Azure 가상 네트워크 보안(NSG, Firewall) 및 아키텍처(Hub & Spoke, VNet Peering) 구성과 UDR·NVA를 활용한 트래픽 경로 제어 및 라우팅 테이블 분석 실습 |
| 8/20 | 취약한 웹 애플리케이션(Mutillidae) 구축 및 SQL Injection(인증 우회·UNION) 공격 원리 실습과 아파치 설정 구조(conf.d) 분석, 국가정보보호백서를 통한 공공 클라우드·AI 보안 정책 동향 학습, Windows 이벤트 로그 분석 도구인 Chainsaw와 Sigma 룰을 활용하여 악성 행위(계정 변경, 권한 상승 등)를 탐지하고, 분석 결과(JSON/CSV)의 인코딩 및 포맷팅 문제를 해결하여 취약점 분석 보고서를 작성하는 디지털 포렌식/침해 대응 실습 |
| 8/21 | Azure 가상 네트워크 게이트웨이 및 Virtual WAN을 활용한 하이브리드 연결(S2S/P2S/ExpressRoute) 구성과 IKEv2/IPsec 프로토콜의 세부 협상 과정(ISAKMP, ESP) 이해, 그리고 JSON 템플릿과 CLI를 이용한 네트워크 리소스 자동 배포 실습 |
| 8/22 | 브라우저 개발자 도구를 활용한 쿠키 분석 및 XSS 공격 유형별(Stored/Reflected/DOM) 원리·우회 기법(Event Handler) 실습과 Azure MySQL 데이터베이스 배포 및 방화벽 설정을 통한 원격 연결 학습 |
| 8/27 | DVWA 환경에서 Weak Session ID 및 File Inclusion(LFI) 취약점을 실습하며 /etc/passwd 접근 등 공격 원리를 파악하고, SCP/tar를 활용한 파일 전송 트러블슈팅 및 reCAPTCHA 적용, Metasploit을 이용한 SQL Injection 자동화 공격 기법 학습 |
| 8/28 | Azure 글로벌 인프라(MPLS, SLA) 개념 및 로드 밸런서 구성 실습과 리눅스 BIND DNS 서버의 정방향·역방향 존(Zone) 파일 설정 및 검증(nslookup) 절차 학습 |
| 8/29 | Snort 3.0 IDS 설치 과정(의존성 패키지/DAQ 라이브러리/컴파일)과 환경 변수($PATH) 설정의 중요성, 그리고 strace를 이용한 프로세스 디버깅 및 SQL Injection 탐지 룰 설정 실습, CCNA 모의고사 오답 분석을 통해 PoE, Spine-Leaf 토폴로지, 2계층(Collapsed Core) 모델, 스위치 버퍼링(Shared vs Port-based), 그리고 RESTful API 아키텍처 및 JSON 구문 등 네트워크 인프라와 자동화 핵심 개념 학습 |
| 9/1 | Snort IDS 룰 문법 수정 및 Nmap 탐지 테스트를 수행하고, GCP VM 환경으로 전환하여 Wazuh 구축을 위한 Elasticsearch·Kibana 설치 및 루트 권한 실행 오류 해결 과정을 학습 |
| 9/2 | StrongSwan VPN 구축을 위한 커널 파라미터 튜닝 및 로컬 DNS(BIND) 트러블슈팅과 Certbot 인증 실패 대안으로 OpenSSL/PKI를 활용한 사설 인증서(Root CA/Private Key) 발급 실습, WEB/WAS 아키텍처의 차이를 이해하고, 중소기업의 보안 요구사항(기밀성·무결성·가용성)을 충족하는 망 분리(DMZ/Internal) 네트워크 토폴로지 설계 과제 수행 |
| 9/3 | PKI/CA 및 Diffie-Hellman 알고리즘의 이론적 배경을 이해하고, Wireshark의 심화 기능(패킷 병합 mergecap, 필터링, 컬러링)을 활용한 VPN 암호화 트래픽 검증 및 SQL Injection 공격 패턴 탐지 실습 |
| 9/4 | Azure CLI를 활용한 VNet·Subnet·VPN Gateway 자동 배포 및 KISA 클라우드 취약점 가이드를 참고한 보안 점검과 Azure VM과 온프레미스 CentOS(StrongSwan) 간의 Site-to-Site VPN 연결 아키텍처 및 구성 절차 학습, CCNA SRWE 오답노트를 통해 정적 경로(Static Route)의 유형(Recursive/Floating)과 인터페이스 상태에 따른 라우팅 테이블 변화를 이해하고, AD(Administrative Distance) 값을 조정한 백업 경로(Floating Static Route) 구성법 학습 |
| 9/5 | Ubuntu 24.04 설치 및 네트워크/한글 설정, SSH/Samba/NFS 서버 구축을 통한 파일 공유 환경 구성과 쉘 스크립트 기반 자동 마운트, 그리고 C 프로그래밍을 위한 GCC/Vim(ctags) 개발 환경 세팅 학습, NetworkMiner를 활용한 PCAP 패킷 재구성 및 중요 데이터(파일·자격증명) 추출 실습과 디지털·네트워크 포렌식의 이론적 개념 및 침해 사고 분석 도구 학습 |
| 9/8 | 리눅스 커널과 쉘의 동작 원리(프로세스/PID, 내장/외장 명령어, 표준 입출력/리다이렉션) 및 환경 변수($PATH, .profile) 설정 방법을 이해하고, ps, pstree, which 등의 명령어를 활용한 프로세스 분석 실습 |
| 9/9 | 쉘 스크립트에서의 변수 선언 및 연산자(expr/let) 사용법, 배열(Array)과 반복문(for)의 활용, 다양한 조건문(문자열/산술/파일 검사) 구문 및 C언어 스타일의 스크립트 작성법 학습 |
| 9/10 | 파일 형식(inode, block/character device) 및 링크(Hard/Symbolic) 개념과 쉘 스크립트에서의 다양한 반복문(for, while, until) 및 조건식(if, case) 활용, 그리고 프로세스 수명 주기(Fork, Zombie)와 CPU 스케줄링(Time Slice)의 원리 학습 |
| 9/11 | 쉘 스크립트를 활용한 구구단 출력 실습 및 다중 반복문 구현, 사용자 정의 함수와 파라미터 처리(shift, $#), 조건문(if, case) 및 파일 처리(grep, awk, sed)를 이용한 리눅스 보안 취약점 점검 스크립트(security.sh) 제작 및 분석 학습 |
| 9/12 | C언어의 컴파일 과정(전처리-컴파일-어셈블-링크) 및 GCC 옵션(-save-temps)을 통한 단계별 파일 분석, 상수/변수의 자료형별 메모리 구조와 32/64비트 시스템 차이, 그리고 실수형 데이터의 정밀도 오차 및 포인터 메모리 주소 확인 실습 |
| 9/15 | C언어 배열과 포인터의 차이(상수/변수) 및 메모리 주소 접근, scanf와 sizeof 등 주요 연산자와 형 변환(Casting) 원리, 그리고 함수 호출 방식(Call by Value/Reference)과 구조체 및 메모리 관리(malloc/free) 학습 |
| 9/16 | 시스템 콜(open/read/write)을 이용한 파일 복사 프로그램(cp 명령어 유사) 구현 및 파일 디스크립터 동작 원리 이해, 그리고 TCP 소켓 프로그래밍의 기초(Socket 생성, Bind, Listen, Accept)와 엔디안 변환(htonl/htons) 학습 |
| 9/17 | Makefile을 이용한 C언어 빌드 자동화(Target/Dependency/Rule)와 fgets/printf 등 표준 입출력 함수의 차이, TCP 서버의 동시 접속 처리 한계(Blocking/Single Process) 및 멀티 프로세스(fork), 좀비 프로세스 해결(wait)을 위한 시스템 프로그래밍 기초 학습 |
| 9/18 | 멀티 프로세스의 fork/wait/waitpid와 시그널 핸들링을 통한 좀비 프로세스 방지, select 함수를 이용한 I/O 멀티플렉싱 및 pthread 기반 멀티 스레드(Mutex 동기화 포함) 채팅 서버 구현과 strace를 활용한 디버깅 실습 |
| 9/19 | Azure Application Gateway의 L7 로드밸런싱(경로 기반/다중 사이트 라우팅) 및 WAF(웹 방화벽) 구성 원리를 이해하고, VMSS와 CDN을 활용한 트래픽 분산 및 PowerShell을 이용한 IIS 웹 서버 구축 실습 |
| 9/22 | 방화벽(Firewall) 및 IDS/IPS(오용/이상 탐지)의 역할과 DDoS 공격 유형(프로토콜/애플리케이션 계층), 그리고 Azure Firewall 및 DDoS Protection을 활용한 클라우드 보안 구성 실습 |
| 10/15 | KISA 클라우드 취약점 점검 가이드를 기반으로 윈도우 시스템 보안(계정 정책 net accounts, 암호 복잡성, 공유 폴더 net share)을 점검하고, secedit 및 레지스트리(HKEY) 분석을 통한 보안 정책 진단 실습 |
| 10/16 | VMware Workstation의 가상 네트워크 및 디스크 프로비저닝(Thin/Thick) 최적화와 Rocky Linux 9 초기 설정(SELinux/Hostname), 그리고 Windows 11 설치를 위한 TPM/UEFI 요구사항 및 트러블슈팅 학습 |
| 10/17 | DHCP 리스 파일(/var/lib/dhcpd/dhcpd.leases) 분석 및 MAC 주소 구조(OUI)와 APIPA 개념을 이해하고, vsftpd를 활용한 FTP 서버 구축 시 보안 설정(Chroot Jail, xferlog 분석) 및 dd 명령어를 이용한 더미 데이터 생성 실습 |
| 10/20 | 리눅스 계정 관리(userdel -r) 및 FTP 패시브 모드 패킷 분석과 윈도우 시스템 복제 시 SID 중복 방지를 위한 Sysprep 활용, 그리고 레지스트리 및 그룹 정책(gpupdate)을 이용한 RDP 포트 보안 설정 실습 |
| 10/21 | 가상머신 구성 파일(.vmx) 구조 이해 및 Windows DHCP 옵션 계층(예약>범위>서버)과 바인딩 설정, 그리고 IIS 웹 서버 구축 시 기본 경로(inetpub) 변경을 통한 보안 강화 기법 학습 |
| 10/22 | DNS 질의 응답 원리(권한 없는 응답)와 Zone 파일 설정 시 주요 오류(마침표 누락 등) 해결, CNAME 레코드 활용 및 Master-Slave 구조에서의 Zone Transfer(구역 전송)와 방화벽 설정 학습 |
| 10/23 | Apache와 IIS 웹 서버의 보안 설정(Directory Listing 방지, 접근 제어, 에러 메시지 은닉) 및 가상 호스트(Virtual Host) 구축 원리와 User-Agent 헤더를 이용한 클라이언트 식별 기술 학습 |
| 10/24 | Windows(hMailServer) 및 Linux(Sendmail/Dovecot) 환경에서의 메일 서버 구축과 트러블슈팅(.NET 3.5 소스 경로), SMTP/POP3/IMAP 방화벽 설정, 그리고 스팸 방지를 위한 메일 릴레이(Relay) 제한 및 인증 보안 기술 학습 |
| 11/3 | Nmap(-sS/-O)과 snmp-check를 활용한 정보 수집(Reconnaissance) 및 MITRE ATT&CK 프레임워크 이해, Hydra/Medusa를 이용한 무차별 대입 공격(Brute Force)과 Metasploit 기초 명령 실습 |
| 11/5 | KISA 주요정보통신기반시설 기술적 취약점 분석 가이드를 기반으로 리눅스 서버 보안 설정(Root 원격 접속, 패스워드 복잡성, 계정 잠금, 소유자 없는 파일 등)을 자동 점검하는 쉘 스크립트 도구 제작 및 기능 구현 학습 |
| 11/6 | OSINT(Shodan) 및 사회공학적 기법을 활용한 정보 수집과 Nessus·OpenVAS(GVM) 구축을 통한 취약점 스캐닝 실습, 그리고 CVSS 위험도 분석 및 Metasploit을 이용한 MS11-004(RCE) 익스플로잇 학습 |
| 11/7 | ARP Poisoning 및 WPAD Spoofing 공격 원리와 대응(Static ARP/NAC)을 이해하고, Kali Linux 용량 부족 해결을 위한 LVM 논리 볼륨 확장(lvextend, resize2fs) 트러블슈팅 수행 |
| 11/10 | msfvenom과 인코더(zutto_dekiru)를 활용한 난독화 악성 페이로드 생성 및 윈도우 대상 Post-Exploitation(Keylogging, Process Migration, Persistence) 실습과 HxD를 이용한 파일 시그니처 및 스테가노그래피 분석 학습 |
| 11/11 | SQL Injection 공격 패턴(' or 1=1#) 분석 및 특수문자 필터링을 통한 방어 기법과, 리눅스 부트로더(GRUB)의 싱글 유저 모드(init 1)를 악용한 루트 패스워드 탈취/복구 원리 및 GRUB 패스워드 설정을 통한 보안 강화 학습 |
| 11/12 | BeEF(Browser Exploitation Framework)를 활용한 XSS 기반 브라우저 후킹 및 사회공학적 공격(Fake Login Page) 시나리오 실습과 Kali Linux 한글 환경 설정 트러블슈팅 학습 |
| 11/13 | MITRE ATT&CK 프레임워크를 기반으로 Windows 2008/Ubuntu 14.04 대상 취약점 진단(Nessus, GVM) 및 Metasploit을 활용한 서비스별(SMB EternalBlue, IIS, Tomcat 등) 익스플로잇과 SSH 터널링/무차별 대입 공격(Hydra)을 수행하고, 스테가노그래피 기법을 이용한 CTF Flag 획득 및 보안 조치(계정 임계값, SSH/FTP 설정) 방안을 포함한 최종 모의해킹 결과 보고서 작성(11/3-11/13) |
| 11/14 | SSH 키 생성 옵션(-t, -f) 및 개인키 권한(600) 관리 원리를 이해하고, 리눅스 IP 포워딩 활성화 및 Firewalld Direct Rule을 활용한 NAT(Masquerading)·패킷 포워딩 구성과 HAProxy를 이용한 로드 밸런싱 환경 구축 실습 |
| 11/17 | 쉘 스크립트와 sed 명령어를 활용한 WordPress 웹 서버(Apache/PHP) 및 MySQL/Azure Database 자동 구축과 HAProxy 로드 밸런싱 설정, 그리고 grubby를 이용한 SELinux 비활성화 및 헬스 체크(Health Check) 페이지 생성 실습 |
| 11/18 | Terraform의 핵심 워크플로우(Plan/Apply/Destroy)와 상태 관리(.tfstate) 메커니즘을 이해하고, IaC를 활용한 Azure 인프라(Web/DB/Bastion) 자동 배포 및 User Data 스크립트를 통한 WordPress/MySQL 서비스 프로비저닝 실습, 그리고 보안 중심 클라우드 프로젝트의 설계 전략(Infra Automation vs Security Ops) 수립 |
| 11/19 | Terraform을 활용한 Azure Load Balancer 및 VMSS(Auto Scaling) 구축과 Azure Compute Gallery를 이용한 커스텀 이미지 관리 기술을 익히고, PaaS(MySQL Flexible Server)와 IaaS DB의 차이점 분석 및 GitHub/Draw.io를 활용한 팀 프로젝트 1차 보안 아키텍처(2-Tier, App Gateway, NAT 등) 설계 수행 |
| 11/20 | Docker 컨테이너 아키텍처(Layer/Image) 및 라이프사이클 관리 명령어(run/exec) 실습과 Managed K8s(EKS/AKS/GKE) 비교, 그리고 Azure 프로젝트에서의 NSG 보안 정책 수립 및 App Gateway·NAT Gateway를 통한 인바운드/아웃바운드 트래픽 제어 역할 검증 학습 |
| 11/21 | Docker 컨테이너 마이그레이션(export/import) 시 소실되는 메타데이터(CMD, PATH) 복구 방법과 환경변수(-e) 및 --add-host를 활용한 WordPress-MySQL 컨테이너 연동 실습, 그리고 Azure 프로젝트의 NSG(Network Security Group) 보안 정책 구성 및 트래픽 제어 검증 수행 |
| 11/24 | Docker Volume을 활용한 데이터 영속성 확보 및 MySQL Master-Slave Replication(Read-Only 분산) 구축을 통한 고가용성(HA) 원리를 익히고, Dockerfile을 이용한 커스텀 서비스(HTTPD/VSFTPD) 이미지 빌드와 Azure Cross-Region VNet Peering을 활용한 이중화 및 재해 복구(DR) 아키텍처 검증 프로젝트 수행 |
| 11/25 | kubeadm을 이용한 Kubernetes 클러스터 구축 전 과정(Swap 비활성화, containerd 런타임 구성, Master/Node 초기화)과 Calico CNI 적용, kubectl을 활용한 파드(Pod) 배포 및 NodePort 서비스 노출 실습, 그리고 Azure Firewall 도입을 포함한 팀 프로젝트 인프라 코드 통합 및 웹 접속 트러블슈팅 수행 |
| 11/26 | Kubernetes Pod 생명주기 관리(YAML, Command/Args) 및 Multi-Container Pod(WordPress+MySQL) 연동 원리를 이해하고, ReplicaSet을 활용한 스케일링(Scale In/Out) 및 자가 치유(Self-Healing) 실습과 Azure Firewall 트래픽 필터링 이슈 분석 및 3-Tier 아키텍처 문서화 수행 |
| 12/1 | 팀별 Azure 클라우드 보안 구축 사례 발표를 통해 단계별 아키텍처 고도화(App Gateway, Firewall/UDR 라우팅) 및 고가용성 전략(MySQL Cluster, VMSS 스트레스 테스트), Terraform 모듈화와 프로비저닝 이슈(Race Condition) 해결법을 공유하고, 자사 팀의 방화벽 구성 실패 원인 분석 및 서브넷 단위 NSG 정책 수립 경험을 회고함 |
| 12/2 | 쿠버네티스 핵심 오브젝트(Pod/Deployment/Service)의 개념과 무중단 배포 전략(Rolling/Blue-Green/Canary)을 이해하고, YAML을 활용한 다중 컨테이너(WordPress+MySQL) 연동 배포 및 Service 유형(ClusterIP/NodePort)별 네트워크 구성 실습 |
| 12/3 | Kubernetes Deployment 관리(edit/apply) 및 베어메탈 환경을 위한 MetalLB 로드밸런서 구축(IP Pool 정의, L2Advertisement/BGP 설정)과 kube-proxy의 strictARP 활성화 실습, 그리고 Namespace 기반의 Pod별 리소스(CPU/Memory) 할당 및 제한(Quota) 기술 학습 |
| 12/4 | Bare Metal 환경을 위한 NGINX Ingress Controller 구축 및 Ingress 리소스(ing.yml) 설정을 통한 L7 라우팅(경로 기반 트래픽 제어) 실습과, Deployment 수정 시 발생하는 Selector 불변성(Immutable Field) 에러 원인 분석 및 해결 학습 |
| 12/5 | Kubernetes 스토리지 볼륨의 유형별(emptyDir vs hostPath vs PV/PVC) 생명주기 차이를 이해하고, ConfigMap을 활용한 애플리케이션 설정 분리 및 Node Selector와 Taint를 이용한 정밀한 파드 스케줄링 제어, 그리고 리소스 쿼터(CPU/Memory Requests & Limits) 설정 실습 |

