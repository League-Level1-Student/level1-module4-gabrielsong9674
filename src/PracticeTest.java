import java.awt.Dimension;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextField;

public class PracticeTest implements ActionListener {
	public static void main(String[] args) {
		PracticeTest test = new PracticeTest();
		test.makeUI();
	}

	JFrame frame = new JFrame();
	JPanel panel = new JPanel();
	JLabel label = new JLabel();
	JButton button1 = new JButton();
	JButton button2 = new JButton();
	JTextField textField = new JTextField();
	Dimension preferredSize = new Dimension(400, 100);
	Dimension textFieldSize = new Dimension(150, 25);
	
	String correctAnswer = "candle";	
	
	public void makeUI() {
		frame.add(panel);
		frame.setVisible(true);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setSize(preferredSize);
		panel.add(label);
		label.setText("What is tall when it is young and short when it is old?");
		panel.add(textField);
		textField.setPreferredSize(textFieldSize);
		panel.add(button1);
		button1.addActionListener(this);
		button1.setText("Submit");
		panel.add(button2);
		button2.setText("Hint");
		button2.addActionListener(this);
		frame.pack();

	}

	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		JButton buttonPressed = (JButton) e.getSource();
		if (buttonPressed == button1 && textField.getText().equalsIgnoreCase(correctAnswer)) {
			JOptionPane.showMessageDialog(null,"Correct!");
		}
		else if(buttonPressed == button2) {
			JOptionPane.showMessageDialog(null, "It is a household object");
		}
	}
}
