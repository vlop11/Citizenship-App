//
//  ViewController.swift
//  Citizenship Test
//
//  Created by Valeria Lopez
//  Copyright © 2019 Valeria Lopez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        questionLabel.text = questionBank[1]?[0]
        // Do any additional setup after loading the view.
    }
    
    var currentQuestion = 1
    var questionBank = [1: ["¿Cuál es la ley suprema de la nación?", "la Constitución"],
                        2: ["¿Qué hace la Constitución?", "establece el gobierno, define el gobierno, protege los derechos básicos de los ciudadanos estadounidenses"],
                        3: ["Las primeras tres palabras de la Constitución contienen la idea del autogobierno (de que el pueblo se gobierna a sí mismo). ¿Cuáles son estas palabras?", "Nosotros, el pueblo"],
                        4: ["¿Qué es una enmienda?", "un cambio (a la Constitución), una adición (a la Constitución)"],
                        5: ["¿Con qué nombre se conocen las primeras diez enmiendas a la Constitución?", "la Carta de Derechos"],
                        6: ["¿Cuál es un derecho o libertad que la Primera Enmienda garantiza?", "expresión, religión, reunión, prensa, peticionar al gobierno"],
                        7: ["¿Cuántas enmiendas tiene la Constitución?", "veintisiete (27)"],
                        8: ["¿Qué hizo la Declaración de Independencia?", "anunció nuestra independencia (de Gran Bretaña), declaró nuestra independencia (de Gran Bretaña), dijo que los Estados Unidos se independizó (de Gran Bretaña)"],
                        9: ["¿Cuáles son dos derechos en la Declaración de la Independencia?", "la vida, la libertad, la búsqueda de la felicidad"],
                        10: ["¿En qué consiste la libertad de religión?", "Se puede practicar cualquier religión o no practicar ninguna."],
                        11: ["¿Cuál es el sistema económico de los Estados Unidos?", "economía capitalista, economía de mercado"],
                        12: ["¿En qué consiste el “estado de derecho” (ley y orden)?", "Todos deben obedecer la ley, Los líderes deben obedecer la ley, El gobierno debe obedecer la ley, Nadie está por encima de la ley"],
                        13: ["Nombre una rama o parte del gobierno.", "Congreso, Poder legislativo, Presidente, Poder ejecutivo, Los tribunales, Poder judicial"],
                        14: ["¿Qué es lo que evita que una rama del gobierno se vuelva demasiado poderosa?", "pesos y contrapesos, separación de poderes"],
                        15: ["¿Quién está a cargo de la rama ejecutiva?", "el Presidente"],
                        16: ["¿Quién crea las leyes federales?", "el Congreso, el Senado y la Cámara (de Representantes), la legislatura (nacional o de los Estados Unidos)"],
                        17: ["¿Cuáles son las dos partes que integran el Congreso de los Estados Unidos?", "el Senado y la Cámara (de Representantes)"],
                        18: ["¿Cuántos senadores de los Estados Unidos hay?", "cien (100)"],
                        19: ["¿De cuántos años es el término de elección de un senador de los Estados Unidos?", "seis (6)"],
                        20: ["Nombre a uno de los senadores actuales del estado donde usted vive.", "Johnny Isakson y David Perdue (GA)"],
                        21: ["¿Cuántos miembros votantes tiene la Cámara de Representantes?", "cuatrocientos treinta y cinco (435)"],
                        22: ["¿De cuántos años es el término de elección de un representante de los Estados Unidos?", "dos (2)"],
                        23: ["Dé el nombre de su representante a nivel nacional.", "Doug Collins (GA 9)"],
                        24: ["¿Por qué tienen algunos estados más representantes que otros?", "(debido a) la población del estado"],
                        25: ["¿De cuántos años es el término de elección de un presidente?", "cuatro (4)"],
                        26: ["¿De cuántos años es el término de elección de un presidente?", "cuatro (4)"],
                        27: ["¿En qué mes votamos por un nuevo presidente?", "noviembre"],
                        28: ["¿Cómo se llama el actual Presidente de los Estados Unidos?", "Donald Trump"],
                        29: ["¿Cómo se llama el actual Vicepresidente de los Estados Unidos?", "Mike Pence"],
                        30: [" Si el Presidente ya no puede cumplir sus funciones, ¿quién se convierte en Presidente?", "el Vicepresidente"],
                        31: ["Si tanto el Presidente como el Vicepresidente ya no pueden cumplir sus funciones, ¿quién se convierte en Presidente?", "el Presidente de la Cámara de Representantes"],
                        32: ["¿Quién es el Comandante en Jefe de las Fuerzas Armadas?", "el Presidente"],
                        33: ["¿Quién firma los proyectos de ley para convertirlos en ley?", "el Presidente"],
                        34: [" ¿Quién veta los proyectos de ley?", "el Presidente"],
                        35: ["¿Qué hace el Gabinete del Presidente?", "asesora al Presidente"],
                        36: ["¿Cuáles son dos puestos a nivel de gabinete?", "Secretario de Agricultura, Secretario de Comercio, Secretario de Defensa, Secretario de Educación, Secretario de Energía, Secretario de Salud y Servicios Humanos, Secretario de Seguridad Nacional, Secretario de Vivienda y Desarrollo Urbano, Secretario del Interior, Secretario del Trabajo, Secretario de Estado, Secretario de Transporte, Secretario del Tesoro, Secretario de Asuntos de los Veteranos, Procurador General, Vicepresidente"],
                        37: ["¿Qué hace la rama judicial?", "revisa las leyes, explica las leyes, resuelve disputas (desacuerdos), decide si una ley va en contra de la Constitución"],
                        38: ["¿Cuál es el tribunal más alto de los Estados Unidos?", "la Corte Suprema"],
                        39: ["¿Cuántos jueces hay en la Corte Suprema?", "nueve (9)"],
                        40: ["¿Quién es el presidente actual de la Corte Suprema de los Estados Unidos?", "John Roberts"],
                        41: ["De acuerdo a nuestra Constitución, algunos poderes pertenecen al gobierno federal. ¿Cuál es un poder del gobierno federal?", "imprimir dinero, declarar la guerra, crear un ejército, suscribir tratados"]]
    
    
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBAction func nextTapped(_ sender: UIButton) {
        
        questionLabel.text = questionBank[currentQuestion]?[0]
        answerLabel.text = ""
    
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
    
        answerLabel.text = questionBank[currentQuestion]?[1]
        currentQuestion += 1
        
    }
    
    
}

