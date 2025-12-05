programa {
  cadeia cadastrar_Nomes[60],sair,confirmo,pesquisa,cadastrar_Responsavel[60],del
  logico vdd=falso,segue
  inteiro opcao,cont=0,cadastrar_Idade[60],cadastrar_Numero[60],dia_da_semana[5][60],dia_de_almoco[60]
  funcao inicio() {
    faca{ //laço de repetição para repetir o menu---------------------------------------------------------------------
      escreva("::::::::::::::::::::::::::::::::::::::::::::::::\n")
      escreva("/--_/--_/--_/--_/--_/MENU/--_/--_/--_/--_/--_/\n")
      escreva("::::::::::::::::::::::::::::::::::::::::::::::::\n\n")
      escreva("1) Registrar aluno para almoçar\n")
      escreva("2) Listar alunos que iram almoçar\n")
      escreva("3) Procurar por informações de um aluno da lista\n")
      escreva("4) Mudar as informações do cadastro de um aluno\n")
      escreva("5) Retirar um aluno da lista\n")
      escreva("0) sair do programa\n\n")
      escreva("::::::::::::::::::::::::::::::::::::::::::::::::\n")
      leia(opcao)
      limpa()
      escolha(opcao){//estrutura de controle usado para simplificar em opções, escolha-caso.---------------------------------------------------------------
        caso 1:
          cadastrar()
        pare
        caso 2:
          listar()
        pare
        caso 3:
          pesquisar()
        pare
        caso 4:
          change()
        pare
        caso 5:
          deletar()
        pare
        caso 0:
          sair="0"
        pare
        caso contrario:
          escreva("Opção digitada não existe!\n")
          escreva("Digite ENTER para voltar ao menu ou 0 para sair:")
          leia(sair)
          limpa()
        pare
      }
    }enquanto(sair!="0")
  }
  funcao change(){
    escreva("::::::::::::::::::::::::::::::::::::::::::::::::::\n")
    escreva("/--_/--_/--_/Trocando as Informações/--_/--_/--_/\n")
    escreva("::::::::::::::::::::::::::::::::::::::::::::::::::\n\n")
    escreva("Digite o aluno que deseja mudar as informações: ")
    leia(pesquisa)
    limpa()
    para(inteiro i=0;i<cont;i++){
      se(pesquisa==cadastrar_Nomes[i]){
        escreva("Escreva o nome do aluno que irá almoçar: ")
        leia(cadastrar_Nomes[i])
        escreva("Escreva a idade do aluno: ")
        leia(cadastrar_Idade[i])
        escreva("Digite o nome do responsavel pelo aluno: ")
        leia(cadastrar_Responsavel[i])
        escreva("Digite o número de contato do responsavel: ")
        leia(cadastrar_Numero[i])
        limpa()
        enquanto(vdd==falso){
          escreva("Digite quantos dias na semana o aluno irá almoçar: ")
          leia(dia_de_almoco[cont])
          se(dia_de_almoco[cont]>5 ou dia_de_almoco[cont]<1){
            escreva("Você digitou um número de dias da semana que não é possivel (A SEMANA TEM 5 DIAS)\n")
            escreva("\nAperte ENTER para Redigitar o dia: ")
            leia("")
            limpa()
          }senao{
            vdd=verdadeiro  
          }
        }
        escreva("Digite quais dias da semana o aluno irá almoçar:\n")
        para(inteiro j=0;j<dia_de_almoco[i];j++){ 
          escreva("1)Segunda  2)Terça  3)Quarta  4)Quinta  5)Sexta\n")
          leia(dia_da_semana[j][i])
          se(dia_da_semana[j][i]!=1 e dia_da_semana[j][i]!=2 e dia_da_semana[j][i]!=3 e dia_da_semana[j][i]!=4 e dia_da_semana[j][i]!=5){
            j--
            escreva("Número digitado não corresponde a um dos dias da semana possíveis\n")
            escreva("\nAperte ENTER para Redigitar o dia: ")
            leia("")
            limpa()
          }
        }
      }
    }
    escreva("Digite ENTER para voltar ao MENU ou 0 para SAIR:")
    leia(sair)
    limpa()
  }
  funcao listar(){//função de saida de dado, escreve a lista de alunos com um laço de repetição e escreva--------------------------------------
    escreva("::::::::::::::::::::::::::::::::::::\n")
    escreva("_/--_/--_/Lista do Almoço_/--_/--_/\n")
    escreva("::::::::::::::::::::::::::::::::::::\n\n")
    para(inteiro i=0;i<cont;i++){
      escreva("::::::::::::::::::::::::::::::::::\n\n")
      escreva("Nome do aluno: ",cadastrar_Nomes[i],"\n")
      escreva("Dias que irá almoçar: ")
      para(inteiro j=0;j<dia_de_almoco[i];j++){
        escolha(dia_da_semana[j][i]){
          caso 1:
          escreva("Segunda ")
          pare
          caso 2:
          escreva("Terça ")
          pare
          caso 3:
          escreva("Quarta ")
          pare
          caso 4:
          escreva("Quinta ")
          pare
          caso 5:
          escreva("Sexta")
          pare
        }
      }
      escreva("\n\n:::::::::::::::::::::::::::::::::::\n\n")
    }
    escreva("Digite ENTER para voltar ao menu ou 0 para sair:")
    leia(sair)
    limpa()
  }
  funcao pesquisar(){
    escreva("Digite o nome do aluno que quer encontar: ")
    leia(pesquisa)
    limpa()
    para(inteiro i=0;i<cont;i++){
      se(pesquisa==cadastrar_Nomes[i]){
        escreva(":::::::::::::::::::::::::::::::::::::::::::\n")
        escreva("_/--_/--_/--_/Dados do Aluno_/--_/--_/--_/\n")
        escreva(":::::::::::::::::::::::::::::::::::::::::::\n\n")
        escreva("Nome do aluno: ",cadastrar_Nomes[i],"\n")
        escreva("Dias que irá almoçar: ")
        para(inteiro j=0;j<dia_de_almoco[i];j++){
          escolha(dia_da_semana[j][i]){
            caso 1:
            escreva("Segunda ")
            pare
            caso 2:
            escreva("Terça ")
            pare
            caso 3:
            escreva("Quarta ")
            pare
            caso 4:
            escreva("Quinta ")
            pare
            caso 5:
            escreva("Sexta")
            pare
          }
        }
        escreva("\n")
        escreva("Idade do aluno: ",cadastrar_Idade[i],"\n")
        escreva("Nome do Responsavel: ",cadastrar_Responsavel[i],"\n")
        escreva("Número do Responsavel: ",cadastrar_Numero[i],"\n")
        escreva("\n\n:::::::::::::::::::::::::::::::::::\n\n")
      }senao se(pesquisa != cadastrar_Nomes[i] e i == cont){
        escreva("Aluno digitado não encontrado ou o nome digitado está incorreto\n")
      }
    }
    escreva("Digite ENTER para voltar ao MENU ou 0 para SAIR:")
    leia(sair)
    limpa()
  }
  funcao cadastrar(){
    faca{
      escreva("Escreva o nome do aluno que irá almoçar: ")
      leia(cadastrar_Nomes[cont])
      escreva("Escreva a idade do aluno: ")
      leia(cadastrar_Idade[cont])
      escreva("Digite o nome do responsavel pelo aluno: ")
      leia(cadastrar_Responsavel[cont])
      escreva("Digite o número de contato do responsavel: ")
      leia(cadastrar_Numero[cont])
      limpa()
      enquanto(vdd==falso){
        escreva("Digite quantos dias na semana o aluno irá almoçar: ")
        leia(dia_de_almoco[cont])
        se(dia_de_almoco[cont]>5 ou dia_de_almoco[cont]<1){
          escreva("Você digitou um número de dias da semana que não é possivel (A SEMANA TEM 5 DIAS)\n")
          escreva("\nAperte ENTER para Redigitar o dia: ")
          leia("")
          limpa()
        }senao{
          vdd=verdadeiro  
        }
      }
      escreva("Digite quais dias da semana o aluno irá almoçar: \n")
      para(inteiro i=0;i<dia_de_almoco[cont];i++){ 
        escreva("\n1)Segunda  2)Terça  3)Quarta  4)Quinta  5)Sexta\n")
        leia(dia_da_semana[i][cont])
        se(dia_da_semana[i][cont]!=1 e dia_da_semana[i][cont]!=2 e dia_da_semana[i][cont]!=3 e dia_da_semana[i][cont]!=4 e dia_da_semana[i][cont]!=5){
          i--
          escreva("\nNúmero digitado não corresponde a um dos dias da semana possíveis\n")
          escreva("\nAperte ENTER para Redigitar o dia: ")
          leia("")
          limpa()
        }
      }
      limpa()
      escreva("Cadastro feito com sucesso!\n\n")
      escreva("Deseja continuar cadastrando alunos?\n\n")
      escreva("::ENTER para continuar cadastrando\n")
      escreva("::M para voltar ao Menu\n")
      leia(confirmo)
      limpa()
      cont++
      vdd=falso
      se(confirmo =="m" ou confirmo =="M"){
        segue=falso
      }senao{
        segue=verdadeiro
      }
    }enquanto(segue)
    sair="M"
  }
  funcao deletar(){//funçao onde compacta a matriz e os vetores "deleta o que estava salvo"---------------------------------------------------------------------------
    escreva("Digite o nome do aluno que deseja deletar: ")
    leia(pesquisa)
    limpa()
    para(inteiro i=0;i<cont;i++){
        se(pesquisa==cadastrar_Nomes[i]){
          escreva(":::::::::::::::::::::::::::::::::::::::::::\n")
          escreva("_/--_/--_/--_/Dados do Aluno_/--_/--_/--_/\n")
          escreva(":::::::::::::::::::::::::::::::::::::::::::\n\n")
          escreva("Nome do aluno: ",cadastrar_Nomes[i],"\n")
          escreva("Dias que irá almoçar: ")
          para(inteiro j=0;j<dia_de_almoco[i];j++){
            escolha(dia_da_semana[j][i]){
              caso 1:
              escreva("Segunda ")
              pare
              caso 2:
              escreva("Terça ")
              pare
              caso 3:
              escreva("Quarta ")
              pare
              caso 4:
              escreva("Quinta ")
              pare
              caso 5:
              escreva("Sexta")
              pare
            }
          }
          escreva("\n")
          escreva("Idade do aluno: ",cadastrar_Idade[i],"\n")
          escreva("Nome do Responsavel: ",cadastrar_Responsavel[i],"\n")
          escreva("Número do Responsavel: ",cadastrar_Numero[i],"\n")
          escreva("\n\n:::::::::::::::::::::::::::::::::::\n\n")
          escreva("Deseja deletar esse aluno do registro? [S/N] ")
          leia(del)
          limpa()
          se(del=="s" ou del=="S"){
            para(inteiro i=0;i<cont;i++){
              se(pesquisa==cadastrar_Nomes[i]){
                para(inteiro j=0; j<cont-1; j++){
                  cadastrar_Idade[j]=cadastrar_Idade[j+1]
                  cadastrar_Nomes[j]=cadastrar_Nomes[j+1]
                  cadastrar_Numero[j]=cadastrar_Numero[j+1]
                  cadastrar_Responsavel[j]=cadastrar_Responsavel[j+1]
                }
              }
            }
            cont--
          }
        }
      }
    escreva("Digite ENTER para voltar ao MENU ou 0 para SAIR:")
    leia(sair)
    limpa() 
  }
}
