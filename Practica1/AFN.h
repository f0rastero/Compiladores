#include<iostream>
#include<vector>
using namespace std;

class AFN{
    private:
    int inicial;
    int finales [10];
    std::vector<Transicion> transiciones;

    Public:
    AFN();
    void carga();
    void cargaTransiciones();
    bool esAFN();
    
}