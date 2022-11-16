import mysql.connector

class Conectar():

    def __init__(self) -> None:
        try:
            self.conexion = mysql.connector.connect(
                host = 'localhost',
                port = 3306,
                user = 'root',
                password = 'Contraseñamascotillas',
                db = 'mascotillas'

            )
        except mysql.connector.Error as descripcionError:
            print("¡No se conectó!",descripcionError)

#PRIMERA OPERACIÓN DEL CRUD: CREATE O INSERT.
    def InsertarValor(self, idUsuario, usuario, contraseña, Tienda_idProducto):
        if self.conexion.is_connected():
            try:
                cursor = self.conexion.cursor()
                sentenciaSQL= "INSERT INTO Usuario 'idUsuario', 'usuario',  'contraseña',  'Tienda_idProducto' VALUES ('1', 'Carlos', 'carlos123','13')"
                data= (idUsuario, usuario,  contraseña,  Tienda_idProducto)

                cursor.execute(sentenciaSQL,data)
                self.conexion.commit()
                self.conexion.close()
                print("¡Se pudo insertar con éxito!")
                
            except:
                print("No se pudo conectar a la base de datos")
   
#SEGUNDA OPERACION DEL CRUD: READ O LEER
    def BuscarUsuario(self, usuario):
        if self.conexion.is_connected():
            try:
                cursor = self.conexion.cursor()
                sentenciaSQL= "SELECT * from Usuario where usuario like 'C' "
                cursor.execute(sentenciaSQL)
                resultadoREAD = cursor.fetchall()
                self.conexion.close()
                return resultadoREAD

            except:
                print("No se pudo conectar a la base de datos")

#CUARTA OPERACION DEL CRUD: DELETE O ELIMINAR
    def EliminarObjeto(self,idUsuario):
        if self.conexion.is_connected():
            try:
                cursor = self.conexion.cursor()
                sentenciaSQL = "DELETE from Usuario where id = idUsuario"
                cursor.execute(sentenciaSQL)

                self.conexion.commit()                
                self.conexion.close()
                print("¡Se pudo eliminar con éxito!")
                
            except:
                print("No se pudo conectar a la base de datos")
