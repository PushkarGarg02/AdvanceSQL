select temp.cc, company.founder, temp.lmc, temp.smc, temp.mcc, temp.ecc from company, 
(select cm.company_code cc, count(distinct lm.lead_manager_code) lmc, count(distinct sm.senior_manager_code) smc,
      count(distinct ma.manager_code) mcc, count(distinct ep.employee_code) ecc
 from company cm, lead_manager lm, senior_manager sm, manager ma, employee ep
   where lm.company_code =  cm.company_code 
     and lm.lead_manager_code = sm.lead_manager_code
     and ma.senior_manager_code = sm.senior_manager_code
     and ma.manager_code = ep.manager_code
     group by cm.company_code order by 1) temp
where company.company_code = temp.cc
order by temp.cc;
