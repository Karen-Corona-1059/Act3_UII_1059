import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final String idProducto;
  final String nombre;
  final String precio;
  final String cantidad;
  final String descripcion;
  final String categoria;
  final String idProveedor;

  Details({
    Key? key,
    required this.idProducto,
    required this.nombre,
    required this.precio,
    required this.cantidad,
    required this.descripcion,
    required this.categoria,
    required this.idProveedor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details"),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
             // Tarjeta dinámica con datos recibidos del formulario
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.deepPurple.shade300),
                borderRadius: BorderRadius.circular(8),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.soap_rounded, color: Colors.deepPurple),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            "ID: $idProducto",
                            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete, color: Colors.redAccent),
                          onPressed: () {
                            // Acción de borrar dinámica, si quieres implementarla
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Text("Nombre: $nombre"),
                    Text("Precio: $precio"),
                    Text("Cantidad: $cantidad"),
                    Text("Descripción: $descripcion"),
                    Text("Categoría: $categoria"),
                    Text("ID Proveedor: $idProveedor"),
                  ],
                ),
              ),
            ),
            // Tarjeta 1 con datos predefinidos
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.bubble_chart, color: Color.fromARGB(255, 68, 180, 255)),
                        const SizedBox(width: 8),
                        const Expanded(
                          child: Text(
                            "ID: 1001",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete, color: Colors.redAccent),
                          onPressed: () {
                            // Acción de borrar si quieres implementarla
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    const Text("Nombre: Jabón Artesanal de Lavanda"),
                    const Text("Precio: 120"),
                    const Text("Cantidad: 25"),
                    const Text("Descripción: Jabón hecho a mano con aceites esenciales de lavanda."),
                    const Text("Categoría: Cosmética Natural"),
                    const Text("ID Proveedor: 3001"),
                  ],
                ),
              ),
            ),

            // Tarjeta 2 con datos predefinidos
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.people, color: Color.fromARGB(255, 186, 68, 255)),
                        const SizedBox(width: 8),
                        const Expanded(
                          child: Text(
                            "ID: 1002",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete, color: Colors.redAccent),
                          onPressed: () {
                            // Acción de borrar si quieres implementarla
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    const Text("Nombre: Crema Hidratante de Rosa Mosqueta"),
                    const Text("Precio: 250"),
                    const Text("Cantidad: 40"),
                    const Text("Descripción: Crema facial hidratante elaborada con rosa mosqueta orgánica."),
                    const Text("Categoría: Cosmética Natural"),
                    const Text("ID Proveedor: 3002"),
                  ],
                ),
              ),
            ),

           
          ],
        ),
      ),
    );
  }
}
