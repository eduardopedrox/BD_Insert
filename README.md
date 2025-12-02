# Banco de Dados BD_locadora

Este projeto define um banco de dados simples para uma locadora de veículos, chamado `BD_locadora`.  
Ele foi usado em uma atividade focada em comandos `INSERT`, em que o professor passava os valores e eu montava os inserts.

## Estrutura

- **Cliente**  
  Guarda os dados dos clientes: código, nome, sexo, endereço, cidade, estado, e‑mail e telefone.

- **Veiculo**  
  Guarda os dados dos carros: código, marca, modelo, ano, quilometragem e cor.

- **Locacao**  
  Registra cada locação, ligando um cliente a um veículo, com datas de locação e devolução e o valor cobrado.  
  Usa chaves estrangeiras `fk_cliente` → `Cliente(id_cliente)` e `fk_veiculo` → `Veiculo(id_veiculo)`.

Também há inserts de exemplo preenchendo as tabelas com alguns clientes, veículos e uma locação para testar o funcionamento.
