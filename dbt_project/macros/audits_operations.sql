{% macro insert_audits(action_name) -%}

    insert into PC_DBT_DB.public.dbt_audit (audit_type) 
    
    values ('{{ action_name }}'); 
    
    commit;

{%- endmacro %}