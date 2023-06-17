module MainHelper
    # inicio dashboard aluno
    def descricao_curso(id_curso)
        desc_curso = Curso.find(id_curso)

        if !desc_curso.nil?
            return desc_curso.descricao
        end
    end

    def pagamento_curso(id_pagamento)
        pag_curso = CursoPagamento.find(id_pagamento)

        if !pag_curso.nil?
            if pag_curso.aprovado == 0
                return "Pagamento nao aprovado"
            else
                return "Pagamento aprovado"
            end
        end
    end

    def curso_adicionado(id_curso) 
        curso = CursosAluno.where(id_curso: id_curso, id_aluno: current_aluno.id)
        
        if curso.empty?
            return true;
        else
            return false;
        end
    end
    # fim dashboard aluno

    # inicio dashboard admin
    def curso_pago(pagamento)
        if pagamento == 0
            return "Pagamento nao aprovado"
        elsif pagamento == 1
            return "aprovado"
        end
    end
    # fim dashboard admin

end
