object tom {
    var energia = 50
    var raton_comido =  jerry

    method velocidad_maxima(){
        return  5 + energia/10
    }

    method comer_raton(raton){
        energia = energia + (12 + raton.peso())
        raton_comido = raton
    }

    method correr(metros){
        energia = energia - metros/2 
    }
}

object jerry {
    var edad = 2

    method peso(){
        return edad*20
    }

    method cumple_años(){
        edad += 1
    }
  
}

object nibbles {
    method peso(){
        return 35
    }
  
}

// Inventar otro ratón