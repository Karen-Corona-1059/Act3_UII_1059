import 'package:flutter/material.dart';
import 'package:myapp/details.dart';

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _idProductoController = TextEditingController();
  final _nombreController = TextEditingController();
  final _precioController = TextEditingController();
  final _cantidadController = TextEditingController();
  final _descripcionController = TextEditingController();
  final _categoriaController = TextEditingController();
  final _idProveedorController = TextEditingController();

  @override
  void dispose() {
    _idProductoController.dispose();
    _nombreController.dispose();
    _precioController.dispose();
    _cantidadController.dispose();
    _descripcionController.dispose();
    _categoriaController.dispose();
    _idProveedorController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 236, 143, 209),
        title: const Text("BLOOM"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            MyTextField(
              myController: _idProductoController,
              fieldName: "ID Producto",
              myIcon: Icons.qr_code,
              prefixIconColor: const Color.fromARGB(255, 116, 179, 175),
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _nombreController,
              fieldName: "Nombre",
              myIcon: Icons.label,
              prefixIconColor: const Color.fromARGB(255, 116, 179, 175),
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _precioController,
              fieldName: "Precio",
              myIcon: Icons.attach_money,
              prefixIconColor: const Color.fromARGB(255, 116, 179, 175),
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _cantidadController,
              fieldName: "Cantidad",
              myIcon: Icons.format_list_numbered,
              prefixIconColor: const Color.fromARGB(255, 116, 179, 175),
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _descripcionController,
              fieldName: "Descripción",
              myIcon: Icons.description,
              prefixIconColor: const Color.fromARGB(255, 116, 179, 175),
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _categoriaController,
              fieldName: "Categoría",
              myIcon: Icons.category,
              prefixIconColor: const Color.fromARGB(255, 116, 179, 175),
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _idProveedorController,
              fieldName: "ID Proveedor",
              myIcon: Icons.account_circle,
              prefixIconColor: const Color.fromARGB(255, 116, 179, 175),
            ),
            const SizedBox(height: 20.0),
            myBtn(context),
          ],
        ),
      ),
    );
  }

  OutlinedButton myBtn(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return Details(
              idProducto: _idProductoController.text,
              nombre: _nombreController.text,
              precio: _precioController.text,
              cantidad: _cantidadController.text,
              descripcion: _descripcionController.text,
              categoria: _categoriaController.text,
              idProveedor: _idProveedorController.text,
            );
          }),
        );
      },
      child: Text(
        "Enviar Formulario".toUpperCase(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 63, 168, 163),
        ),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key,
    required this.fieldName,
    required this.myController,
    this.myIcon = Icons.verified_user_outlined,
    this.prefixIconColor = Colors.blueAccent,
  }) : super(key: key);

  final TextEditingController myController;
  final String fieldName;
  final IconData myIcon;
  final Color prefixIconColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      decoration: InputDecoration(
        labelText: fieldName,
        prefixIcon: Icon(myIcon, color: prefixIconColor),
        border: const OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: const Color.fromARGB(255, 19, 114, 106)),
        ),
        labelStyle: const TextStyle(color: Color.fromARGB(255, 35, 105, 99)),
      ),
    );
  }
}
