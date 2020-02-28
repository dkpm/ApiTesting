#language: pt
  @run
  Funcionalidade: Realizando um simples CRUD na classe de processo.

    Cenário de Fundo:
      Dado que o usuário está na página

    Cenário: POST com todos os campos preenchidos corretamente
      E o usuário preenche o campo "vara" o valor "1"
      E o usuário preenche o campo "numero_processo" o valor "69696"
      E o usuário preenche o campo "natureza" o valor "Dayane"
      E o usuário preenche o campo "partes" o valor "Day x Day"
      E o usuário preenche o campo "urgente" o valor "S"
      E o usuário preenche o campo "arbitramento" o valor "N"
      E o usuário preenche o campo "assistente_social" o valor "Moreira Dayane"
      E o usuário preenche o campo "data_entrada" o valor "2020-02-27"
      E o usuário preenche o campo "data_saida" o valor "2020-03-01"
      E o usuário preenche o campo "data_agendamento" o valor "2020-02-28"
      E o usuário preenche o campo "status" o valor "No aguardo"
      E o usuário preenche o campo "observacao" o valor "Dayane Kellynguica"
      Quando o usuário clicar no botao salvar
      Então o usuário deveria receber uma mensagem de "salvo com sucesso"
      E o usuário deverá ver o campo "vara" com valor "1"

    Esquema do Cenário: GET com todos os campos preenchidos corretamente
      E o usuário gostaria de ver seu processo com id <id>
      Quando o usuário clicar no botao visualizar
      Então o usuário deveria receber uma mensagem de "<mensagem>"

      Exemplos:
      | id   | mensagem       |
      |159   | sucesso        |
      |565656| não encontrado |

    Cenário: PUT com todos os campos preenchidos corretamente
      E o usuário gostaria de ver seu processo com id 159
      E o usuário preenche o campo "vara" o valor "88"
      E o usuário preenche o campo "numero_processo" o valor "65656"
      E o usuário preenche o campo "natureza" o valor "Moreira"
      E o usuário preenche o campo "partes" o valor "Moreira x Dayane"
      E o usuário preenche o campo "urgente" o valor "S"
      E o usuário preenche o campo "arbitramento" o valor "N"
      E o usuário preenche o campo "assistente_social" o valor "Dayane Kelly"
      E o usuário preenche o campo "data_entrada" o valor "2020-02-27"
      E o usuário preenche o campo "data_saida" o valor "2020-03-04"
      E o usuário preenche o campo "data_agendamento" o valor "2020-02-28"
      E o usuário preenche o campo "status" o valor "Aguardando o certificado"
      E o usuário preenche o campo "observacao" o valor "Silencio"
      Quando o usuário clicar em atualizar
      Então o usuário deveria receber uma mensagem de "sucesso"
      E o usuário deverá ver o campo "vara" com valor "88"

    Cenário: DELETE com todos os campos preenchidos corretamente
      E o usuário preenche o campo "vara" o valor "69"
      E o usuário preenche o campo "numero_processo" o valor "69696"
      E o usuário preenche o campo "natureza" o valor "Pires"
      E o usuário preenche o campo "partes" o valor "Kelly x Moreira"
      E o usuário preenche o campo "urgente" o valor "S"
      E o usuário preenche o campo "arbitramento" o valor "N"
      E o usuário preenche o campo "assistente_social" o valor "Kelly Dayane"
      E o usuário preenche o campo "data_entrada" o valor "2020-02-27"
      E o usuário preenche o campo "data_saida" o valor "2020-03-06"
      E o usuário preenche o campo "data_agendamento" o valor "2020-02-28"
      E o usuário preenche o campo "status" o valor "Kelly Moreira"
      E o usuário preenche o campo "observacao" o valor "DKPM"
      E o usuário clicar no botao salvar
      Quando o usuário clicar no botao deletar
      E o usuário clicar no botao visualizar
      Então o usuário deveria receber uma mensagem de "não encontrado"