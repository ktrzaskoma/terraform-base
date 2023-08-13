

## Zmienne (Variables) 
### 1. Typy
- Input Variables (zmienne wejściowe) -> deklarowanie var.<name>
- Local Variables (zmienne lokalne) -> deklarowanie local.<name>
- Output Variables (zmienne wyjściowe) -> to jest element, który możemy wyświetlić w terminalu (np. ip_address)
### 2. Ustawienie zmiennych wejściowych
- Manualne podczas wykonywania komendy plan/apply
- Deklaracja wartości domyślnej w bloku deklaracyjnym (variables)
- TF_VAR_<name> (TF_LOG, TF_CLI_ARGS) 
- Plik terraform.tfvars 
- Plik *auto.tfvars 
- Komenda -var lub -var-file 
### 3. Ustawienie zmienneych lokalnych
Zmienne lokalne są dostępne tylko w zasięgu pliku, w którym zadeklarowany jest 
blok locals wraz ze zmienną.
### 4. Ustawienie zmiennych wyjściowych
Zmienne wyjściowe pozwalają na sprawdzenie ważnych informacji. Deklarujemy w 
bloku output, gdzie nadajemy wartość zmiennej (value)

## Dokumentacja
[Terraform CLI Documentation](https://developer.hashicorp.com/terraform/cli)