#include<iostream>
#include<vector>
using namespace std; 

void AFN (){

   void AFN::carga(string nombre){
    file.open(nombre, ios::out);  //Abre el archivo, si no existe se crea un archivo de lo contrario manda mensaje de error
    if(file.fail()){
        std::cout << "error al abrir el archivo\n";
        exit(1);
    }
    file.close();
}

void AFN::cargaTransiciones(string nombre){
    try{
        string linea;   //Almacenamos la cadena que se escribe en el archivo
        int inicio, fin;
        const char *c;

        file.open(nombre.c_str());
        if(file.fail()){
            std::cout << "error al abrir el archivo\n";
            exit(1);
        }
        getline(file, linea);
        
        


        file.close();
    }catch(const std::exception& e){

    }
}
    
}