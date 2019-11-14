

% Nov 10, 2019 EV


******* pre-analysis correlation among concerns after before and gap

corr a_cons_short_dis a_cons_as a_cons_charge_fee a_cons_num_charge_lack a_cons_long_charge_time a_cons_hill_ride a_cons_hac

corr b_cons_short_dis b_cons_as b_cons_charge_fee b_cons_num_charge_lack b_cons_long_charge_time b_cons_hill_ride b_cons_hac
 
corr g_cons_short_dis g_cons_as g_cons_charge_fee g_cons_num_charge_lack g_cons_long_charge_time g_cons_hill_ride g_cons_hac

****************************************

* without concern
logit y age gender marriage student1 company_man2 public_officer3 profession4 researcher5 learn income avg_distance freq_use_ev club_kepco2 club_jeju3
estimates store base

* One concern series1. : a short distance

logit y age gender marriage student1 company_man2 public_officer3 profession4 researcher5 learn income avg_distance freq_use_ev club_kepco2 club_jeju3 a_cons_short_dis
estimates store model1

* One concern series1. : a AS

logit y age gender marriage student1 company_man2 public_officer3 profession4 researcher5 learn income avg_distance freq_use_ev club_kepco2 club_jeju3 a_cons_as
estimates store model2

* One concern series1. : a charging fee

logit y age gender marriage student1 company_man2 public_officer3 profession4 researcher5 learn income avg_distance freq_use_ev club_kepco2 club_jeju3 a_cons_charge_fee
estimates store model3

* One concern series1. : a charging facility lack

logit y age gender marriage student1 company_man2 public_officer3 profession4 researcher5 learn income avg_distance freq_use_ev club_kepco2 club_jeju3 a_cons_num_charge_lack
estimates store model4


* One concern series1. : a charging time

logit y age gender marriage student1 company_man2 public_officer3 profession4 researcher5 learn income avg_distance freq_use_ev club_kepco2 club_jeju3 a_cons_long_charge_time
estimates store model5


 * One concern series1. : a concern on hill side
 
 logit y age gender marriage student1 company_man2 public_officer3 profession4 researcher5 learn income avg_distance freq_use_ev club_kepco2 club_jeju3 a_cons_hill_ride
 estimates store model6
 
 * One concern series1. : a concern on hvac
 
 logit y age gender marriage student1 company_man2 public_officer3 profession4 researcher5 learn income avg_distance freq_use_ev club_kepco2 club_jeju3 a_cons_hac
 estimates store model7

* After Concern:
logit y age gender marriage student1 company_man2 public_officer3 profession4 researcher5 learn income avg_distance freq_use_ev club_kepco2 club_jeju3 a_cons_short_dis a_cons_as a_cons_charge_fee a_cons_num_charge_lack a_cons_long_charge_time a_cons_hill_ride a_cons_hac
 estimates store model8

* Model1 total tabel: se and star cannot be together
 estimates table base model1 model2 model3 model4 model5 model6 model7 model8, b(%9.3f) star(0.01, 0.05, 0.1) eq(1) stats(ll)
 estimates table base model1 model2 model3 model4 model5 model6 model7 model8, b(%9.3f) se(%9.3f) eq(1) stats(ll)
 
*********************************************************************
** Before concern
*********************************************************************

* One concern series1. : b short distance

logit y age gender marriage student1 company_man2 public_officer3 profession4 researcher5 learn income avg_distance freq_use_ev club_kepco2 club_jeju3 b_cons_short_dis
estimates store model1b

* One concern series1. : b AS

logit y age gender marriage student1 company_man2 public_officer3 profession4 researcher5 learn income avg_distance freq_use_ev club_kepco2 club_jeju3 b_cons_as
estimates store model2b

* One concern series1. : b charging fee

logit y age gender marriage student1 company_man2 public_officer3 profession4 researcher5 learn income avg_distance freq_use_ev club_kepco2 club_jeju3 b_cons_charge_fee
estimates store model3b

* One concern series1. : b charging facility lack

logit y age gender marriage student1 company_man2 public_officer3 profession4 researcher5 learn income avg_distance freq_use_ev club_kepco2 club_jeju3 b_cons_num_charge_lack
estimates store model4b


* One concern series1. : b charging time

logit y age gender marriage student1 company_man2 public_officer3 profession4 researcher5 learn income avg_distance freq_use_ev club_kepco2 club_jeju3 b_cons_long_charge_time
estimates store model5b


 * One concern series1. : b concern on hill side
 
 logit y age gender marriage student1 company_man2 public_officer3 profession4 researcher5 learn income avg_distance freq_use_ev club_kepco2 club_jeju3 b_cons_hill_ride
 estimates store model6b
 
 * One concern series1. : b concern on hvac
 
 logit y age gender marriage student1 company_man2 public_officer3 profession4 researcher5 learn income avg_distance freq_use_ev club_kepco2 club_jeju3 b_cons_hac
 estimates store model7b


* Total Before Model 
logit y age gender marriage student1 company_man2 public_officer3 profession4 researcher5 learn income avg_distance freq_use_ev club_kepco2 club_jeju3 b_cons_short_dis b_cons_as b_cons_charge_fee b_cons_num_charge_lack b_cons_long_charge_time b_cons_hac b_cons_hill_ride
estimates store model8b


* Model1 total before table: se and star cannot be together
 estimates table base model1b model2b model3b model4b model5b model6b model7b model8b, b(%9.3f) star(0.01, 0.05, 0.1) eq(1) stats(ll)
 estimates table base model1b model2b model3b model4b model5b model6b model7b model8b, b(%9.3f) se(%9.3f) eq(1) stats(ll)


*********************************************************************
** Gap concern
*********************************************************************


* One concern series1. : g short distance

logit y age gender marriage student1 company_man2 public_officer3 profession4 researcher5 learn income avg_distance freq_use_ev club_kepco2 club_jeju3 g_cons_short_dis
estimates store model1g

* One concern series1. : g AS

logit y age gender marriage student1 company_man2 public_officer3 profession4 researcher5 learn income avg_distance freq_use_ev club_kepco2 club_jeju3 g_cons_as
estimates store model2g

* One concern series1. : g charging fee

logit y age gender marriage student1 company_man2 public_officer3 profession4 researcher5 learn income avg_distance freq_use_ev club_kepco2 club_jeju3 g_cons_charge_fee
estimates store model3g

* One concern series1. : g charging facility lack

logit y age gender marriage student1 company_man2 public_officer3 profession4 researcher5 learn income avg_distance freq_use_ev club_kepco2 club_jeju3 g_cons_num_charge_lack
estimates store model4g


* One concern series1. : g charging time

logit y age gender marriage student1 company_man2 public_officer3 profession4 researcher5 learn income avg_distance freq_use_ev club_kepco2 club_jeju3 g_cons_long_charge_time
estimates store model5g


 * One concern series1. : g concern on hill side
 
 logit y age gender marriage student1 company_man2 public_officer3 profession4 researcher5 learn income avg_distance freq_use_ev club_kepco2 club_jeju3 g_cons_hill_ride
 estimates store model6g
 
 * One concern series1. : g concern on hvac
 
 logit y age gender marriage student1 company_man2 public_officer3 profession4 researcher5 learn income avg_distance freq_use_ev club_kepco2 club_jeju3 g_cons_hac
 estimates store model7g


** gap concern

logit y age gender marriage student1 company_man2 public_officer3 profession4 researcher5 learn income avg_distance freq_use_ev club_kepco2 club_jeju3  g_cons_short_dis g_cons_as g_cons_charge_fee g_cons_num_charge_lack g_cons_long_charge_time g_cons_hill_ride g_cons_hac
estimates store model8g



* Model1 total gap table: se and star cannot be together
 estimates table base model1g model2g model3g model4g model5g model6g model7g model8g, b(%9.3f) star(0.01, 0.05, 0.1) eq(1) stats(ll)
 estimates table base model1g model2g model3g model4g model5g model6g model7g model8g, b(%9.3f) se(%9.3f) eq(1) stats(ll)


 ***************************************
 all
 ***************************************
** all after, before, gap

estimates table base model8 model8b model8g, b(%9.3f) star(0.01, 0.05, 0.1) eq(1) stats(ll)
estimates table base model8 model8b model8g, e(%9.3f) eq(1) stats(ll)


****************************************
Adding saving_free ev_owner: saving_free, researcher, avg_distance_a_cons_hac
****************************************
logit y age gender marriage student1 company_man2 public_officer3 profession4 researcher5 learn income avg_distance freq_use_ev club_kepco2 club_jeju3 a_cons_short_dis a_cons_as a_cons_charge_fee a_cons_num_charge_lack a_cons_long_charge_time a_cons_hill_ride a_cons_hac num_car saving_free ev_owner


