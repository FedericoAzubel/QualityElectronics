using System.Text.Json;

[Serializable]
public class Usuario
{
    public int IdUsuario {get; set;}
    public string Nombre {get; set;}
    public string Apellido {get; set;}
    public DateTime FechaNacimiento {get; set;}
    public string? Email {get; set;}
    public string? Contrasena {get; set;}

    public Usuario() {}

    public Usuario(string email, string contrsena) {
        Email = email;
        Contrasena = contrsena;
    }


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