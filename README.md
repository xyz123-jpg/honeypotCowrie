# honeypotCowrie

<img width="419" height="120" alt="image" src="https://github.com/user-attachments/assets/2f45b866-ac9e-47c6-91ae-efd3ce6be899" />


# Cowrie SSH Honeypot na AWS

Ovaj repozitorij opisuje kako postavitiCowrie SSH honeypot
na AWS EC2 instanci (Ubuntu)
Honeypot prikuplja:
- SSH pokušaje prijave
- pokušaje pogađanja lozinki
- naredbe koje napadači izvršavaju
- URL-ove zlonamjernog softvera

Sve aktivnosti su simulirane i sigurne.

---

## Arhitektura

Internet

iptables preusmjeravanje

Cowrie SSH honeypot (port 2222)
Logovi (JSON i tekst)

Pravi SSH servis je premješten na **port 22222**.

---

## Značajke
- Lažni SSH servis na portu 22
- Pravi SSH skriven na portu 22222
- Lažni datotečni sustav
- Lažne Linux naredbe
- Bez stvarnog izvršavanja malvera
- Detaljni JSON logovi

---

## Zahtjevi
- AWS EC2 (Ubuntu 22.04)
- Security Group pravilo:
  - TCP 22 otvoren za 0.0.0.0/0

---

## Instalacija (ukratko)

```bash
scripts/install.sh
scripts/premjestiSsh.sh
scripts/iptables.sh
scripts/startCowrie.sh
```
## U izradi

  Slanje logova na ELK stack

