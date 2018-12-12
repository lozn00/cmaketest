/*
 * Contacts.cpp
 *
 *  Created on: 2016-12-1
 *      Author: Kernel
 */

#include "info/Contacts.h"
//#include "Contacts.h"


Contacts::Contacts(){


}

int Contacts::addPhoneNumber(std::string  phoneNumber){

	m_phoneNumbers.push_back(phoneNumber);

	return m_phoneNumbers.size();
}

Contacts::~Contacts(){


}
