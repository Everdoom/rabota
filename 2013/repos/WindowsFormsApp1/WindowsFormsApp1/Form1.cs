using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            
        }
int sum = 0;
       public int hp = 100;
        int DPS = 10;
        private void Form1_Load(object sender, EventArgs e)
        {

        }

    
        private void pictureBox2_Click(object sender, EventArgs e)
        {
            sum = sum + 100;

            label3.Text = sum.ToString();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            sum++;
            label3.Text = sum.ToString();
            hp = hp - DPS;
            label4.Text = hp.ToString();
            if (hp<=1)
                        
                    {
                hp = 100;
            }
            else{ }
        }

      

        private void TranslateTransformAngle(PaintEventArgs e)
        {

            // Set world transform of graphics object to rotate.
            e.Graphics.RotateTransform(30.0F);

            // Then to translate, prepending to world transform.
            e.Graphics.TranslateTransform(100.0F, 0.0F);

            // Draw translated, rotated ellipse to screen.
            e.Graphics.DrawEllipse(new Pen(Color.Blue, 3), 0, 0, 200, 80);
        }

        private void Form1_Load_1(object sender, EventArgs e)
        {
        }

        private Bitmap rotateImage(Bitmap input, float angle)
        {
            Bitmap result = new Bitmap(input.Width, input.Height);
            Graphics g = Graphics.FromImage(result);
            g.TranslateTransform((float)input.Width / 2, (float)input.Height / 2);
            g.RotateTransform(angle);
            g.TranslateTransform(-(float)input.Width / 2, -(float)input.Height / 2);
            g.DrawImage(input, new Point(0, 0));
            return result;
        }

        private void pictureBox3_Click(object sender, EventArgs e)
        {
           hp=hp-DPS;
            label4.Text = hp.ToString();
        }

        private void label4_Click(object sender, EventArgs e)
        {
            Resource1.st.RotateFlip(RotateFlipType.Rotate180FlipY);
            //  pictureBox2.Image.RotateFlip(RotateFlipType.Rotate180FlipY);
            //  pictureBox2.Image ==
            DrawString();
        }
        private void DrawString()
        {
            
            System.Drawing.Graphics formGraphics = this.CreateGraphics();
           
            string drawString = hp.ToString();
            //"Sample Text";
            System.Drawing.Font drawFont = new System.Drawing.Font(
                "Arial", 16);
            System.Drawing.SolidBrush drawBrush = new
                System.Drawing.SolidBrush(System.Drawing.Color.Black);
            float x = 170.0f;
            float y = 50.0f;
            //formGraphics.Clear(Color.Black);
            formGraphics.DrawString(drawString, drawFont, drawBrush, x, y);
            drawFont.Dispose();
            drawBrush.Dispose();
            formGraphics.Dispose();
           // formGraphics.Clear(Color.White);
        }
    }
}
