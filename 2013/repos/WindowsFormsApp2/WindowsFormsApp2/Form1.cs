using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp2
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            this.Text += " " + Properties.Settings.Default.Version; //Добавляем в название программы, версию.
            Properties.Settings.Default.open_sum++; //Добавляем +1 к кол-ву запусков программы.
            label2.Text = Properties.Settings.Default.open_sum.ToString(); //выводим в Label2 кол-во запусков программы.
            richTextBox1.Text = Properties.Settings.Default.Save_text; // Загружаем ранее сохраненный текст
            Properties.Settings.Default.Save();  // Сохраняем переменные.
        }

       
        private void button1_Click_1(object sender, EventArgs e)
        {
            Properties.Settings.Default.Save_text = richTextBox1.Text; // Записываем содержимое richTextBox1 в Save_text
            Properties.Settings.Default.Save(); // Сохраняем переменные.
            MessageBox.Show("Текст сохранен", "Информация", MessageBoxButtons.OK, MessageBoxIcon.Asterisk); // Говорим пользователю, что сохранили текст.
        }
    }
}

