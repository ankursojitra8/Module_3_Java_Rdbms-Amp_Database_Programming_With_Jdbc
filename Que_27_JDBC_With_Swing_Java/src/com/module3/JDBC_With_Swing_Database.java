package com.module3;

import javax.swing.ButtonGroup;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JRadioButton;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.table.DefaultTableModel;

class Demo
{	
	JFrame frame;
	JTextField idField, nameField, addressField, contactField;
    JRadioButton male, female;
    JButton registerBtn, updateBtn, deleteBtn, resetBtn, refreshBtn;
    JTable table;
    DefaultTableModel model;

	public Demo()
	{
		frame = new JFrame("null");
		frame.setSize(1000,1000);
		frame.setVisible(true);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setLayout(null);
		
		JLabel idLabel = new JLabel("ID");
        JLabel nameLabel = new JLabel("Name");
        JLabel genderLabel = new JLabel("Gender");
        JLabel addressLabel = new JLabel("Address");
        JLabel contactLabel = new JLabel("Contact");
        
        idField = new JTextField();
        nameField = new JTextField();
        addressField = new JTextField();
        contactField = new JTextField();
        
        male = new JRadioButton("Male");
        female = new JRadioButton("Female");
        
        ButtonGroup genderGroup = new ButtonGroup();
        genderGroup.add(male);
        genderGroup.add(female);
        
        registerBtn = new JButton("Register");
        updateBtn = new JButton("Update");
        deleteBtn = new JButton("Delete");
        resetBtn = new JButton("Reset");
        refreshBtn = new JButton("Refresh Table");
        
        model = new DefaultTableModel();
        table = new JTable(model);
        model.addColumn("S.No");
        model.addColumn("ID");
        model.addColumn("Name");
        model.addColumn("Gender");
        model.addColumn("Address");
        model.addColumn("Contact");
        
        JScrollPane scrollPane = new JScrollPane(table);
        
        idLabel.setBounds(30, 30, 60, 30);
        nameLabel.setBounds(30, 70, 60, 30);
        genderLabel.setBounds(30, 110, 60, 30);
        addressLabel.setBounds(30, 150, 60, 30);
        contactLabel.setBounds(30, 190, 60, 30);

        idField.setBounds(100, 30, 150, 30);
        nameField.setBounds(100, 70, 150, 30);
        male.setBounds(100, 110, 70, 30);
        female.setBounds(180, 110, 80, 30);
        addressField.setBounds(100, 150, 150, 30);
        contactField.setBounds(100, 190, 150, 30);

        registerBtn.setBounds(30, 230, 100, 30);
        updateBtn.setBounds(140, 230, 100, 30);
        deleteBtn.setBounds(30, 270, 100, 30);
        resetBtn.setBounds(140, 270, 100, 30);
        refreshBtn.setBounds(30, 310, 210, 30);

        scrollPane.setBounds(300, 30, 400, 300);
        
        frame.add(idLabel);
        frame.add(nameLabel);
        frame.add(genderLabel);
        frame.add(addressLabel);
        frame.add(contactLabel);
        frame.add(idField);
        frame.add(nameField);
        frame.add(male);
        frame.add(female);
        frame.add(addressField);
        frame.add(contactField);
        frame.add(registerBtn);
        frame.add(updateBtn);
        frame.add(deleteBtn);
        frame.add(resetBtn);
        frame.add(refreshBtn);
        frame.add(scrollPane);
	}
}
public class JDBC_With_Swing_Database {
	public static void main(String[] args) {
		new Demo();
	}
}
;