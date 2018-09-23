package com.toolsBean;

import java.util.ArrayList;

import com.toolsBean.MyTools;
import com.valueBean.GoodsSingle;

public class ShopCar {
	private ArrayList<GoodsSingle> buyList=new ArrayList<GoodsSingle>();
	public ArrayList<GoodsSingle> getBuyList() {
		return buyList;
	}
	
	public void addItem(GoodsSingle single){
		if(single!=null){
			if(buyList.size()==0){	
				GoodsSingle newGoods=new GoodsSingle();
				newGoods.setName(single.getName());
				newGoods.setProduct(single.getProduct());
				newGoods.setPrice(single.getPrice());
				newGoods.setNum(single.getNum());
				buyList.add(newGoods);	
			}
			else{		
				int i=0;				
				for(;i<buyList.size();i++){			
					GoodsSingle newGoods=(GoodsSingle)buyList.get(i);		
					if(newGoods.getName().equals(single.getName())){		
						newGoods.setNum(newGoods.getNum()+1);		
						break;		
					}
				}
				if(i>=buyList.size()){	
					GoodsSingle newGoods=new GoodsSingle();
					newGoods.setName(single.getName());
					newGoods.setPrice(single.getPrice());
					newGoods.setNum(single.getNum());
					buyList.add(newGoods);	
				}
			}
		}			
	}
	 
	public void addItem(String name){
		for(int i=0;i<buyList.size();i++){
			GoodsSingle newGoods=(GoodsSingle)buyList.get(i); 
			if(newGoods.getName().equals(MyTools.toChinese(name))){		//转码	
				System.out.println("转码之后"+ name);
				newGoods.setNum(newGoods.getNum()+1);
				System.out.println(newGoods.getNum());
					break;
			}
		}
	}
	 
	public void removeItem(String name){
		for(int i=0;i<buyList.size();i++){
			GoodsSingle newGoods=(GoodsSingle)buyList.get(i); 
			if(newGoods.getName().equals(MyTools.toChinese(name))){							
				if(newGoods.getNum()>1){
					newGoods.setNum(newGoods.getNum()-1);
					break;	
				}
				else if(newGoods.getNum()==1){	
					buyList.remove(i);	
				}
			}
		}
	}

	public void clearCar(){
		buyList.clear();	
	}
}