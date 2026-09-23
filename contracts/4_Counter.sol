// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Counter {
    // Variable de estado que almacena el valor del contador
    uint256 public count;

    // Función para obtener el valor actual (opcional, ya que "public" crea un getter automático)
    function get() public view returns (uint256) {
        return count;
    }

    // Función para incrementar el contador en 1
    function inc() public {
        count += 1;
    }

    // Función para reducir el contador en 1
    function dec() public {
        // En versiones de Solidity 0.8.0 o superiores, 
        // esto fallará automáticamente y revertirá la transacción si count es 0
        count -= 1;
    }
}