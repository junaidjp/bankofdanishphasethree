package com.bank.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.classic.Session;
import org.hibernate.criterion.Restrictions;

import com.bank.entity.Account;
import com.bank.entity.Address;
import com.bank.entity.Customer;
import com.bank.entity.UserBean;
import com.training.hibernate.HibernateSessionFactory;

public class BankOfDanishDAO {
	
	
	
	public void showAllCustomers()
	{

		Session session = null;
		try {
			SessionFactory sessionFactory = HibernateSessionFactory
					.getSessionFactory();
			session = sessionFactory.openSession();
			Query result = session.createQuery("from Customer");
			List<Customer> customerList = result.list();
			for (Customer customer : customerList) {
				
				System.out.println("                                                       ");
				System.out.println("Id  : " + customer.getCustomerId());
				System.out.println("Name :  " + customer.getName());
				System.out.println("Phone : " + customer.getPhone());
				System.out.println("Ssn :  "  + customer.getSsn());
				
				System.out.println("                                                       ");
				
				
				Address address = customer.getAddress();
				System.out.println("                                                       ");
				
				System.out.println("*************PRINT ADDRESS**************");
				
				System.out.println("                                                       ");
				
				System.out.println(customer.getName() + " Lives in  "
						+ address.getCity());

				System.out.println("                                                       ");
				
				List<Account> accounts = customer.getAccounts();
				
				System.out.println("****************Account Info Starting ********************");
				System.out.println("                                                       ");
				
				for (Account account : accounts) {
					
					if(account != null) {  // Check if the Account is Null / Hibernate Defect 
					System.out.println("****************Printing Account Info ********************");
					System.out.println("                                                       ");
					System.out.println(customer.getName() + " Has "
							+ account.getAccountType() + " Account");
					System.out.println("                                                       ");
					System.out.println(customer.getName() + " Has "
							+ account.getBalance() + "  in this Account");
					System.out.println("                                                       ");
					
					
					}

				}
				
				System.out.println("****************End Printing Account Info ********************");

			}
		}

		catch (Exception ex) {
			ex.printStackTrace();
		}

	
	
	
	
	}
	
	
	
	
	
	
	
	
	
	public  static boolean  validateUser(String username,String password) { 

		Session session = null;
		
	try {
			SessionFactory sessionFactory = HibernateSessionFactory
					.getSessionFactory();
			session = sessionFactory.openSession();
			Criteria criteria = session.createCriteria(UserBean.class);
			criteria.add(Restrictions.eq("username", username));
            criteria.add(Restrictions.eq("password", password));
            UserBean user = (UserBean) criteria.uniqueResult();
            session.flush();
            if(user != null)
            	return true;
       }

	catch(Exception ex) { 
		ex.printStackTrace();
	}
		return false;
		
	}
	
	
	
	
	
	
	
	
	
	

}
