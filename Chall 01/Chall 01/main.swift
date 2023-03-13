//
//  main.swift
//
//  Desafio do Pedro 01: Crie uma lógica que corrija os links do protocolo
//  http para https assim tornando-se mais seguros.
//
//  Created by user on 10/03/23.
//

import Foundation

let urls = [
    "https://www.apple.com",
    "http://www.meusite.com.br",
    "http://www.sitebila.com",
    "https://www.ceara.com",
    "https://www.iphone.com"
    ]

var correctUrls: [String] = []
var temporary: [String] = []

for letter in urls {
    if let index = letter.firstIndex(of: ":") {
        let after = letter.index(after: index)
        var antes = letter[...index]
        var depois = letter[index...]
        
        if antes == "http:" {
            antes = "https"
        }
        
        var soma = antes + depois
        temporary.append("\(soma)")
    }
}

correctUrls.append(contentsOf: temporary)
print(urls)
print(correctUrls)


/*
 Explicando o código:
    (1) Criando um laço para percorrer as strings que estão dentro do array "urls", depois defini um marco, chamei
    de ":" pois a partir dos dois pontos é que temos o endereço do link.
 
    (2) Feito esse passo, armazeno tudo que for atrás do index na variavel "antes", e o resto na variavel "depois"
 
    (3) Então estabeleço que se a variavel antes apresentar o protocolo sem o "s" ele o adiciona.
 
    (4) Depois faço a concatenação das strings unindo o antes e o depois na variável "soma" e adiciono ela na
    variável temporária e transfiro esses dados para o array "correctUrls".
 */
