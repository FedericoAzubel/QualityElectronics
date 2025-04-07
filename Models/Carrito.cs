// public class Carrito
// {
//     // public static List<Producto> ListaCarrito = new List<Producto>();

//     public static void AgregarProducto(Producto productoCarrito)
//     {
//         ListaCarrito.Add(productoCarrito);
//     }

//     public static void EliminarCarrito()
//     {
//         ListaCarrito.Clear();
//     }

//     public static double SacarPrecio()
//     {
//         double precioFinal = 0;
//         foreach(Producto prod in ListaCarrito)
//         {
//             precioFinal += prod.Precio;
//         }
//         return precioFinal;
//     }

//     public static List<Producto> SumarProducto(Producto producto)
//     {
//         ListaCarrito.Add(producto);
//         return ListaCarrito;
//     }

//     public static List<Producto> RestarProducto(int IdProducto)
//     {
//         EliminarUltimoProducto(IdProducto);
//         return ListaCarrito;
//     }

//     public static List<Producto> EliminarProductosUni(int IdProducto)
//     {
//         EliminarProductos(IdProducto);
//         return ListaCarrito;
//     }

//     public static void EliminarUltimoProducto(int id)
//     {
//         // Encontrar el índice del último producto con el ID especificado
//         int index = ListaCarrito.FindLastIndex(p => p.IdProducto == id);

//         // Si se encontró el producto, eliminarlo
//         if (index != -1)
//         {
//             ListaCarrito.RemoveAt(index);
//         }
//     }

//     public static void EliminarProductos(int id)
//     {
//         // Eliminar todos los productos con el Id especificado
//         ListaCarrito.RemoveAll(p => p.IdProducto == id);
//     }
// }