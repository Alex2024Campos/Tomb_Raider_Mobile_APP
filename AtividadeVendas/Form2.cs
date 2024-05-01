using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AtividadeVendas
{
    public partial class Frm2 : Form
    {
        public Frm2()
        {
            InitializeComponent();
        }

        private void vendasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Hide();
            Frm1 tela = new Frm1();
            tela.Show();
        }

        private void sairToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void nadadorToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Hide();
            Frm3 tela2 = new Frm3();
            tela2.Show();
        }

        private void funcionáriosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Hide();
            Frm4 tela3 = new Frm4();
            tela3.Show();
        }
    }
}
