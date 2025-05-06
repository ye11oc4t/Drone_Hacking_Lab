# Drone Hacking Lab:

2025-05-06 commit:
PX4 SITL 실험 환경

이 저장소는 **PX4 Software-In-The-Loop (SITL)** 환경을 기반으로 드론 해킹 실험을 수행할 수 있도록 구성된 실험용 환경입니다.  
Windows 사용자 기준으로 **WSL (Ubuntu 20.04 or 22.04)** 기반 환경에서 실행 가능하며, Gazebo + QGroundControl과 연동됩니다.

---

## 목적

- PX4 SITL 환경에서의 드론 제어 시스템 이해
- MAVLink 프로토콜 분석 및 취약점 테스트
- Gazebo를 통한 가상 드론 비행 시뮬레이션
- QGroundControl 지상국 연동 및 정보 탈취 실험

---

## 디렉토리 구조

\`\`\`
SITL_setup/
├── install_px4.sh           # PX4 + 의존성 자동 설치 스크립트
├── run_sitl_gazebo.sh       # PX4 SITL + Gazebo 실행용
├── run_qgc.sh               # QGroundControl 실행기 (옵션)
├── docs/                    # 흐름도, 아키텍처 이미지 등
└── README.md                # 현재 문서
\`\`\`

---

##  설치 (WSL 환경 기준)

### 1. Ubuntu WSL 환경 준비
Windows 터미널에서:

\`\`\`bash
wsl --install -d Ubuntu-22.04
\`\`\`

### 2. PX4 및 환경 구성

\`\`\`bash
cd ~/Drone_Hacking_Lab/SITL_setup
chmod +x install_px4.sh
./install_px4.sh
\`\`\`

> 설치에는 수십 분이 소요될 수 있습니다. 안정된 인터넷 환경을 권장합니다.

---

## 실행

PX4 SITL + Gazebo 실행:
\`\`\`bash
./run_sitl_gazebo.sh
\`\`\`

QGroundControl을 따로 실행하려면:
\`\`\`bash
./run_qgc.sh
\`\`\`

> 기본적으로 MAVLink는 \`udp:14550\` 포트에서 수신 대기 중입니다.

---

## 테스트/공격 실험 예시

- \`nc -u 127.0.0.1 14550\`로 MAVLink 수신 확인
- pymavlink, MAVSDK 등을 이용한 명령어 삽입 테스트
- GCS GUI 조작 시 패킷 추출 및 복제 실험

---

## 참고

- PX4 공식 문서: https://docs.px4.io
- MAVLink 프로토콜: https://mavlink.io
- QGroundControl: https://docs.qgroundcontrol.com

---

## 작성자

- 김서연 (ye11oc4t)  
- contact: ye11oc4t@gmail.com
