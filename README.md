# Trabalho de rails de programação web

Para executar, basta rodar
```
$ bundle install
$ rails db:migrate
$ rails s
```

e acessar ```localhost:3198```

Relacionamentos
- One to One: Identidade e Discente
- One to Many: Docente e Disciplinas
- Many to Many: Disciplinas e Discentes

## Para rodar na litorina

Executar no seu computador
```
ssh -L 3000:litorina:3198 <usuário>@macalan.c3sl.ufpr.br
```

Executar no diretório T5 do usuário dobn17 da litorina
```
rails s -b 0.0.0.0 -p 3198
```