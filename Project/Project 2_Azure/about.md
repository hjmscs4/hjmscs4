### [Project 2] Azure 하이브리드 클라우드 보안 인프라 구축
> **"온프레미스와 클라우드를 잇는 보안 아키텍처 설계 및 자동화"**

*   **개요:** 기업 환경을 가정한 Hub & Spoke 네트워크 아키텍처 설계 및 Azure-OnPremise 간 VPN 연결 구현
*   **주요 기술:** Azure VNet, VPN Gateway(IPsec/IKEv2), Terraform, StrongSwan
*   **주요 성과:**
    *   **Terraform**을 활용한 인프라(VM, Network) 자동 배포 환경(IaC) 구현
    *   Azure Firewall 및 NSG를 서브넷 단위로 적용하여 트래픽 제어 강화
    *   StrongSwan을 이용한 **Site-to-Site VPN** 구축 중 IKEv2 프로토콜 협상 오류 해결 및 연결 성공
