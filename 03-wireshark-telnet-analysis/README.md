# 🛡️ Network Traffic Analysis: Credential Harvesting via Telnet
A practical laboratory demonstrating the vulnerabilities of unencrypted protocols using **Wireshark**, **Kali Linux**, and **Metasploitable 2**.

---

## 📝 Project Overview
The goal of this project is to demonstrate how sensitive information (such as usernames and passwords) can be intercepted on a network when using insecure protocols like **Telnet**. This lab was conducted in a controlled virtual environment to simulate a real-world man-in-the-middle or sniffing scenario.

## 🛠️ Tools & Environment
* **Hypervisor:** VirtualBox
* **Attacker Machine:** Kali Linux (IP: `10.0.0.10`)
* **Victim Machine:** Metasploitable 2 (IP: `10.0.0.5`)
* **Analysis Tool:** Wireshark
* **Network Config:** Isolated Internal Network (`intnet`)

---

## 🚀 Step-by-Step Execution

### 1. Network Setup & Discovery 🔍
Both virtual machines were configured on an isolated internal network to ensure safety. A connectivity test was performed using `ping` to verify the communication bridge.
- Command used: `ping -c 4 10.0.0.5`

### 2. Traffic Capture 🎣
Wireshark was launched on the Kali Linux machine, listening on the `eth0` interface. While the capture was running, a Telnet connection was initiated to the victim's IP.
- Command used: `telnet 10.0.0.5`

### 3. Exploitation & Analysis 🔍
After entering the credentials (`msfadmin`/`msfadmin`), the session was closed. Using Wireshark's **"Follow TCP Stream"** feature, the entire conversation was reconstructed.

---

## 📊 Results & Evidence: The "Smoking Gun" 🕵️‍♂️

### 🔓 Vulnerability Analysis
During the packet inspection, I used the **TCP Stream Reconstruction** feature. Unlike modern encrypted protocols (like SSH), Telnet transmits data in **Plain Text**. 

> [!CAUTION]
> ### Critical Security Flaw: Clear Text Transmission
> As demonstrated in the evidence below, the Telnet protocol does not use encryption. Every single keystroke—including the **username**, **password**, and **system commands**—is captured and reconstructed effortlessly. This exposes the infrastructure to credential harvesting and full system compromise.

---

### 🖼️ Evidence: TCP Stream Reconstruction
The following image captures the exact moment where the login process was intercepted. Notice how the credentials `msfadmin` are clearly visible within the data stream:

![Network Analysis Evidence](screenshots/11-telnet-credentials-exposure.png)
*Caption: Full reconstruction of the Telnet session. Red text represents client-side input, while blue represents server-side response.*

---

---

## 💡 Key Takeaways & Mitigation
* **The Risk:** Telnet does not encrypt data, making it highly vulnerable to packet sniffing.
* **The Solution:** Always use **SSH (Secure Shell)** for remote administration, as it encrypts the entire session, protecting against credential theft.
* **Skills Demonstrated:** Network protocol analysis, VirtualBox networking, Wireshark filtering, and Cybersecurity fundamentals.

---
## 👤 Author
**Your Name**
* [LinkedIn](https://www.linkedin.com/in/lucas-gaston-martinez/)
* [Portfolio](https://github.com/lucasgm94)
