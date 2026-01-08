# Arhitektura sustava

## Mrežni tok

1. Napadač se spaja na TCP port 22
2. iptables preusmjerava promet na port 2222
3. Cowrie prihvaća vezu
4. Napadaču se prikazuje lažna prijava i shell
5. Sve naredbe se bilježe u logove

---

## Portovi

| Servis       | Port |
|--------------|------|
| Cowrie SSH   | 2222 |
| Pravi SSH    | 22222 |

---

## Sigurnosne napomene
- Nema stvarnog izlaznog prometa
- Nema pravog pisanja datoteka
- Nema eskalacije privilegija
