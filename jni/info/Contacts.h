/*
 * Contacts.h
 *
 *  Created on: 2016-12-1
 *      Author: Kernel
 */

#ifndef CONTACTS_H_
#define CONTACTS_H_
#include <string>
#include <vector>

class Contacts{
public:
	Contacts();
	virtual ~Contacts();
public:
	inline void setName(std::string  name){m_name = name;}
	inline std::string getName(){return m_name;}
	inline void setId(std::string  Id) {m_Id = Id;}
	inline std::string getId(){return m_Id;}

	int addPhoneNumber(std::string  phoneNumber);

	inline std::vector<std::string> & getPhoneNumbers(){return m_phoneNumbers;}
private:
	std::string m_name;
	std::string m_Id;
	std::vector<std::string> m_phoneNumbers;
};

#endif /* CONTACTS_H_ */
