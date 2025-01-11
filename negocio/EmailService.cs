using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;

namespace negocio
{
    public class EmailService
    {
        private MailMessage email;
        private SmtpClient server;

        public EmailService() 
        { 
            server = new SmtpClient();
            server.Credentials = new NetworkCredential("miguelbucciero@gmail.com", "bvnf kneu ldli lwyn");
            server.EnableSsl = true;
            server.Port = 587;
            server.Host = "smtp.gmail.com";
        } 

        public void armarCorreo(string emailDestino)
        {
            email = new MailMessage();
            email.From = new MailAddress("noresponder@promogana.com");
            email.To.Add(emailDestino);
            email.Subject = ("Gracias por particapar!");
            email.IsBodyHtml = true;
            email.Body = "<h>Promo Gana!</h1> <br> Hola, Ya estas participando del concurso! Suerte!";
        }

        public void enviarEmail()
        {
            
            try
            {
                server.Send(email);
            }
            catch (SmtpException ex)
            {
                // Log the exception or handle it accordingly
                throw new Exception("Error sending email: " + ex.Message, ex);
            }
        }
    }
}
