## Komendy 

### 1. Podstawowe komendy

Inicjacja jest dokonywana za pomocą:
```bash
  terraform init
```
Konfiguruje oraz sporządza plan służący do odpowiedniego odtworzenia infrastruktury:
```bash
  terraform plan
```
Kompiluje kod i uruchamia infrastrukturę (w celu zwiększenia szybkości procesu zostało dodano automatyczne zatwierdzenie)
```bash
  terraform apply -auto-approve
```
Niszczy stworzoną infrastrukturę wcześniej stworznoną za pomocą komendy apply:
```bash
  terraform destroy -auto-approve
```

### 2. Stan procesów
Wyświetli listę wszystkich procesów, które są aktywne:
```bash
  terraform state list
```
Wyświetli szczegóły dotyczące wybranego stanu:
```bash
  terraform state show <state_name>
```

### 3. Komenda -target
Komendy takie jak apply/destroy mogą zostać rozszerzone o konkretny stan, który chcemy uruchumić bądź usunąć w następujący sposób
```bash
  terraform apply/destroy -target <state_name>
```


### 4. Komendy pomocnicze
Wyświetli wszystkie wartości jakie zostały przypisane do wartości (value) w bloku output:
```bash
  terraform output
```
Odświeży infrastrukturę, wprowadzi dokonane zmiany i wyświetli wartości z bloku output:
```bash
  terraform refresh
```
Wprowadzi zmieny stylistyczne w kodzie zgodnie z konwencją zalecaną w dokumentacji:
```bash
  terraform fmt
```