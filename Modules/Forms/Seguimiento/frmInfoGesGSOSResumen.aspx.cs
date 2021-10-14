using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System.Web.UI.HtmlControls;


namespace InfogesEmape.Modules.Forms.Seguimiento
{
    public partial class frmInfoGesGSOSResumen : System.Web.UI.Page
    {

		private string pIdProyecto;
		private string pIdContrato;
		private string pIdValorizacion;
		private string pDni;
        private string pEjecucion;
        protected void Page_Load(object sender, EventArgs e)
        {            
            pIdProyecto = (string)Session["pIdProyecto"];
            pIdContrato = "" + Request.Params["pIdContrato"];
            pIdValorizacion = "" + Request.Params["pIdValorizacion"];
            pEjecucion = "" + Request.Params["pEjecucion"];
            pDni = (string)Session["pDni"];

            //string IdContrato = GridProyectoContrato.GetRowValues(GridProyectoContrato.FocusedRowIndex, "IDCONTRATO").ToString();
            //int IdValorizacion = 1;

            DataSet ds1 = new DataSet();
            ds1 = Code.Logic.Forms.Seguimiento.GsoProyectoRegistro.SearchResumenValorizacion((string)(Session["pIdProyecto"]), pIdContrato, Convert.ToInt32(pIdValorizacion), pEjecucion);

            string valorizacion_actual, valorizacion_anterior;
            string valorizacion_actual_bruta, valorizacion_anterior_bruta, valorizacion_acumulada_bruta;

            DataSet ds3 = new DataSet();
            ds3 = Code.Logic.Forms.Seguimiento.GsoProyectoRegistro.SearchByProyectoContrato((string)(Session["pIdProyecto"]), (string)(Session["IdDni"]));


            //CABECERA DE CONTRATO 09-10

            
            LBLFECHAINICIO.Text = ds3.Tables[0].Rows[0]["FECHA_INICIO_OBRA"].ToString();
            LBLFECHAFIN.Text = ds3.Tables[0].Rows[0]["FECHA_INICIO_OBRA"].ToString();
            LBLSUPERVISOR.Text = ds3.Tables[0].Rows[0]["RAZON_SOCIAL_SUPERVISOR"].ToString();
            LBLCONTRATISTA.Text = ds3.Tables[0].Rows[0]["EMPRESA"].ToString();
            LBLPORCENTAJEGANADOR.Text = ds3.Tables[0].Rows[0]["PORCENTAJE_GANADOR"].ToString();
            
            string total;            
            total = ds3.Tables[0].Rows[0]["MONTO_OBRA"].ToString();
            LBLMONTOCONTRADO.Text = total;
            
            //total = ds3.Tables[0];
            // VALORIZACION

            valorizacion_actual = ds1.Tables[0].Rows[0]["VALORIZACION_ACTUAL"].ToString();
			valorizacion_anterior = ds1.Tables[0].Rows[0]["VALORIZACION_ANTERIOR"].ToString();
			
			LBLVALORIZACION_ACTUAL.Text = valorizacion_actual;
			LBLVALORIZACION_ANTERIOR.Text = valorizacion_anterior;
			LBLVALORIZACION_ACUMULADA.Text = (Convert.ToDecimal(valorizacion_actual) + Convert.ToDecimal(valorizacion_anterior)).ToString("n2");

			//VALORIZACION PORCENTAJE
			string valorizacion_anterior_porcentaje,valorizacion_actual_porcentaje,valorizacion_acumulada_porcentaje;

			valorizacion_acumulada_porcentaje = ds1.Tables[0].Rows[0]["VALORIZACION_ACUMULADA_PORCENTAJE"].ToString();
			valorizacion_anterior_porcentaje = ((Convert.ToDecimal(valorizacion_anterior) / Convert.ToDecimal(total)) * 100).ToString("n2");
			valorizacion_actual_porcentaje = (Convert.ToDecimal(valorizacion_acumulada_porcentaje) - Convert.ToDecimal(valorizacion_anterior_porcentaje)).ToString();

			LBLVALORIZACIONACTUALPORCENTAJE.Text = valorizacion_actual_porcentaje;
			LBLVALORIZACIONANTERIORPORCENTAJE.Text = valorizacion_anterior_porcentaje;
			LBLVALORIZACIONACUMULADAPORCENTAJE.Text = valorizacion_acumulada_porcentaje;
			

			//VALORIZACION BRUTA

			valorizacion_anterior_bruta = valorizacion_anterior;
			valorizacion_actual_bruta = valorizacion_actual;
			valorizacion_acumulada_bruta = (Convert.ToDecimal(valorizacion_actual) + Convert.ToDecimal(valorizacion_anterior)).ToString("n2");

			LBLVALORIZACIONANTERIORBRUTA.Text = valorizacion_anterior;
			LBLVALORIZACIONACTUALBRUTA.Text = valorizacion_actual_bruta;
			LBLVALORIZACIONACUMULADABRUTA.Text = valorizacion_acumulada_bruta;


			//ADELANTO DIRECTO
			string adelanto_directo_anterior, adelanto_directo_actual, adelanto_directo_acumulado;
			
			adelanto_directo_anterior = ds1.Tables[0].Rows[0]["ADELANTO_DIRECTO_ANTERIOR"].ToString();
			adelanto_directo_actual = ds1.Tables[0].Rows[0]["ADELANTO_DIRECTO_ACTUAL"].ToString();
			adelanto_directo_acumulado = (Convert.ToDecimal(adelanto_directo_anterior) + Convert.ToDecimal(adelanto_directo_actual)).ToString();


			LBLADELANTODIRECTOANTERIOR.Text = adelanto_directo_anterior;
			LBLADELANTODIRECTOACTUAL.Text = adelanto_directo_actual;
			LBLADELANTODIRECTOACUMULADO.Text = adelanto_directo_acumulado;


			//ADELANTO MATERIALES
			string adelanto_material_anterior, adelanto_material_actual, adelanto_material_acumulado;
			adelanto_material_anterior = "0";
			adelanto_material_actual = "0";
			adelanto_material_acumulado = "0";

			LBLADELANTOMATERIALESANTERIOR.Text = adelanto_material_anterior;
			LBLADELANTOMATERIALESACTUAL.Text = adelanto_material_actual;
			LBLADELANTOMATERIALESACUMULADO.Text = adelanto_material_acumulado;

			//TOTAL AMORTIZACIONES
			string total_amortizacion_anterior, total_amortizacion_actual, total_amortizacion_acumulado;

			total_amortizacion_anterior = adelanto_directo_anterior + adelanto_material_anterior;
			total_amortizacion_actual = adelanto_directo_actual + adelanto_material_actual;
			total_amortizacion_acumulado = adelanto_directo_acumulado + adelanto_material_acumulado;

			LBLTOTALAMORTIZACIONANTERIOR.Text = total_amortizacion_anterior;
			LBLTOTALAMORTIZACIONACTUAL.Text = total_amortizacion_actual;
			LBLTOTALAMORTIZACIONACUMULADO.Text = total_amortizacion_acumulado;

			//VALORIZACION NETA

			string valorizacion_neta_anterior, valorizacion_neta_actual, valorizacion_neta_acumulada;

			valorizacion_neta_anterior = (Convert.ToDecimal(valorizacion_anterior_bruta) - Convert.ToDecimal(total_amortizacion_anterior)).ToString();
			valorizacion_neta_actual = (Convert.ToDecimal(valorizacion_actual_bruta) - Convert.ToDecimal(total_amortizacion_actual)).ToString(); 
			valorizacion_neta_acumulada = (Convert.ToDecimal(valorizacion_acumulada_bruta) - Convert.ToDecimal(total_amortizacion_acumulado)).ToString();

			LBLVALORIZACIONNETAANTERIOR.Text = valorizacion_neta_anterior;
			LBLVALORIZACIONNETAACTUAL.Text = valorizacion_neta_actual;
			LBLVALORIZACIONNETAACUMULADA.Text = valorizacion_neta_acumulada;

			//MONTO A PAGAR AL CONTRATISTA

			string monto_subtotal_anterior, monto_subtotal_actual, monto_subtotal_acumulado;

			monto_subtotal_anterior = valorizacion_neta_anterior;
			monto_subtotal_actual = valorizacion_neta_actual;
			monto_subtotal_acumulado = valorizacion_neta_acumulada;

			LBLMONTOSUBTOTALANTERIOR.Text = monto_subtotal_anterior;
			LBLMONTOSUBTOTALACTUAL.Text = monto_subtotal_actual;
			LBLMONTOSUBTOTALACUMULADO.Text = monto_subtotal_acumulado;

			//IGV

			string igv_anterior, igv_actual, igv_acumulado;
			string igv = "0.18";

			igv_anterior = (Convert.ToDecimal(monto_subtotal_anterior) * Convert.ToDecimal(igv)).ToString();
			igv_actual = (Convert.ToDecimal(monto_subtotal_actual) * Convert.ToDecimal(igv)).ToString();
			igv_acumulado = (Convert.ToDecimal(monto_subtotal_acumulado) * Convert.ToDecimal(igv)).ToString();

			LBLIGVANTERIOR.Text = igv_anterior;
			LBLIGVACTUAL.Text = igv_anterior;
			LBLIGVACUMULADO.Text = igv_anterior;

			//TOTAL
			string total_anterior, total_actual, total_acumulado;

			total_anterior = (Convert.ToDecimal(monto_subtotal_anterior) + Convert.ToDecimal(igv_anterior)).ToString();
			total_actual = (Convert.ToDecimal(monto_subtotal_actual) + Convert.ToDecimal(igv_actual)).ToString();
			total_acumulado = (Convert.ToDecimal(monto_subtotal_acumulado) + Convert.ToDecimal(igv_acumulado)).ToString();

			LBLTOTALANTERIOR.Text = total_anterior;
			LBLTOTALACTUAL.Text = total_actual;
			LBLTOTALACUMULADO.Text = total_acumulado;

			//TOTAL COMPROMISO PAGO

			LBLTOTALCOMPROMISOPAGO.Text = total_actual;

            ScriptManager scriptManager = ScriptManager.GetCurrent(this.Page);
           // scriptManager.RegisterPostBackControl(this.Button1);
        }		              
      
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=Resumen.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            this.Page.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A3, 10f, 10f, 10f, 10f);
            //Document pdfDoc = new Document(PageSize.LETTER, 10f, 10f, 100f, 0f);
            pdfDoc.AddTitle("MI PRIMER REPORTE PDF");
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            htmlparser.Parse(sr);
            pdfDoc.Close();
            Response.Write(pdfDoc);
            Response.End();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Clear();
            Response.Buffer = true;
            Response.ContentType = "application/vnd.ms-excel";
            Response.AddHeader("content-disposition", "attachment;filename=GridViewExport.xls");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);

            StringWriter swr = new StringWriter();
            HtmlTextWriter htmlwr = new HtmlTextWriter(swr);            
            this.Page.RenderControl(htmlwr);
            Response.Output.Write(swr.ToString());
            Response.Flush();
            Response.End();
        }
    }
}