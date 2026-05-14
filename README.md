<h1 align="center">💼 Gerenciamento de “Tinder” de Emprego</h1>

<p align="center">
Uma plataforma de busca de emprego inspirada no modelo do Tinder, permitindo conexão entre candidatos e empresas através de um sistema de <strong>Match</strong>.
</p>

<hr>

<h2>📌 Sobre o Projeto</h2>

<p>
O sistema será uma plataforma de recrutamento mais simplificada e dinâmica, baseada no modelo de funcionamento do Tinder.
</p>

<p>
Os candidatos poderão criar seus perfis, adicionar currículos, experiências e habilidades. Já as empresas poderão visualizar candidatos conforme suas necessidades e demonstrar interesse neles.
</p>

<p>
Da mesma forma, os candidatos poderão visualizar vagas disponíveis e escolher aquelas que mais combinam com seu perfil.
</p>

<p>
Quando houver interesse mútuo entre empresa e candidato, será gerado um <strong>“MATCH”</strong>, liberando:
</p>

<ul>
  <li>📧 Acesso aos contatos</li>
  <li>💬 Chat interno da plataforma</li>
  <li>📅 Possibilidade de marcar entrevistas</li>
  <li>🔔 Sistema de notificações</li>
</ul>

<hr>

<h2>⚙️ Requisitos do Sistema</h2>

<ul>
  <li>O sistema deve integrar os usuários ao seu devido lugar na plataforma.</li>
  <li>Permitir criação de perfil para candidatos e empresas.</li>
  <li>Exibir opções disponíveis para cada usuário.</li>
  <li>Permitir escolhas de “Sim” ou “Não”.</li>
  <li>Permitir visualização de mais detalhes.</li>
  <li>Gerar um “MATCH” quando houver interesse mútuo.</li>
  <li>Permitir comunicação via chat interno.</li>
  <li>Enviar notificações de match e mensagens.</li>
</ul>

<hr>

<h2>🧩 Entidades do Sistema</h2>

<ul>
  <li>Usuário</li>
  <li>Candidato</li>
  <li>Empresa</li>
  <li>Experiência Profissional</li>
  <li>Currículo</li>
  <li>Vaga</li>
  <li>Match</li>
  <li>Mensagem</li>
  <li>Avaliação</li>
  <li>Notificação</li>
</ul>

<hr>

<h2>🗂️ MER Textual</h2>

<h3>👤 Usuário</h3>

<ul>
  <li>ID_Usuário (PK)</li>
  <li>Nome</li>
  <li>CPF / CNPJ</li>
  <li>Email</li>
  <li>Número</li>
</ul>

<hr>

<h3>🧑‍💼 Candidato</h3>

<ul>
  <li>ID_Candidato (PK)</li>
  <li>Nome</li>
  <li>CPF</li>
  <li>Contato</li>
  <li>Currículo</li>
  <li>Habilidades Técnicas</li>
  <li>Formação Acadêmica</li>
  <li>Competências Técnicas</li>
  <li>Vaga Pretendida</li>
  <li>ID_Usuário (FK)</li>
</ul>

<hr>

<h3>🏢 Empresa</h3>

<ul>
  <li>ID_Empresa (PK)</li>
  <li>CNPJ</li>
  <li>Contato</li>
  <li>Nome Empresa</li>
  <li>E-mail Corporativo</li>
  <li>CEP (Localização)</li>
  <li>Website</li>
  <li>Vaga Estabelecida</li>
  <li>Data de Fundação</li>
  <li>Número de Funcionários</li>
  <li>Reputação</li>
  <li>Tipo de Empresa</li>
  <li>ID_Usuário (FK)</li>
</ul>

<hr>

<h3>💼 Experiência Profissional</h3>

<ul>
  <li>ID_Experiência (PK)</li>
  <li>Área em que trabalha</li>
  <li>Tempo que atua</li>
  <li>Cargo</li>
  <li>Data Término</li>
  <li>Data Início</li>
  <li>Habilidades Aplicadas</li>
  <li>Tipo de Vínculo (CLT, PJ)</li>
  <li>ID_Candidato (FK)</li>
</ul>

<hr>

<h3>📄 Currículo</h3>

<ul>
  <li>ID_Curriculo (PK)</li>
  <li>Nome</li>
  <li>Endereço</li>
  <li>Contato</li>
  <li>LinkedIn / Portfólio</li>
  <li>Cargo / Área de Interesse</li>
  <li>Cursos</li>
  <li>Conhecimentos Técnicos</li>
  <li>ID_Experiência (FK)</li>
  <li>ID_Candidato (FK)</li>
</ul>

<hr>

<h3>📌 Vaga</h3>

<ul>
  <li>ID_Vaga (PK)</li>
  <li>Título da Vaga</li>
  <li>Descrição</li>
  <li>Salário</li>
  <li>Data de Publicação</li>
  <li>Data de Expiração</li>
  <li>Contato Empresa</li>
  <li>Nível de Experiência</li>
  <li>Status</li>
  <li>ID_Empresa (FK)</li>
</ul>

<hr>

<h3>⭐ Avaliação</h3>

<ul>
  <li>ID_Avaliação (PK)</li>
  <li>Nota</li>
  <li>Comentário</li>
  <li>ID_Candidato (FK)</li>
  <li>ID_Empresa (FK)</li>
</ul>

<hr>

<h3>❤️ Match</h3>

<ul>
  <li>ID_Match (PK)</li>
  <li>User Candidato</li>
  <li>User Empresa</li>
  <li>Data que ocorreu</li>
  <li>Likes</li>
  <li>ID_Usuario (FK)</li>
  <li>ID_Empresa (FK)</li>
  <li>ID_Candidato (FK)</li>
</ul>

<hr>

<h3>💬 Mensagem</h3>

<ul>
  <li>ID_Mensagem (PK)</li>
  <li>Conteúdo Texto</li>
  <li>Tipo Mensagem</li>
  <li>Marcar Mensagem</li>
  <li>Data de Envio</li>
  <li>Visualização</li>
  <li>Anexo</li>
  <li>ID_Candidato (FK)</li>
  <li>ID_Empresa (FK)</li>
  <li>ID_Match (FK)</li>
</ul>

<hr>

<h3>🔔 Notificação</h3>

<ul>
  <li>ID_Notificação (PK)</li>
  <li>Identificação</li>
  <li>Título</li>
  <li>Data de Criação</li>
  <li>Data de Envio</li>
  <li>ID_Usuário (FK)</li>
</ul>

<hr>

<h2>🔗 Relacionamentos</h2>

<ul>
  <li><strong>Usuário → Candidato (1:1)</strong> — O usuário se cadastra como candidato.</li>

  <li><strong>Usuário → Empresa (1:1)</strong> — O usuário se cadastra como empresa.</li>

  <li><strong>Candidato → Experiência (1:N)</strong> — O candidato pode possuir várias experiências profissionais.</li>

  <li><strong>Candidato → Currículo (1:1)</strong> — O candidato envia seu currículo.</li>

  <li><strong>Candidato → Empresa (N:N)</strong> — Os candidatos demonstram interesse nas empresas.</li>

  <li><strong>Candidato → Avaliação (N:N)</strong> — Os candidatos podem avaliar empresas.</li>

  <li><strong>Empresa → Avaliação (N:N)</strong> — As empresas podem avaliar candidatos.</li>

  <li><strong>Empresa → Candidato (N:N)</strong> — Empresas procuram candidatos compatíveis.</li>

  <li><strong>Empresa → Vaga (1:N)</strong> — Empresas publicam vagas disponíveis.</li>

  <li><strong>Empresa → Currículo (N:N)</strong> — Empresas analisam currículos enviados.</li>

  <li><strong>Currículo → Vaga (N:N)</strong> — Currículos podem ser enviados para vagas.</li>

  <li><strong>Currículo → Experiência (1:N)</strong> — Um currículo possui diversas experiências.</li>

  <li><strong>Match → Usuário (N:N)</strong> — Usuários podem ter vários matches.</li>

  <li><strong>Match → Notificação (1:1)</strong> — Cada match gera uma notificação.</li>

  <li><strong>Match → Mensagem (1:1)</strong> — Cada match libera um chat.</li>

  <li><strong>Mensagem → Notificação (N:N)</strong> — Mensagens recebidas geram notificações.</li>
</ul>

<hr>

<h2>🚀 Funcionalidades Futuras</h2>

<ul>
  <li>Sistema de recomendação de vagas</li>
  <li>Filtro avançado de candidatos</li>
  <li>Integração com LinkedIn</li>
  <li>Videochamada para entrevistas</li>
  <li>Dashboard administrativo</li>
</ul>

<hr>

<h2>🛠️ Tecnologias Utilizadas</h2>

<ul>
  <li>HTML5</li>
  <li>CSS3</li>
  <li>JavaScript</li>
  <li>Node.js</li>
  <li>MySQL</li>
</ul>

<hr>

<h2 align="center">📚 Projeto Acadêmico</h2>

<p align="center">
Desenvolvido para fins acadêmicos e aprendizado em modelagem de banco de dados e desenvolvimento web.
</p>
