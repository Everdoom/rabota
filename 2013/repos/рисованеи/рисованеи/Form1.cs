using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace рисованеи
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }


       
private void panel1_Paint(object sender, PaintEventArgs e)
        {
            System.Drawing.Pen myPen;
            myPen = new System.Drawing.Pen(System.Drawing.Color.Red);
            System.Drawing.Graphics formGraphics = this.CreateGraphics();
            formGraphics.DrawLine(myPen, 0, 0, 400, 400);
            formGraphics.DrawImage(Resource1.st,0,2);
            myPen.Dispose();
            formGraphics.Dispose();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            DrawString();
        }
        private void DrawString()
        {
            System.Drawing.Graphics formGraphics = this.CreateGraphics();
            string drawString = "Sample Text";
            System.Drawing.Font drawFont = new System.Drawing.Font(
                "Arial", 16);
            System.Drawing.SolidBrush drawBrush = new
                System.Drawing.SolidBrush(System.Drawing.Color.Black);
            float x = 150.0f;
            float y = 50.0f;
            formGraphics.DrawString(drawString, drawFont, drawBrush, x, y);
            drawFont.Dispose();
            drawBrush.Dispose();
            formGraphics.Dispose();
        }
    }
}
