using CAD.DSEjemploTableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CAD {
    public class CADEmpresa {
        private static EmpresaTableAdapter adaptador = new EmpresaTableAdapter();
        private static EmpleadoTableAdapter adaptador2 = new EmpleadoTableAdapter();

        public static CAD.DSEjemplo.EmpresaDataTable CogerEmpresas(){
            return adaptador.GetData();
        }

        public static string InsertarEmpresas(string CIF, string nombreEmpresa, string localidad, string dir, string email, string web, string telefono){
            String mensaje = "";
            int resultado = adaptador.Insert(CIF,nombreEmpresa,localidad,dir,email,web,int.Parse(telefono));
            if (resultado == 1)
                mensaje = "Empresa creada correctamente";
            else
                mensaje = "Error, la empresa no ha sido creada";
            return mensaje;
        }

        public static CAD.DSEjemplo.EmpresaDataTable BuscarEmpresaPorLocalidad(string localidad){
            return adaptador.BuscarPorLocalidad(localidad);
        }


        public static CAD.DSEjemplo.EmpleadoDataTable CogerEmpleado() {
            return adaptador2.GetData();
        }

        public static string InsertarEmpleado(string txtid, string txtNombre, string txtDNI, string txtEmail, string txtTelefono, string txtLocalidad, string txtDireccion){
            String mensaje = "";
            int resultado = adaptador2.Insert(int.Parse(txtid), txtNombre, txtDNI, txtEmail, int.Parse(txtTelefono), txtLocalidad, txtDireccion);
            if (resultado == 1)
                mensaje = "Empleado creado correctamente";
            else
                mensaje = "Error, el empleado no ha sido creada";
            return mensaje;
        }

        public static CAD.DSEjemplo.EmpleadoDataTable BuscarEmpleadoaPorLocalidad(string localidad){
            return adaptador2.BuscarPorEmpleado(localidad);
        }
    }
}
