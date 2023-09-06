#include<stdio.h>
#include <stdbool.h>

//* Tipos de datos en C. Básicos y derivados.

int main() {
    
    //* Signed. Puede ser negativo.

    //! %c
    char uncaracter = 'a';   //* 1 byte // -128 a 127
    //! %s   
    char varios_caracteres[] = "Hola";   //* 5 bytes // -128 a 127
    //! %d   
    int numero_entero = -10;   //* 4 bytes // -2,147,483,648 a 2,147,483,647 
    //! %f  
    float numero_decimal = 1.5856987895456;   //* 4 bytes // 1.2E-38 a 3.4E+38 (32 bits)
    //! %lf
    double numero_decimal_largo = 1.5856987895456;   //* 8 bytes // 2.3E-308 a 1.7E+308 (64 bits)
    //! %i
    bool booleano = true;   //* 1 byte // 0 a 1
    //! %ld    
    long numero_entero_largo = 10;   //* 4 bytes // -2,147,483,648 a 2,147,483,647
    //! %lld
    long long numero_entero_largo_largo = 10;   //* 8 bytes // -9,223,372,036,854,775,808 a 9,223,372,036,854,775,807
    //! %hi    
    short numero_entero_corto = 10;   //* 2 bytes // -32,768 a 32,767
    

    //* Unsigned. No puede ser negativo.


    //! %hhu
    unsigned char caracter_sin_signo = 'n';   //* 1 byte // 0 a 255
    //! %hhu  
    unsigned char varios_caracteres_sin_signo[] = "Hola";   //* 5 bytes // 0 a 255
    //! %u   
    unsigned int numero_entero_sin_signo = 10;   //* 4 bytes // 0 a 4,294,967,295
    //! %lu
    unsigned long numero_entero_largo_sin_signo = 10;   //* 4 bytes // 0 a 4,294,967,295
    //! %llu
    unsigned long long numero_entero_largo_largo_sin_signo = 10;   //* 8 bytes // 0 a 18,446,744,073,709,551,615
    //! %hu
    unsigned short numero_entero_corto_sin_signo = 10;   //* 2 bytes // 0 a 65,535

    //****************************************************************************************

    // rintf("Un caracter es: \n%c\n", uncaracter);
    // printf("Varios caracteres son: \n%s\n", varios_caracteres);
    // printf("Un numero entero es: %d", numero_entero);
    printf("Un numero decimal es: \n%f\n", numero_decimal);
    printf("Un numero decimal largo es: \n%0.8lf\n", numero_decimal_largo);
    // printf("Un booleano es: \n%i\n", booleano);
    // printf("Un numero entero largo es: \n%ld\n", numero_entero_largo);
    // printf("Un numero entero largo largo es: \n%lld\n", numero_entero_largo_largo);
    // printf("Un numero entero corto es: \n%hi\n", numero_entero_corto);

    // printf("Un caracter sin signo es: \n%hhu\n", caracter_sin_signo);
    // printf("Varios caracteres sin signo son: \n%hhu\n", varios_caracteres_sin_signo);
    // printf("Un numero entero sin signo es: %u", numero_entero_sin_signo);
    // printf("Un numero entero largo sin signo es: \n%lu\n", numero_entero_largo_sin_signo);
    // printf("Un numero entero largo largo sin signo es: \n%llu\n", numero_entero_largo_largo_sin_signo);
    // printf("Un numero entero corto sin signo es: \n%hu\n", numero_entero_corto_sin_signo);

    
}