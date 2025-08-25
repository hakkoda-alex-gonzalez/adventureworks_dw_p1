# adventureworks_dw_p1
This repository contains all dbt objects for the AdventureWorks Data Warehouse

{{ codegen.generate_base_model( 
    source_name='adw_production',
    table_name='Product',
    case_sensitive_cols=true
)}}