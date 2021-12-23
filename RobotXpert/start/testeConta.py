from ContaLibrary import *

conta = ContaLibrary()
conta.abrir_conta()
conta.deposita(100.00)
print(conta.obter_saldo())


printMessage = PrintMessage()
printMessage.printSoma(2, 3)
printMessage.printMessageLn("Olá Pam")
