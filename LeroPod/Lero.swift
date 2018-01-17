//
//  Lero.swift
//  LeroPod
//
//  Created by Swift on 17/01/2018.
//  Copyright © 2018 Swift. All rights reserved.
//

import UIKit

let leros = [
    [
        "Fala pro cliente que ",
        "Com este commit, ",
        "Nesse pull request, ",
        "Dado o fluxo de dados atual, ",
        "Explica pro Product Onwer que ",
        "Desde ontem a noite ",
        "A equipe de suporte precisa saber que ",
        ],
    [
        "a normalização da data ",
        "um erro não identificado ",
        "o gerenciador de dependências do frontend ",
        "o módulo de recursão paralela ",
        "a otimização de performance da renderização do DOM ",
        "a disposição dos elementos HTML ",
        "a compilação final do programa ",
        "o deploy automatizado no Heroku ",
        "o último pull request desse SCRUM ",
        ],
    [
        "deletou todas as entradas ",
        "otimizou a renderização ",
        "causou o bug ",
        "corrigiu o bug ",
        "superou o desempenho ",
        "complexificou o merge ",
        "facilitou a resolução de conflito ",
        "causou a race condition ",
        ],
    [
        "do nosso servidor de DNS.",
        "do polimorfismo aplicado nas classes.",
        "do fluxo de dados de forma retroativa no server.",
        "de estados estáticos nos componentes da UI.",
        "do JSON compilado a partir de proto-buffers.",
        "de uma compilação com tempo acima da media.",
        "de uma configuração Webpack eficiente nos builds.",
        "da execução parelela de funções em multi-threads.",
        "de compilação multi-plataforma de forma asincrona.",
        "da execução de requisições effcientes na API.",
        "na estabilidade do protocolo de transferência de dados.",
        "do carregamento de JSON delimitado por linhas.",
        "na interpolação dinâmica de strings.",
        "no parse retroativo do DOM.",
        "no fechamento automático das tags.",
        "na compilação de templates literais.",
        "na definição de variaveis com tipos estáticos.",
        "da renderização de floats parciais.",
        "na organização alfanumérico dos arrays multidimensionais",
        "dos parametros passados em funções privadas.",
        "dos argumentos que definem um schema dinâmico.",
        "na criação de novos polyfills para suportar os processos."
    ]
]

public class Lero: NSObject {
    
    public class func generateLero() -> String {
        guard let newLero = leros.first else {return ""}
        var lero = [String]()
        for i in 0...newLero.count - 1 {
            lero.append(newLero[i])
        }
        return lero.reduce("", +)
    }
    
    public class func generateRandomLero() -> String {
        guard let newLero = leros.first else {return ""}
        let randomIndex = Int(arc4random_uniform(UInt32(newLero.count)))
        return newLero[randomIndex]
    }
}
