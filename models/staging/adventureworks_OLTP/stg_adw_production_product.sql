

with source as (

    select * from {{ source('adw_production', 'Product') }}

),

renamed as (

    select
        "ProductID",
        "Size",
        "ModifiedDate",
        "ListPrice",
        "rowguid",
        "Name",
        "ReorderPoint",
        "SellStartDate",
        "DaysToManufacture",
        "Style",
        "DiscontinuedDate",
        "StandardCost",
        "ProductSubcategoryID",
        "ProductModelID",
        "ProductLine",
        "MakeFlag",
        "SizeUnitMeasureCode",
        "Color",
        "SafetyStockLevel",
        "ProductNumber",
        "Weight",
        "FinishedGoodsFlag",
        "SellEndDate",
        "Class",
        "WeightUnitMeasureCode",
        "_fivetran_deleted",
        "_fivetran_synced"

    from source

)

select * from renamed
