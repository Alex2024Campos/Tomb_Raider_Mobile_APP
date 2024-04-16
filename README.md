# TutorialGit
Dupla: Alex Campos de Oliveira e Christian Varandas (2°Mtec Jogos Digitais).

Um tutorial passo a passo para uso do Git, movendo arquivos para o repositório do GitHub. Abaixo, iremos apresentar o passo a passo para concluir tal objetivo:


1° Passo: Você precisa utilizar o git init para iniciar as suas modificações. O git gnit irá pegar a pasta que você criou com o seu arquivo.

![image](https://github.com/ChristianVarandas/TutorialGit/assets/160960774/88690e44-5ecc-4568-93b2-e6fe0c9fca6d)


2° Passo: Utilizando de git config --global user.name "" e git config --global user.email "" você irá logar, passo o qual é necessário para continuar.

![image](https://github.com/ChristianVarandas/TutorialGit/assets/160960774/fc2493d3-39ea-4e09-b2d1-acdacd2dad40)


3° Passo: Usando o git checkout -b main, criamos uma nova ramificação (branch) do nosso projeto que seja uma Main ao invés de Master, assim continuando o projeto.

![image](https://github.com/ChristianVarandas/TutorialGit/assets/160960774/ccaf1acf-c6eb-4531-880a-3061e38eb976)


4° Passo: Utilizamos o git remote add origin (link do repositório) para meio que conectar o repositório do Github com o Git, permitindo assim que as edições feitas fora do Github apareçam no site.

![image](https://github.com/ChristianVarandas/TutorialGit/assets/160960774/74fef5fb-b740-48cb-b78c-4d7f6a56b841)


5° Passo: Utilizamos o git pull --allow-unrelated-histories (link do repositório) para recuperar os arquivos do servidor e mesclar com os locais. Em outras palavras, pegar os arquivos do servidor e juntar com os arquivos que estiverem na pasta que você está utilizando.

![image](https://github.com/ChristianVarandas/TutorialGit/assets/160960774/64654385-bcf2-4a86-9be3-6569d8669eb5)


6° Passo: Com o git add podemos adicionar o nosso novo ou primeiro arquivo da pasta no Git utilizando de git add . (para adicionar todos os arquivos da pasta que já não estiverem adicionados) ou git add "" (para adicionar um arquivo específico).

![image](https://github.com/ChristianVarandas/TutorialGit/assets/160960774/371371f4-7ab5-4966-a924-59425cb7afd3)


7° Passo: Agora, você utiliza do git commit para comentar o que seria aquele arquivo ou para o que serviria (ou git commit -a que efetua todas as alterações dos arquivos monitorados ou o commit -m que comenta mas não o envia para o repositório remoto ou também commit -am combina ambas as opções e por último, commit -amend 
que modifica o último commit utilizado).

![image](https://github.com/ChristianVarandas/TutorialGit/assets/160960774/b93dfbf6-3ade-41d2-a77a-697f4e296200)


8° Passo: Com o git push origin main (ou master) você leva as alterações ou os arquivos para o repositório no GitHub.

![image](https://github.com/ChristianVarandas/TutorialGit/assets/160960774/70573353-3cbf-4ab7-a9c8-1180c7a2f096)


Extra: Utilizando o Git Status podemos analisar se tem algum arquivo ainda não conectado ao Git ou ver se ele já foi conectado.
Para pegar um repositório para edita-lo ou por outro motivo, é possível utiliza-se do Git Clone (url do repositório) para somente clonar o mesmo e depois fazer o que você quer.


![image](https://github.com/ChristianVarandas/TutorialGit/assets/160960774/f96b9846-08de-4982-b03a-19db6a24fdcb)

![image](https://github.com/ChristianVarandas/TutorialGit/assets/160960774/379ed847-ff07-4bd3-b5cf-075525fcff6d)

Resultado final: 

![image](https://github.com/ChristianVarandas/TutorialGit/assets/160960774/c1488046-525f-46c6-957e-d77533842c74)
