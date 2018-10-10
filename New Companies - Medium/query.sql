select cm.company_code, count(distinct lm.lead_manager_code), count(distinct sm.senior_manager_code),
      count(distinct ma.manager_code), count(distinct ep.employee_code)
 from company cm, lead_manager lm, senior_manager sm, manager ma, employee ep
   where lm.company_code =  cm.company_code 
     and lm.lead_manager_code = sm.lead_manager_code
     and ma.senior_manager_code = sm.senior_manager_code
     and ma.manager_code = ep.manager_code
     group by cm.company_code order by 1;
