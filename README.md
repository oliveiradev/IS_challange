# O Desafio

O desafio era matricular um aluno em uma determinada matéria ,
 gerando um processo de matrícula deste aluno.

## Lógica de negócio

  * A uma entidade chamada **Student**, que possui apenas **name** e **register_number**
  * A uma entidade chamada **House**, com **name** e **description**
  * A uma entidade chamada **ClassRoom**, com **student_id** (relacionamento com Student) e **course_id** (relacionamento com Course)

Após cadastro das duas primeiras entidades citadas haverá
possibilidade de associar um aluno a um curso , dessa forma surgi a
terceira entidade que é responsável por registrar essa associação.

## Testes

Este app foi construído usando RSpec para testes. Tentei cobrir o máximo possível sobre o código.
