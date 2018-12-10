create database Hospital
use Hospital 
Create table Building(
id INT NOT NULL Primary key,
name VARCHAR(200) NOT NULL,
placement VARCHAR(200) NOT NULL)

Create table Department(
id INT NOT NULL Primary key,
id_building INT NOT NULL,
name VARCHAR(200) NOT NULL,
Constraint fk_Placement_Department foreign key (id_building) references Building(id))

Create table Doctors(
id INT NOT NULL Primary key,
last_name VARCHAR(200) NOT NULL,
name TEXT NOT NULL,
fathers_name VARCHAR(200) NOT NULL,
specialty VARCHAR(200) NOT NULL,
experience INT NOT NULL,
id_department INT NOT NULL,
Constraint fk_id_de foreign key (id_department) references Department(id))

Create table Patients(
id INT NOT NULL Primary key,
last_name VARCHAR(200) NOT NULL,
name VARCHAR(200) NOT NULL,
fathers_name VARCHAR(200) NOT NULL,
birthday VARCHAR(200) NOT NULL,
addresses VARCHAR(200) NOT NULL)

Create table Storage(
id INT NOT NULL Primary key,
location VARCHAR(200) NOT NULL)


Create table Drugs(
id INT NOT NULL Primary key,
name_of_drug VARCHAR(200) NOT NULL,
id_storage INT NOT NULL,
quantity INT NULL,
active_substance VARCHAR(200) NOT NULL,
Constraint fk_id_s foreign key (id_storage) references Storage(id))

Create table Treatment(
id INT NOT NULL Primary key,
diagnosis VARCHAR(200) NOT NULL,
id_drugs INT NOT NULL,
recipe VARCHAR(200) NULL,
contraindication VARCHAR(200) NULL,
Constraint fk_id_dr foreign key (id_drugs) references Drugs(id))

Create table MedicalCard(
id_patient INT NOT NULL,
id_doctor INT NOT NULL,
id_diagnosis INT NOT NULL,
id_drugs INT NOT NULL,
Constraint fk_id_P foreign key (id_patient) references Patients(id),
Constraint fk_id_Do foreign key (id_doctor) references Doctors(id),
Constraint fk_Diagnosis foreign key (id_diagnosis) references Treatment(id),
Constraint fk_id_drugs foreign key (id_drugs) references Drugs(id))


INSERT INTO Building(id, name, placement) VALUES (1, '˳���������', '������,22');
INSERT INTO Building(id, name, placement) VALUES (2, '˳���������', '������ ������,3');
INSERT INTO Building(id, name, placement) VALUES (3, '����������� ', '������,56');

INSERT INTO Department(id, id_building, name) VALUES (1,  '3','������������');
INSERT INTO Department(id, id_building, name) VALUES (2, '1', '�����������' );
INSERT INTO Department(id, id_building, name) VALUES (3, '2','����������' );
INSERT INTO Department(id, id_building, name) VALUES (4,'1', 'ճ�������' );
INSERT INTO Department(id, id_building, name) VALUES (5,'1', 'ó����������' );

INSERT INTO Doctors(id, last_name, name, fathers_name, specialty, experience, id_department) VALUES (1, '����', '�����', '�����',  '��������','5', '1');
INSERT INTO Doctors(id, last_name, name, fathers_name, specialty, experience, id_department) VALUES (2, '�����', '����', '�������������', 'ճ����','12',  '4');
INSERT INTO Doctors(id, last_name, name, fathers_name, specialty, experience, id_department) VALUES (3, '��������', '��������', '�������', 'ճ����','27 ',  '4');
INSERT INTO Doctors(id, last_name, name, fathers_name, specialty, experience, id_department) VALUES (4, '�����', '�����', '���������','�����������', '20', '3');
INSERT INTO Doctors(id, last_name, name, fathers_name, specialty, experience, id_department) VALUES (5, '����', '�������', '�������', '������������','8',  '2');
INSERT INTO Doctors(id, last_name, name, fathers_name, specialty, experience, id_department) VALUES (6, '�����', '����', ' ����������', 'ó�������','24',  '5');

INSERT INTO Patients(id, last_name, name, fathers_name, birthday, addresses) VALUES (1, '�����','����','�����볿���', '01.08.1998', '������, 32');
INSERT INTO Patients(id, last_name, name, fathers_name, birthday, addresses) VALUES (2, '��������','�����','�����������', '13.03.1990', '��������,78');
INSERT INTO Patients(id, last_name, name, fathers_name, birthday, addresses) VALUES (3, '���������','������','���������', '18.10.1979', '������� 95');
INSERT INTO Patients(id, last_name, name, fathers_name, birthday, addresses) VALUES (4, '������','����','���������', '22.12.1995', '���������, 234');
INSERT INTO Patients(id, last_name, name, fathers_name, birthday, addresses) VALUES (5, '����','�����','��������', '06.10.1998', '���������, 62');
INSERT INTO Patients(id, last_name, name, fathers_name, birthday, addresses) VALUES (6, '�����','�����','�����볿���', '08.11.1995', '��������� 76');
INSERT INTO Patients(id, last_name, name, fathers_name, birthday, addresses) VALUES (7, '������','���','����������', '19.02.1973', '�����������, 3');
INSERT INTO Patients(id, last_name, name, fathers_name, birthday, addresses) VALUES (8, '������','�����','���������', '23.08.1982', '�������, 90');

INSERT INTO Storage(id, location) VALUES (1, '������,22');
INSERT INTO Storage(id, location) VALUES (2, '������ ������,5');

INSERT INTO Drugs(id, name_of_drug, id_storage, quantity, active_substance) VALUES (1, '������ ���', '1', '150', '����');
INSERT INTO Drugs(id, name_of_drug, id_storage, quantity, active_substance) VALUES (2, '������', '1', '134', '����������');
INSERT INTO Drugs(id, name_of_drug, id_storage, quantity, active_substance) VALUES (3, '������ ���������', '2', '48', '�������');
INSERT INTO Drugs(id, name_of_drug, id_storage, quantity, active_substance) VALUES (4, '������� �����', '2', '197', '�������');
INSERT INTO Drugs(id, name_of_drug, id_storage, quantity, active_substance) VALUES (5, '����������', '2', '52', '����������');
INSERT INTO Drugs(id, name_of_drug, id_storage, quantity, active_substance) VALUES (6, '��������', '2', '18', '������������');
INSERT INTO Drugs(id, name_of_drug, id_storage, quantity, active_substance) VALUES (7, '����������', '1', '27', '���������� ����� ������');
INSERT INTO Drugs(id, name_of_drug, id_storage, quantity, active_substance) VALUES (8, '��������', '2', '48', '������� ��������������');

INSERT INTO Treatment(id, diagnosis, id_drugs, recipe, contraindication) VALUES (1,'�������', '1', '�� �������', '������ ����');
INSERT INTO Treatment(id, diagnosis, id_drugs, recipe, contraindication) VALUES (2, '��²', '2', '�� �������', '������');
INSERT INTO Treatment(id, diagnosis, id_drugs, recipe, contraindication) VALUES (3, '������', '3', '�������', '�������, ���� �� 7 ����');
INSERT INTO Treatment(id, diagnosis, id_drugs, recipe, contraindication) VALUES (4, '������� ����', '4', '�������', '������ ������');
INSERT INTO Treatment(id, diagnosis, id_drugs, recipe, contraindication) VALUES (5, '�����', '5', '�������', '����������');
INSERT INTO Treatment(id, diagnosis, id_drugs, recipe, contraindication) VALUES (6, '������� B', '8', '�� �������', '-');
INSERT INTO Treatment(id, diagnosis, id_drugs, recipe, contraindication) VALUES (7, '��������� ', '6', '�������', '���������� ����');
INSERT INTO Treatment(id, diagnosis, id_drugs, recipe, contraindication) VALUES (8, '�������', '7', '�� �������', '������� ������������');

INSERT INTO MedicalCard(id_patient, id_doctor, id_diagnosis, id_drugs) VALUES (1, 1, 1, 1);
INSERT INTO MedicalCard(id_patient, id_doctor, id_diagnosis, id_drugs) VALUES (2, 6, 7, 7);
INSERT INTO MedicalCard(id_patient, id_doctor, id_diagnosis, id_drugs) VALUES (3, 2, 4, 4);
INSERT INTO MedicalCard(id_patient, id_doctor, id_diagnosis, id_drugs) VALUES (4, 4, 3, 3);
INSERT INTO MedicalCard(id_patient, id_doctor, id_diagnosis, id_drugs) VALUES (5, 4, 6, 8);
INSERT INTO MedicalCard(id_patient, id_doctor, id_diagnosis, id_drugs) VALUES (6, 1, 2, 2);
INSERT INTO MedicalCard(id_patient, id_doctor, id_diagnosis, id_drugs) VALUES (7, 3, 5, 5);
INSERT INTO MedicalCard(id_patient, id_doctor, id_diagnosis, id_drugs) VALUES (8, 5, 8, 7);

Select * from Treatment

Select id_drugs,id_patient,id_diagnosis
from MedicalCard
where id_drugs = 5;

Select experience,last_name,name
from Doctors
where experience>='12'

Select Building.placement,Department.name
from Building inner join Department on Building.id=Department.id_building
order by name asc

Select last_name,name,fathers_name as Surname
from doctors where id = (Select id_doctor from MedicalCard where id_patient='3')

Select name_of_drug,quantity
from Drugs where quantity =(select Max(quantity) from drugs)

Select name_of_drug, Avg(quantity) as Avg_quantity
From Drugs
group by name_of_drug
having Avg(quantity)<=100
