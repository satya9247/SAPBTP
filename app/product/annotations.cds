using productshop as service from '../../srv/product-srv';
using from '../../srv/product-srv';

annotate service.product with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'mfdate',
            Value : mfdate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'expdate',
            Value : expdate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'name',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'stock',
            Value : stock,
        },
        {
            $Type : 'UI.DataField',
            Label : 'cost_Price',
            Value : cost_Price,
        },
    ]
);
annotate service.product with {
    supplier @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'supplier',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : supplier_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'name',
            },
        ],
    }
};
annotate service.product with {
    ord @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Orders',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : ord_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'orderdetails',
            },
        ],
    }
};
annotate service.product with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'mfdate',
                Value : mfdate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'expdate',
                Value : expdate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'name',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'stock',
                Value : stock,
            },
            {
                $Type : 'UI.DataField',
                Label : 'cost_Price',
                Value : cost_Price,
            },
            {
                $Type : 'UI.DataField',
                Label : 'supplier_ID',
                Value : supplier_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ord_ID',
                Value : ord_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'color',
                Value : color,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
