import './App.css';
import freeCodeCampoLogo from '../src/images/freecodecamp-logo.png';
import Boton from '../src/components/boton'

function App() {

    const manejarClic = () => {
      console.log('Clic');
    }

    const reiniciarContador = () => {
      console.log('Reiniciar');
    }

  return (
    <div className="App">
        <div className ='freecodecamp-logo-contenedor'>
        <img 
        className = 'freecodecamp-logo'
        src ={freeCodeCampoLogo}
        alt = 'logo de freecodecamp'
        />
    </div>
        <div className = 'contenedor-principal'>
        <Boton 
          texto = 'Clic'
          esBotonDeClic = {true}
          manejarClic = {manejarClic}
        />
        <Boton 
          texto = 'Reiniciar'
          esBotonDeClic = {false}
          manejarClic = {reiniciarContador}
        />

        </div>
    </div>
  );
}

export default App;
