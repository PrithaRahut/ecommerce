package com.ecomm;

import java.util.List;

import com.googlecode.objectify.Key;

public class Database {
	public static boolean createUser(User user){
		if(isUserAvailable(user.email)){
			OfyService.ofy().save().entity(user);
			return true;
		}
		else{
			return false;
		}
		
	}
	
	public static boolean isUserAvailable(String email){
		User u=OfyService.ofy().load().key(Key.create(User.class, email)).now();
		if(u==null){
			return true;
		}else{
			return false;
		}
	}
	public static User checkUser(String email,String pwd){
		User u=OfyService.ofy().load().key(Key.create(User.class, email)).now();
		if(u==null){
			return null;
		}
		else{
			if(pwd.equals(u.password)){
				return u;
			}else{
				return null;
			}
		}
		
	}
	
	public static List<Product> fetchProductbyCategory(String category){
		List<Product> list= OfyService.ofy().load()
				.type(Product.class)
				.filter("category",category)
				
				.list();	
		/*for(Clothing cloth : list){
			System.out.println(cloth.getName());
		}*/
		return list;
	}

	public static Product fetchProductbyCode(String code){
		Product cloth=OfyService.ofy().load().key(Key.create(Product.class, code)).now();
		return cloth;
	}
	
	
	public static void saveClothProduct(Product prod){
		OfyService.ofy().save().entity(prod);
	}
	public static void saveOrder(Order order){
		OfyService.ofy().save().entity(order);
	}
}

