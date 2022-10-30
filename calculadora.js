function somar (valor1 = required(), valor2 = required()) {
    return  valor1 + valor2;

}

console.log(somar(2,3))   

function  subtracao (valor1 = required(), valor2 = required()) {
    return valor1 - valor2;
}

console.log(subtracao(4,2))

function  multiplicacao (valor1 = required(), valor2 = required()) {
    return valor1 * valor2;
}

console.log(multiplicacao(5,2))


function  divisao (valor1 = required(), valor2 = required()) {
    return valor1 / valor2;
}

console.log(divisao(8,2))


console.log(`Resultado da soma é: ${somar(3,2)}`)
console.log(`Resultado da subtração é: ${subtracao(4,2)}`)
console.log(`Resultado da multiplicação é: ${multiplicacao(3,2)}`)
console.log(`Resultado da divisão é: ${divisao(8,2)}`)
console.log(`Resultado da divisão é: ${divisao(8,0)}`)


function quadradoDoNumero(valor1,valor2) {
    return valor1 ** valor2;
}

console.log(quadradoDoNumero(8,multiplicacao(1,2)))


function mediaDeTresNumeros(valor1,valor2,valor3) {
    const somaDaMedia = valor1 + valor2 + valor3;
    return divisao(somaDaMedia,3)

}

console.log(mediaDeTresNumeros(4,2,5))


function calculaPorcentagem (valor1, valor2){
    const porcentagem = divisao(valor2,100)
    return multiplicacao(porcentagem,valor1)

}

console.log(`${calculaPorcentagem(300,15)}%`)


function geradorDePorcentagem(valor1, valor2) {
    const porcentagem = divisao(valor2,100);
    return divisao(valor1, porcentagem)
}

console.log(`${geradorDePorcentagem(2,200)}%`)
