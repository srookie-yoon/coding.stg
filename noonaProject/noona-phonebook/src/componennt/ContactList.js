import React, { useEffect, useState } from "react";
import ContactItem from './ContactItem'
import SearchBox from './SearchBox'

import { useSelector } from 'react-redux'

const ContactList = () => {
    const { contactList, keyword } = useSelector((state) => state);
    let [filteredList, setFilteredList] = useState([]);

    useEffect(() => {
        if (keyword !== "") {
            let list = contactList.filter((item) => item.name.includes(keyword));
            setFilteredList(list);
        } else {
          setFilteredList(contactList);
        }
      }, [contactList,keyword]);
  return (
    <div>
      <SearchBox/>
      항목 수 : {filteredList.length}
      {filteredList.map( (item) => (
        <ContactItem item = {item} />
      ))}
    </div>
  )
}

export default ContactList;
