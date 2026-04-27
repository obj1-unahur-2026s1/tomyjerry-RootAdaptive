object tom {
    var energia = 50
    var raton_comido =  jerry

    method energia_actual(){return energia}
    
    method velocidad_maxima(){
        return  5 + energia/10
    }

    method puede_cazar_raton_a(distancia){
        return energia >= distancia/2
    }

    method comer_raton(raton){
        energia = energia + (12 + raton.peso())
        raton_comido = raton
    }

    method comer_raton_a_si_puede(raton, distancia){
        if (self.puede_cazar_raton_a(distancia)){
            self.correr(distancia)
            self.comer_raton(raton)
        }
        
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
object chesare {
    var quesos_comidos = 0
    
    method peso(){ 
        return  20 + quesos_comidos * queso.peso()
    }

    method comer_un_queso (){
        quesos_comidos += 1
    }
}

object queso {
    method peso(){return 5}
}

