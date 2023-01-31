package com.capston.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import com.capston.model.Property;
import com.capston.pojo.PropertyCriteria;

public class PropertyDaoImpl implements PropertyDao{
	@PersistenceContext
	EntityManager em;

	@Override
	public List<Property> fetchPropertyByCriteria(PropertyCriteria criteria) {
		String i =criteria.getConfig();
		String j =criteria.getOffer();
		String k =criteria.getCity();
		double l =criteria.getMinCost();
		double m=criteria.getMaxCost();
		
		if(i ==null || i=="")
			i="%";
		if(j==null || j=="")
			j="%";
		if(k==null || k=="")
			k="%";
		if(m==0)
			m=Double.MAX_VALUE;
		
		TypedQuery<Property> q = em.createQuery("select p from Property12345 p where  p.configuration like :i  and p.offerType like:j and  p.city like :k and (p.offerCost Between :l and :m )", Property.class);
		
		q.setParameter("i", i);
		q.setParameter("j", j);
		q.setParameter("k", k);
		q.setParameter("l", l);
		q.setParameter("m", m);
		return q.getResultList();
	}

}
