using System;
using System.Web.UI.WebControls;

namespace Proyecto_Calculadora
{
    public partial class CalculadoraWebForm : System.Web.UI.Page //Heredar o tener acceso a la clase hereda de la clase System.Web.UI.Page. para funcionalidades de asp.net
    {
       // estas clases usan ViewState para mantener los valores en cada solicitud y no perder los valores de numero1 y operador
        protected double numero1
        {
            get
            {
                if (ViewState["numero1"] == null)
                {
                    return 0;
                }
                return (double)ViewState["numero1"];
            }
            set
            {
                ViewState["numero1"] = value;
            }
        }
        protected double numero2
        {
            get
            {
                if (ViewState["numero2"] == null)
                {
                    return 0;
                }
                return (double)ViewState["numero2"];
            }
            set
            {
                ViewState["numero2"] = value;
            }
        }
        protected string operador
        {
            get
            {
                return (string)ViewState["operador"];
            }
            set
            {
                ViewState["operador"] = value;
            }
        }

        protected void agregarNumero(object sender, EventArgs e)
        {
            var boton = (Button)sender;
            if (Tresultado.Text == "0")
            {
                Tresultado.Text = boton.Text;
            }
            else
            {
                Tresultado.Text += boton.Text;
            }
        }

        protected void BoperadorClick(object sender, EventArgs e)
        {
            var boton = (Button)sender;

            if (operador != null)
            {
                // Si ya hay un operador, calcula el resultado actual
                Bcalcular_Click(null, null);
            }

            numero1 = Convert.ToDouble(Tresultado.Text);
            operador = Convert.ToString(boton.Text);
            Tresultado.Text = "0";
        }

        protected void Bcalcular_Click(object sender, EventArgs e)
        {
            if (operador != null)
            {
                numero2 = Convert.ToDouble(Tresultado.Text);

                double resultado = 0;
                switch (operador)
                {
                    case "+":
                        resultado = numero1 + numero2;
                        break;
                    case "-":
                        resultado = numero1 - numero2;
                        break;
                    case "x":
                        resultado = numero1 * numero2;
                        break;
                    case "÷":
                        if (numero2 != 0)
                        {
                            resultado = numero1 / numero2;
                        }
                        else
                        {
                            Tresultado.Text = "Error"; // Manejar división por cero
                            return;
                        }
                        break;
                    case "√":
                        resultado = Math.Sqrt(numero1); // Raíz cuadrada de numero1
                        numero1 = resultado; 
                        operador = null;
                        break;
                    case "x^y":
                        resultado = Math.Pow(numero1, numero2); // Potencia de numero1 a la potencia de numero2
                        numero1 = resultado;
                        operador = null;
                        break;
                    case "10^x":
                        resultado = Math.Pow(10, numero1); // Notación científica (10 elevado a la potencia de numero1)
                        numero1 = resultado; 
                        operador = null; 
                        break;
                    case "log":
                        resultado = Math.Log10(numero1); // Logaritmo base 10 de numero1
                        numero1 = resultado; 
                        operador = null; 
                        break;
                    case "x²":
                        resultado = numero1 * numero1; // Elevar numero1 al cuadrado
                        numero1 = resultado; 
                        operador = null; 
                        break;
                    case "n!":
                        resultado = Factorial((int)numero1); // Calcular el factorial de numero1
                        numero1 = resultado;
                        operador = null;
                        break;
                }

                Tresultado.Text = resultado.ToString();
                numero1 = resultado;
                operador = null; // Restablecer el operador a null
            }
        }

        private double Factorial(double n)
        {
            if (n == 0)
                return 1;
            else if (n < 0)
            {
                Tresultado.Text = "Error"; // Manejar factoriales de números negativos
                return 0;
            }
            else
                return n * Factorial(n - 1);
        }

        protected void Bclear_Click(object sender, EventArgs e)
        {
            numero1 = 0;
            numero2 = 0;
            operador = null;
            Tresultado.Text = "0";
        }

        protected void Bcomadec_Click(object sender, EventArgs e)
        {
            // Verificar si ya hay una coma decimal en el valor actual del TextBox
            if (!Tresultado.Text.Contains("."))
            {
                Tresultado.Text += ".";
            }
        }

        protected void Bcambiosigno_Click(object sender, EventArgs e)
        {
            if (Tresultado.Text != "0")
            {
                double numero = Convert.ToDouble(Tresultado.Text);
                numero = -numero; // Cambiar el signo del número
                Tresultado.Text = numero.ToString();
            }
        }

        protected void Bborrar_Click(object sender, EventArgs e)
        {
            if (Tresultado.Text.Length > 0)
            {
                Tresultado.Text = Tresultado.Text.Substring(0, Tresultado.Text.Length - 1);
            }
        }
    }
}