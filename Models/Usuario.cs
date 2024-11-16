using System.Text.Json;

[Serializable]
public class Usuario(string email, string password)
{
    int IdUsuario {get; set;}
    string Nombre {get; set;}
    string Apellido {get; set;}
    DateTime FechaNacimiento {get; set;}
    string Email {get; set;}
    string Contraseña {get; set;}
    int Clasificacion1 {get; set;}
    int Clasificacion2 {get; set;}
    int Clasificacion3 {get; set;}

    public override string ToString()
    {
        return JsonSerializer.Serialize(this);
    }

    public static Usuario FromString(string? json)
    {
        if (json is null)
         {
             return null;
         }

        
         return JsonSerializer.Deserialize<Usuario>(json);
    }
}