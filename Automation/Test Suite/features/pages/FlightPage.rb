class FlightPage
  include PageObject

  text_field(:username,name:'userName')
  text_field(:password,name:'password')
  button(:signin,name:'login')

  select_list(:passengers,name:'passCount')
  select_list(:departing,name:'fromPort')
  select_list(:departingmonth,name:'fromMonth')
  select_list(:departingday,name:'fromDay')
  select_list(:arriving,name:'toPort')
  select_list(:arrivingmonth,name:'toMonth')
  select_list(:arrivingday,name:'toDay')
  select_list(:airline,name:'airline')

  radio(:firstclass,value:'First')
  button(:findflight,name:'findFlights')

  button(:reserveflight,name:'reserveFlights')

  text_field(:firstname1,name:'passFirst0')
  text_field(:firstname2,name:'passFirst1')
  text_field(:lastname1,name:'passLast0')
  text_field(:lastname2,name:'passLast1')
  text_field(:cardnumber,name:'creditnumber')
  text_field(:cardfname,name:'cc_frst_name')
  text_field(:cardmname,name:'cc_mid_name')
  text_field(:cardlname,name:'cc_last_name')
  text_field(:address,name:'billAddress1')
  text_field(:address,name:'billAddress1')
  text_field(:city,name:'billCity')
  text_field(:state,name:'billState')
  text_field(:zipcode,name:'billZip')

  select_list(:expmonth,name:'cc_exp_dt_mn')
  select_list(:expyear,name:'cc_exp_dt_yr')
  checkbox(:bill,name:'ticketLess')
  button(:buy,name:'buyFlights')

  text_field(:deladdress,name:'delAddress1')
  text_field(:delcity,name:'delCity')
  text_field(:delstate,name:'delState')
  text_field(:delzip,name:'delZip')
end