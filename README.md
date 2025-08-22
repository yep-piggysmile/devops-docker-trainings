# devops-docker-trainings

## Day 1

Presentation: 
[docker-training-day1.pdf](day1/documents/devops-docker-training-day1.pdf)

### What’s DevOps?
DevOps คือแนวคิดและกระบวนการที่ผสานงานระหว่างทีมพัฒนา (Development) และทีมปฏิบัติการ (Operations) เพื่อให้การพัฒนาและส่งมอบซอฟต์แวร์เป็นไปอย่างรวดเร็ว มีประสิทธิภาพ และต่อเนื่อง

### DevOps Tools
- **Git**: ระบบควบคุมเวอร์ชันซอร์สโค้ด
- **Jenkins**: เครื่องมือ CI/CD สำหรับอัตโนมัติการ build/test/deploy
- **Docker**: รันแอปพลิเคชันในคอนเทนเนอร์
- **Kubernetes**: จัดการ container orchestration
- **Ansible/Terraform**: เครื่องมือ Infrastructure as Code

### Proxmox
Proxmox คือแพลตฟอร์มโอเพ่นซอร์สสำหรับการบริหารจัดการ Virtualization และ Container (รองรับทั้ง KVM และ LXC) เหมาะสำหรับสร้าง Lab หรือระบบเสมือนจริง

### Container
Container คือเทคโนโลยีที่ช่วยแยกแอปพลิเคชันและ dependency ออกจากกัน ทำให้รันแอปได้ทุกที่ที่มี container runtime เช่น Docker

### Docker
Docker คือแพลตฟอร์มยอดนิยมสำหรับสร้าง จัดการ และรัน container ช่วยให้ deployment ง่ายและรวดเร็ว

### Install Recommended Tools

#### Scripts สำหรับติดตั้งและตั้งค่า

| Script | คำอธิบาย |
|--------|----------|
| [`1.install-docker-master.sh`](day1/scripts/1.install-docker-master.sh) | ติดตั้ง Docker และตั้งค่า node เป็น Swarm master |
| [`2.install-docker-worker.sh`](day1/scripts/2.install-docker-worker.sh) | ติดตั้ง Docker และ join node เป็น Swarm worker |
| [`3.install-portainer.sh`](day1/scripts/3.install-portainer.sh) | ติดตั้ง Portainer สำหรับจัดการ Docker ผ่าน web UI |
| [`4.install-adguard-home.sh`](day1/scripts/4.install-adguard-home.sh) | ติดตั้ง AdGuard Home สำหรับ DNS filtering |
| [`5.install-treaflik.sh`](day1/scripts/5.install-treaflik.sh) | ติดตั้ง Traefik สำหรับ reverse proxy และ load balancing |

> **หมายเหตุ:**  
> - ก่อนรัน script ใด ๆ ให้ตรวจสอบสิทธิ์การเข้าถึง (`chmod +x <script>`)
> - ปรับค่า `<TOKEN>` และ `<MASTER_IP>` ใน `2.install-docker-worker.sh` ให้ตรงกับ environment ของคุณ


## Day 2

### Git Version Control
Git คือระบบควบคุมเวอร์ชันที่ช่วยให้สามารถติดตามและจัดการการเปลี่ยนแปลงของซอร์สโค้ดได้อย่างมีประสิทธิภาพ เหมาะสำหรับการทำงานร่วมกันในทีม

### GitLab CI/CD
GitLab CI/CD คือระบบสำหรับอัตโนมัติการ build, test, และ deploy ซอฟต์แวร์ โดยสามารถกำหนด pipeline ได้ในไฟล์ `.gitlab-ci.yml`

### Dockerfile
Dockerfile คือไฟล์ที่ใช้กำหนดขั้นตอนการสร้าง Docker image เช่น การติดตั้ง dependency, การ copy ไฟล์, และการกำหนด entrypoint

### Docker Compose
Docker Compose คือเครื่องมือสำหรับการจัดการ multi-container application โดยกำหนดรายละเอียดในไฟล์ `docker-compose.yml` เพื่อรันหลาย container พร้อมกันได้ง่าย

### Portainer.io
Portainer คือ web UI สำหรับบริหารจัดการ Docker และ Docker Swarm ช่วยให้การดูแล container, image, network และ volume สะดวกขึ้น

### Auto Deploy
Auto Deploy คือกระบวนการที่เมื่อมีการ push โค้ดขึ้น repository แล้วจะมีการ build และ deploy อัตโนมัติผ่าน pipeline เช่น GitLab CI/CD

### Scripts สำหรับติดตั้งและตั้งค่า (Day 2)

| Script | คำอธิบาย |
|--------|----------|
| [`gitlab-ci-example/.gitlab-ci.yml`](day2/scripts/gitlab-ci-example/.gitlab-ci.yml) | ตัวอย่าง pipeline สำหรับ GitLab CI/CD |
| [`docker/Dockerfile`](day2/scripts/docker/Dockerfile) | ตัวอย่างไฟล์ Dockerfile สำหรับ build image |
| [`docker/docker-compose.yml`](day2/scripts/docker/docker-compose.yml) | ตัวอย่างไฟล์ Docker Compose สำหรับรันหลาย container |

> **หมายเหตุ:**  
> - ตัวอย่างไฟล์ทั้งหมดอยู่ในโฟลเดอร์ที่ระบุ สามารถนำไปปรับใช้กับโปรเจกต์ของคุณได้
> - ศึกษาวิธีการใช้งานเพิ่มเติมในเอกสารประกอบแต่ละเครื่องมือ

